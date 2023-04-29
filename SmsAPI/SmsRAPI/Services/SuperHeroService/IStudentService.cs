using SmsRAPI.Models;

namespace SmsRAPI.Services.SuperHeroService
{
    public interface IStudentService
    {
        Task<List<Student>> GetAllStudent();
        Task<Student?> GetSingleStudent(int id);
        Task<List<Student>> AddStudent(Student student);
        Task<List<Student>?> UpdateStudent(int id, Student student);
        Task<List<Student>?> DeleteStudent(int id);
    }
}
