using Microsoft.AspNetCore.Http;
using Microsoft.AspNetCore.Mvc;
using SmsRAPI.Models;
using SmsRAPI.Services.SuperHeroService;

namespace SmsRAPI.Controllers
{
    [Route("api/[controller]")]
    [ApiController]
    public class GradeController : ControllerBase
    {
        private readonly IGradeService _GradeRepService;

        public GradeController(IGradeService GradeRepService)
        {
            _GradeRepService = GradeRepService;
        }

        [HttpGet]
        public async Task<ActionResult<List<Grade>>> GetAllGrade()
        {
            return await _GradeRepService.GetAllGrade();
        }

        [HttpGet("{id}")]
        public async Task<ActionResult<Grade>> GetSingleGrade(int id)
        {
            var result = await _GradeRepService.GetSingleGrade(id);
            if (result is null)
                return NotFound("Hero not found.");

            return Ok(result);
        }

        [HttpPost]
        public async Task<ActionResult<List<Grade>>> AddGrade(Grade grade)
        {
            var result = await _GradeRepService.AddGrade(grade);
            return Ok(result);
        }

        [HttpPut("{id}")]
        public async Task<ActionResult<List<Grade>>> UpdateGrade(int id, Grade request)
        {
            var result = await _GradeRepService.UpdateGrade(id, request);
            if (result is null)
                return NotFound("Hero not found.");

            return Ok(result);
        }

        [HttpDelete("{id}")]
        public async Task<ActionResult<List<Grade>>> DeleteGrade(int id)
        {
            var result = await _GradeRepService.DeleteGrade(id);
            if (result is null)
                return NotFound("Hero not found.");

            return Ok(result);
        }
    }
}
