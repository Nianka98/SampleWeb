using Microsoft.AspNetCore.Http;
using Microsoft.AspNetCore.Mvc;
using SmsRAPI.Models;
using SmsRAPI.Services.SuperHeroService;

namespace SmsRAPI.Controllers
{
    [Route("api/[controller]")]
    [ApiController]
    public class StudentController : ControllerBase
    {
        private readonly IStudentService _StudentRepService;

        public StudentController(IStudentService StudentRepService)
        {
            _StudentRepService = StudentRepService;
        }

        [HttpGet]
        public async Task<ActionResult<List<Student>>> GetAllStudent()
        {
            return await _StudentRepService.GetAllStudent();
        }

        [HttpGet("{id}")]
        public async Task<ActionResult<Student>> GetSingleStudent(int id)
        {
            var result = await _StudentRepService.GetSingleStudent(id);
            if (result is null)
                return NotFound("Hero not found.");

            return Ok(result);
        }

        [HttpPost]
        public async Task<ActionResult<List<Student>>> AddStudent(Student student)
        {
            var result = await _StudentRepService.AddStudent(student);
            return Ok(result);
        }

        [HttpPut("{id}")]
        public async Task<ActionResult<List<Student>>> UpdateStudent(int id, Student request)
        {
            var result = await _StudentRepService.UpdateStudent(id, request);
            if (result is null)
                return NotFound("Hero not found.");

            return Ok(result);
        }

        [HttpDelete("{id}")]
        public async Task<ActionResult<List<Student>>> DeleteStudent(int id)
        {
            var result = await _StudentRepService.DeleteStudent(id);
            if (result is null)
                return NotFound("Hero not found.");

            return Ok(result);
        }
    }
}
