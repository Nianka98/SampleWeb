using Microsoft.EntityFrameworkCore;
using SmsRepAPI.Models;

namespace SmsRepAPI.Data
{
    public class ApplicationDbContext : DbContext
    {

        public ApplicationDbContext(DbContextOptions options) : base(options)
        {


        }

      //  public DbSet<Student> Students { get; set; }

        public DbSet<Grade> Grades { get; set; }
        public object StGrade { get; internal set; }
    }
}
