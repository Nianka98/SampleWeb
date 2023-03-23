using System.ComponentModel.DataAnnotations;

namespace SmsAPI.Models
{
    public class Student
    {
        public int SID { get; set; }
        public string SName { get; set; } = "";
        public string Gender { get; set; } = "";
        public string SAddress { get; set; } = "";
        public string City { get; set; } = "";
        public string Grade { get; set; } = "";
    }
}
