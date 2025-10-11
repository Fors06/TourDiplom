using Microsoft.EntityFrameworkCore;
using Diplom.Model.Entity;

namespace Diplom
{
    public class ApplicationContext : DbContext
    {

        private static readonly DbContextOptions<ApplicationContext> _options;

       
        public DbSet<Users> users { get; set; }
        public DbSet<Client> clients { get; set; }
        public DbSet<Employee> employees { get; set; }
        public DbSet<Tour> tours { get; set; }
        public DbSet<Reviews> reviews {  get; set; }
        public DbSet<Cheque> cheques { get; set; } 
        public DbSet<Booking> bookings { get; set; }

        protected override void OnConfiguring(DbContextOptionsBuilder optionsBuilder)
        {
            optionsBuilder.UseSqlServer(@"Server=(localdb)\MSSQLLocalDB;Database=Тур агенство;Trusted_Connection=True;");
        }
    }
}
