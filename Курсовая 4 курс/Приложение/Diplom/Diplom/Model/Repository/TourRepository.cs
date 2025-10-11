using Microsoft.EntityFrameworkCore;
using Diplom.Model.Entity;
using Diplom.Model.Repository.Abstraction;
using Diplom;


namespace RequestDataAccess.Repository
{
    public class TourRepository : IRepository<Tour>, IDisposable
    {

        public readonly ApplicationContext _context;

        public TourRepository(ApplicationContext context)
        {
            _context = context;
        }

        public IQueryable<Tour> GetStatusList()
        {
            return _context.tours.AsQueryable();
        }

        public Tour GetStatus(int id)
        {
            return _context.tours.Find(id);
        }

        public void Create(Tour Servicess)
        {
            _context.tours.Add(Servicess);
        }

        public void Delete(int id)
        {
            Tour Servicess = _context.tours.Find(id);
            if (Servicess != null)
            {
                _context.tours.Remove(Servicess);
            }
        }

        public void Update(Tour Servicess)
        {
            _context.Entry(Servicess).State = EntityState.Modified;
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
