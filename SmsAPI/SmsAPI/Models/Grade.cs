using System.ComponentModel.DataAnnotations;

namespace SmsAPI.Models
{
    public class Grade
    {
        [Key]
        public int GID { get; set; }
        public string StudentName { get; set; } = "";
        public string Course { get; set; } = "";
        public string SGrade { get; set; } = "";

    }
}
