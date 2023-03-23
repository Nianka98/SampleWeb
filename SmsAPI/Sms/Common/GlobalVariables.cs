using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace Sms.Common
{
    public class GlobalVariables
    {
        public static string WebApiUrl = "https://localhost:7153/api/";
    }

    public enum StatusCode
    {
        Success = 200,
        Created = 201,
        NoContent = 204,
        Unauthorized = 401,
        NotFound = 404
    }
}