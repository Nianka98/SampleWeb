using Microsoft.EntityFrameworkCore;
using SmsAPI.Models;

namespace SmsAPI.Models
{
    public class APIDbContext :DbContext
    {
        public APIDbContext(DbContextOptions options) : base(options)
        { 
        
        
        }

        public DbSet<Student> Students { get; set; }

        public DbSet<Grade>Grades { get; set; }
        public object StGrade { get; internal set; }
    }
}
