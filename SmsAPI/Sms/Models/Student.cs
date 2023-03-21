using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.Linq;
using System.Web;

namespace Sms.Models
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