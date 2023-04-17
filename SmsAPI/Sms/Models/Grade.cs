using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.Linq;
using System.Web;

namespace Sms.Models
{
    public class Grade
    {
            public int GID { get; set; }
            public string StudentName { get; set; } = "";
            public string Course { get; set; } = "";
            public string SGrade { get; set; } = "";
    }
}