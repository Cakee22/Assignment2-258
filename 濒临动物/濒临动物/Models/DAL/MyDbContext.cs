using Microsoft.EntityFrameworkCore;
using 濒临动物.Models.Entity;

namespace 濒临动物.Models.DAL
{
    public class MyDbContext : DbContext
    {
        public DbSet<Slogan> Slogan { get; set; }
        public DbSet<WorkArea> WorkArea { get; set; }
        public DbSet<news> News { get; set; }
        public DbSet<Animal> Animals { get; set; }

        protected override void OnConfiguring(DbContextOptionsBuilder optionsBuilder)
        {
            base.OnConfiguring(optionsBuilder);
            string connStr = "Data Source=LAPTOP-HQNP14BQ\\SQLEXPRESS;Initial Catalog=animal;Integrated Security=True;TrustServerCertificate=True;";
            optionsBuilder.UseSqlServer(connStr);
        }
        protected override void OnModelCreating(ModelBuilder modelBuilder)
        {
            base.OnModelCreating(modelBuilder);

            modelBuilder.ApplyConfigurationsFromAssembly(this.GetType().Assembly);
        }
    }
}
