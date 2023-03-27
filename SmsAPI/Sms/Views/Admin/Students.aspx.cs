using Sms.Models;
using Sms.Services;
using System;
using System.Web.UI.WebControls;

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

        private void getStudent(int studentID)
        {
            Student student = studentService.GetStudent(studentID);

            hfID.Value = student.SID.ToString();
            txtName.Text = student.SName;
            txtAddress.Text = student.SAddress;
            txtCity.Text = student.Grade;
            ddlGender.SelectedValue = student.Gender;
            ddlGrade.SelectedValue = student.Grade;
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

        protected void StudentsList_RowCommand(object sender, System.Web.UI.WebControls.GridViewCommandEventArgs e)
        {
            GridViewRow oGridViewRow = StudentsList.Rows[Convert.ToInt32(e.CommandArgument.ToString())];
            Label lblgvID = (Label)oGridViewRow.FindControl("lblgvID");

            switch (e.CommandName)
            {
                case "EditData":
                    getStudent(Convert.ToInt32(lblgvID.Text));
                    break;
            }
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
            getStudents();
        }
    }
}