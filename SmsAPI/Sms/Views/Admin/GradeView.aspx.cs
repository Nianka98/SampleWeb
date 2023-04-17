using Sms.Services;
using System;
using System.Web.UI.WebControls;

namespace Sms.Views.Admin
{
    public partial class GradeView : System.Web.UI.Page
    {
        private GradeService gradeService = new GradeService();
        protected void Page_Load(object sender, EventArgs e)
        {
            
                if (!IsPostBack) { getGrades(); }
            
        }
        private void getGrades()
        {
            GradesList.DataSource = gradeService.GetGrades();
            GradesList.DataBind();
        }

        private void ShowGrade(int gradeID)
        {
            Response.Redirect("Grades.aspx?gradeId=" + gradeID, false);

        }

        protected void btnAdd_Click(object sender, EventArgs e)
        {
        
        }

        protected void GradesList_RowCommand(object sender, System.Web.UI.WebControls.GridViewCommandEventArgs e)
        {
            GridViewRow oGridViewRow = GradesList.Rows[Convert.ToInt32(e.CommandArgument.ToString())];
            Label lblgvIDG = (Label)oGridViewRow.FindControl("lblgvIDG");

            switch (e.CommandName)
            {
                case "EditData":
                    ShowGrade(Convert.ToInt32(lblgvIDG.Text));
                    break;
            }
        }

        protected void btnUpdate_Click(object sender, EventArgs e)
        {

        }

        protected void btnAddGNew_Click(object sender, EventArgs e)
        {
            ShowGrade(0);
        }
    }
}