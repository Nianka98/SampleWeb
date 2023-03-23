using Grpc.Core;
using Newtonsoft.Json;
using Sms.Models;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Net.Http;
using System.Text;
using System.Web;

namespace Sms.Services
{
    public class StudentService
    {
        public List<Student> GetStudents()
        {
            List<Student> securityStandard = new List<Student>();
            using (HttpClient client = new HttpClient())
            {
                string path = "Student";
                client.BaseAddress = new Uri("https://localhost:7153/api/");
                HttpResponseMessage response = client.GetAsync(path).Result;
                if (response.IsSuccessStatusCode)
                {
                    var value = response.Content.ReadAsStringAsync().Result;
                    securityStandard = JsonConvert.DeserializeObject<List<Student>>(value);
                }
            }
            return securityStandard;
        }
        public WebApiResponse PostStudent(Student securityStandard)
        {
            WebApiResponse webApiResponse = new WebApiResponse();
            using (HttpClient client = new HttpClient())
            {
                string path = "Student";
                client.BaseAddress = new Uri("https://localhost:7153/api/");



                var json = JsonConvert.SerializeObject(securityStandard);
                var content = new StringContent(json, Encoding.UTF8, "application/json");



                HttpResponseMessage response = client.PostAsync(path, content).Result;
                webApiResponse.StatusCode = Convert.ToInt32(response.StatusCode);
                webApiResponse.IsSuccess = (webApiResponse.StatusCode == (int)StatusCode.Success) ? true : false;
                webApiResponse.Result = response.Content.ReadAsStringAsync().Result;
            }
            return webApiResponse;
        }
    }
}