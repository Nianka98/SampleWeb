using Newtonsoft.Json;
using Sms.Common;
using Sms.Models;
using System;
using System.Collections.Generic;
using System.Net.Http;
using System.Text;

namespace Sms.Services
{
    public class StudentService
    {
        public List<Student> GetStudents()
        {
            List<Student> students = new List<Student>();
            using (HttpClient client = new HttpClient())
            {
                string path = "Student";
                client.BaseAddress = new Uri(GlobalVariables.WebApiUrl);
                HttpResponseMessage response = client.GetAsync(path).Result;
                if (response.IsSuccessStatusCode)
                {
                    var value = response.Content.ReadAsStringAsync().Result;
                    students = JsonConvert.DeserializeObject<List<Student>>(value);
                }
            }
            return students;
        }

        public WebApiResponse AddStudent(Student student)
        {
            WebApiResponse webApiResponse = new WebApiResponse();
            using (HttpClient client = new HttpClient())
            {
                string path = "Student";
                client.BaseAddress = new Uri(GlobalVariables.WebApiUrl);

                var json = JsonConvert.SerializeObject(student);
                var content = new StringContent(json, Encoding.UTF8, "application/json");

                HttpResponseMessage response = client.PostAsync(path, content).Result;
                webApiResponse.StatusCode = Convert.ToInt32(response.StatusCode);
                webApiResponse.IsSuccess = (webApiResponse.StatusCode == (int)StatusCode.Success) ? true : false;
                webApiResponse.Result = response.Content.ReadAsStringAsync().Result;
            }
            return webApiResponse;
        }

        public WebApiResponse EditStudent(Student student)
        {
            WebApiResponse webApiResponse = new WebApiResponse();
            using (HttpClient client = new HttpClient())
            {
                string path = "Student";
                client.BaseAddress = new Uri(GlobalVariables.WebApiUrl);

                var json = JsonConvert.SerializeObject(student);
                var content = new StringContent(json, Encoding.UTF8, "application/json");

                HttpResponseMessage response = client.PutAsync(path, content).Result;
                webApiResponse.StatusCode = Convert.ToInt32(response.StatusCode);
                webApiResponse.IsSuccess = (webApiResponse.StatusCode == (int)StatusCode.Success) ? true : false;
                webApiResponse.Result = response.Content.ReadAsStringAsync().Result;
            }
            return webApiResponse;
        }
    }
}