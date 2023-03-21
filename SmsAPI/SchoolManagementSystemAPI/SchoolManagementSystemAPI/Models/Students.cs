using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;

namespace SchoolManagementSystemAPI.Models
{
    public class Students
    {
        public int SID { get; set; }
        public string SName { get; set; } 
        public string Gender { get; set; }
        public string SAddress { get; set; }
        public string City { get; set; }
        public string Grade { get; set; }
    }
}
