using Diplom.Model.Entity;
using Diplom.Model.Repository.Abstraction;
using Microsoft.EntityFrameworkCore;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Diplom.Model.Repository
{
    public class ReviewsRepository : IRepository<Reviews>, IDisposable
    {
        public readonly ApplicationContext _context;

        public ReviewsRepository(ApplicationContext context)
        {
            _context = context;
        }
        public IQueryable<Reviews> GetStatusList()
        {
            return _context.reviews.AsQueryable();
        }

        public Reviews GetStatus(int id)
        {
            return _context.reviews.Find(id);
        }

        public void Create(Reviews status)
        {
            _context.reviews.Add(status);
        }

        public void Delete(int id)
        {
            Reviews status = _context.reviews.Find(id);
            if (status != null)
            {
                _context.reviews.Remove(status);
            }
        }

        public void Update(Reviews status)
        {
            _context.Entry(status).State = EntityState.Modified;
        }

        public void Save()
        {
            _context.SaveChanges();
        }

        private bool disposed = false;

        public virtual void Dispose(bool disposing)
        {
            if (!this.disposed)
            {
                if (disposing)
                {
                    _context.Dispose();
                }
            }
            this.disposed = true;
        }
        public void Dispose()
        {
            Dispose(true);
            GC.SuppressFinalize(this);
        }
    }
}
