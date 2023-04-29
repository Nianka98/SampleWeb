using System.ComponentModel.DataAnnotations;

namespace SmsRAPI.Models
{
    public class Student
    {
        [Key]
        public int SID { get; set; }
        public string SName { get; set; } = "";
        public string Gender { get; set; } = "";
        public string SAddress { get; set; } = "";
        public string City { get; set; } = "";
        public string Grade { get; set; } = "";
    }
}
