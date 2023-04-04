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
            string studentId = Request.QueryString["studentId"];

            if (!IsPostBack) { getStudent(Convert.ToInt32(studentId)); }
        }

        private void getStudent(int studentID)
        {
            if (studentID != 0)
            {
                Student student = studentService.GetStudent(studentID);

                hfID.Value = student.SID.ToString();
                txtName.Text = student.SName;
                txtAddress.Text = student.SAddress;
                txtCity.Text = student.City;
                ddlGender.SelectedValue = student.Gender;
                ddlGrade.SelectedValue = student.Grade;
            }
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
            RedirectStudents();
        }

        private void RedirectStudents()
        {
            Response.Redirect("StudentView.aspx", false);
        }

        protected void btnUpdate_Click(object sender, EventArgs e)
        {
            Student student = new Student();
            student.SID = Convert.ToInt32(hfID.Value);
            student.SName = txtName.Text;
            student.SAddress = txtAddress.Text;
            student.City = txtCity.Text;
            student.Gender = ddlGender.SelectedValue;
            student.Grade = ddlGrade.SelectedValue;

            studentService.EditStudent(student);
            RedirectStudents();
        }

        protected void btnDelete_Click(object sender, EventArgs e)
        {
            int studentId = Convert.ToInt32(hfID.Value);

            studentService.DeleteStudent(studentId);
            RedirectStudents();
        }
    }
}