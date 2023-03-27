using Sms.Models;
using Sms.Services;
using System;

namespace Sms.Views.Admin
{
    public partial class Students : System.Web.UI.Page
    {
        private StudentService studentService = new StudentService();

        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack) { getStudents(); }
        }

        private void getStudents()
        {
            StudentsList.DataSource = studentService.GetStudents();
            StudentsList.DataBind();
        }

        protected void btnAdd_Click(object sender, EventArgs e)
        {
            Student student = new Student();
            student.SName = txtName.Text;
            student.SAddress = txtAddress.Text;
            student.City = txtCity.Text;
            student.Gender = ddlGender.SelectedValue;
            student.Grade = ddlGrade.SelectedValue;

            studentService.AddStudent(student);
            getStudents();
        }
    }
}