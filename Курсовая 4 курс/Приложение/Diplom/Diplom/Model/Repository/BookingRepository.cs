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
    public class BookingRepository : IRepository<Booking>, IDisposable
    {
        public readonly ApplicationContext _context;

        public BookingRepository(ApplicationContext context)
        {
            _context = context;
        }
        public IQueryable<Booking> GetStatusList()
        {
            return _context.bookings.AsQueryable();
        }

        public Booking GetStatus(int id)
        {
            return _context.bookings.Find(id);
        }

        public void Create(Booking status)
        {
            _context.bookings.Add(status);
        }

        public void Delete(int id)
        {
            Booking status = _context.bookings.Find(id);
            if (status != null)
            {
                _context.bookings.Remove(status);
            }
        }

        public void Update(Booking status)
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
