using Microsoft.EntityFrameworkCore;
using SmsRAPI.Data;
using SmsRAPI.Models;
using SmsRAPI.Services.SuperHeroService;

namespace SmsRAPI.Services.SuperHeroService
{
    public class StudentRepService : IStudentService
    {

        private readonly DataContext _context;

        public StudentRepService(DataContext context)
        {
            _context = context;
        }
        public async Task<List<Student>> AddStudent(Student student)
        {
            _context.Students.Add(student);
            await _context.SaveChangesAsync();
            return await _context.Students.ToListAsync();
        }

        public async Task<List<Student>?> DeleteStudent(int id)
        {
            var student = await _context.Students.FindAsync(id);
            if (student is null)
                return null;

            _context.Students.Remove(student);
            await _context.SaveChangesAsync();

            return await _context.Students.ToListAsync();
        }

        public async Task<List<Student>> GetAllStudent()
        {
            var student = await _context.Students.ToListAsync();
            return student;
        }

        public async Task<Student?> GetSingleStudent(int id)
        {
            var student = await _context.Students.FindAsync(id);
            if (student is null)
                return null;

            return student;
        }

        public async Task<List<Student>?> UpdateStudent(int id, Student request)
        {
            var student = await _context.Students.FindAsync(id);
            if (student is null)
                return null;

            student.SName = request.SName;
            student.Gender = request.Gender;
            student.SAddress = request.SAddress;
            student.City = request.City;
            student.Grade = request.Grade;

            await _context.SaveChangesAsync();

            return await _context.Students.ToListAsync();
        }
    }
}
