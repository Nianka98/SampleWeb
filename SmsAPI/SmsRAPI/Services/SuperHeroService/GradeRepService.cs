using Microsoft.EntityFrameworkCore;
using SmsRAPI.Data;
using SmsRAPI.Models;

namespace SmsRAPI.Services.SuperHeroService
{
    public class GradeRepService : IGradeService
    {
        private readonly DataContext _context;

        public GradeRepService (DataContext context)
        {
            _context = context;
        }

        public async Task<List<Grade>> AddGrade(Grade grade)
        {
            _context.Grades.Add(grade);
            await _context.SaveChangesAsync();
            return await _context.Grades.ToListAsync();
        }

        public async Task<List<Grade>?> DeleteGrade(int id)
        {
            var grade = await _context.Grades.FindAsync(id);
            if (grade is null)
                return null;

            _context.Grades.Remove(grade);
            await _context.SaveChangesAsync();

            return await _context.Grades.ToListAsync();
        }

        public async Task<List<Grade>> GetAllGrade()
        {
            var grade = await _context.Grades.ToListAsync();
            return grade;
        }

        public async Task<Grade?> GetSingleGrade(int id)
        {
            var grade = await _context.Grades.FindAsync(id);
            if (grade is null)
                return null;

            return grade;
        }

        public async Task<List<Grade>?> UpdateGrade(int id, Grade request)
        {
            var grade = await _context.Grades.FindAsync(id);
            if (grade is null)
                return null;

            grade.StudentName = request.StudentName;
            grade.Course = request.Course;
            grade.SGrade = request.SGrade;

            await _context.SaveChangesAsync();

            return await _context.Grades.ToListAsync();
        }
    }
}
