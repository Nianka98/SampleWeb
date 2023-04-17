using Newtonsoft.Json;
using Sms.Common;
using Sms.Models;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Net.Http;
using System.Text;
using System.Web;

namespace Sms.Services
{
    public class GradeService
    {
        public List<Grade> GetGrades()
        {
            List<Grade> grades = new List<Grade>();
            using (HttpClient client = new HttpClient())
            {
                string path = "Grades";
                client.BaseAddress = new Uri(GlobalVariables.WebApiUrl);
                HttpResponseMessage response = client.GetAsync(path).Result;
                if (response.IsSuccessStatusCode)
                {
                    var value = response.Content.ReadAsStringAsync().Result;
                    grades = JsonConvert.DeserializeObject<List<Grade>>(value);
                }
            }
            return grades;
        }

        public Grade GetGrade(int gradeID)
        {
            Grade grade = new Grade();
            using (HttpClient client = new HttpClient())
            {
                string path = "Grades/" + gradeID;
                client.BaseAddress = new Uri(GlobalVariables.WebApiUrl);
                HttpResponseMessage response = client.GetAsync(path).Result;
                if (response.IsSuccessStatusCode)
                {
                    var value = response.Content.ReadAsStringAsync().Result;
                    grade = JsonConvert.DeserializeObject<Grade>(value);
                }
            }
            return grade;
        }

        public WebApiResponse AddGrade(Grade grade)
        {
            WebApiResponse webApiResponse = new WebApiResponse();
            using (HttpClient client = new HttpClient())
            {
                string path = "Grades";
                client.BaseAddress = new Uri(GlobalVariables.WebApiUrl);

                var json = JsonConvert.SerializeObject(grade);
                var content = new StringContent(json, Encoding.UTF8, "application/json");

                HttpResponseMessage response = client.PostAsync(path, content).Result;
                webApiResponse.StatusCode = Convert.ToInt32(response.StatusCode);
                webApiResponse.IsSuccess = (webApiResponse.StatusCode == (int)StatusCode.Success) ? true : false;
                webApiResponse.Result = response.Content.ReadAsStringAsync().Result;
            }
            return webApiResponse;
        }

        public WebApiResponse EditGrade(Grade grade)
        {
            WebApiResponse webApiResponse = new WebApiResponse();
            using (HttpClient client = new HttpClient())
            {
                string path = "Grades";
                client.BaseAddress = new Uri(GlobalVariables.WebApiUrl);

                var json = JsonConvert.SerializeObject(grade);
                var content = new StringContent(json, Encoding.UTF8, "application/json");

                HttpResponseMessage response = client.PutAsync(path, content).Result;
                webApiResponse.StatusCode = Convert.ToInt32(response.StatusCode);
                webApiResponse.IsSuccess = (webApiResponse.StatusCode == (int)StatusCode.Success) ? true : false;
                webApiResponse.Result = response.Content.ReadAsStringAsync().Result;
            }
            return webApiResponse;
        }

        public WebApiResponse DeleteGrade(int gradeID)
        {
            WebApiResponse webApiResponse = new WebApiResponse();
            using (HttpClient client = new HttpClient())
            {
                string path = "Grades/" + gradeID;
                client.BaseAddress = new Uri(GlobalVariables.WebApiUrl);

                //var json = JsonConvert.SerializeObject(student);
                //var content = new StringContent(json, Encoding.UTF8, "application/json");

                HttpResponseMessage response = client.DeleteAsync(path).Result;
                webApiResponse.StatusCode = Convert.ToInt32(response.StatusCode);
                webApiResponse.IsSuccess = (webApiResponse.StatusCode == (int)StatusCode.Success) ? true : false;
                webApiResponse.Result = response.Content.ReadAsStringAsync().Result;
            }
            return webApiResponse;
        }

        //internal object GetGrade()
        //{
        //    throw new NotImplementedException();
        //}
    }
}