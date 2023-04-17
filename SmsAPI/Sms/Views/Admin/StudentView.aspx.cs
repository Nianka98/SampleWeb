using Sms.Services;
using System;
using System.Web.UI.WebControls;

namespace Sms.Views.Admin
{
    public partial class StudentView : System.Web.UI.Page
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

        private void ShowStudent(int studentID)
        {
            Response.Redirect("Students.aspx?studentId=" + studentID, false);

        }

        protected void btnAdd_Click(object sender, EventArgs e)
        {

        }

        protected void StudentsList_RowCommand(object sender, System.Web.UI.WebControls.GridViewCommandEventArgs e)
        {
            GridViewRow oGridViewRow = StudentsList.Rows[Convert.ToInt32(e.CommandArgument.ToString())];
            Label lblgvID = (Label)oGridViewRow.FindControl("lblgvID");

            switch (e.CommandName)
            {
                case "EditData":
                    ShowStudent(Convert.ToInt32(lblgvID.Text));
                    break;
            }
        }

        protected void btnUpdate_Click(object sender, EventArgs e)
        {
  
        }

        protected void btnAddNew_Click(object sender, EventArgs e)
        {
            ShowStudent(0);
        }
    }
}