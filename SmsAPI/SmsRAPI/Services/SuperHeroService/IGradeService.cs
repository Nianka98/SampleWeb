using SmsRAPI.Models;


namespace SmsRAPI.Services.SuperHeroService
{
    public interface IGradeService
    {
        Task<List<Grade>> GetAllGrade();
        Task<Grade?> GetSingleGrade(int id);
        Task<List<Grade>> AddGrade(Grade grade);
        Task<List<Grade>?> UpdateGrade(int id, Grade grade);
        Task<List<Grade>?> DeleteGrade(int id);
    }
}
