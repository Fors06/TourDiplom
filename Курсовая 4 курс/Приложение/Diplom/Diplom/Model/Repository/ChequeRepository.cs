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
    public class ChequeRepository : IRepository<Cheque>, IDisposable
    {
        public readonly ApplicationContext _context;

        public ChequeRepository(ApplicationContext context)
        {
            _context = context;
        }
        public IQueryable<Cheque> GetStatusList()
        {
            return _context.cheques.AsQueryable();
        }

        public Cheque GetStatus(int id)
        {
            return _context.cheques.Find(id);
        }

        public void Create(Cheque status)
        {
            _context.cheques.Add(status);
        }

        public void Delete(int id)
        {
            Cheque status = _context.cheques.Find(id);
            if (status != null)
            {
                _context.cheques.Remove(status);
            }
        }

        public void Update(Cheque status)
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
