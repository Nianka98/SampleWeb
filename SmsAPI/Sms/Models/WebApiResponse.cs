using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace Sms.Models
{
    public class WebApiResponse
    {
        public bool IsSuccess { get; set; }
        public int StatusCode { get; set; }
        public string Result { get; set; }
    }
}