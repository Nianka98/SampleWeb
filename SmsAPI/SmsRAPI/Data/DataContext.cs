using Microsoft.EntityFrameworkCore;
using SmsRAPI.Models;

namespace SmsRAPI.Data
{
    public class DataContext : DbContext
    {
        public DataContext(DbContextOptions<DataContext> options) : base(options)
        {

        }

        protected override void OnConfiguring(DbContextOptionsBuilder optionsBuilder)
        {
            base.OnConfiguring(optionsBuilder);
            optionsBuilder.UseSqlServer("Data Source=DESKTOP-F6FMHLM\\MSSQLSERVER1;Initial Catalog=superherodb;Integrated Security=True;Connect Timeout=30;Encrypt=False;Trust Server Certificate=False;Application Intent=ReadWrite;Multi Subnet Failover=False");
        }

        public DbSet<SuperHero> SuperHeroes { get; set; }

        public DbSet<Grade> Grades { get; set; }
    }
}
