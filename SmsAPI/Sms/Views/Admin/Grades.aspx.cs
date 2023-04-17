using Sms.Models;
using Sms.Services;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Xml.Linq;

namespace Sms.Views.Admin
{
    public partial class Grades1 : System.Web.UI.Page
    {
        private GradeService gradeService = new GradeService();
        protected void Page_Load(object sender, EventArgs e)
        {
            string gradeId = Request.QueryString["gradeId"];

            if (!IsPostBack) { getGrade(Convert.ToInt32(gradeId)); }
        }
        private void getGrade(int gradeID)
        {
            if (gradeID != 0)
            {
                Grade grade = gradeService.GetGrade(gradeID);

                gID.Value = grade.GID.ToString();
                txtGName.Text = grade.StudentName;
                ddlCourse.SelectedValue = grade.Course;
                ddlgGrade.SelectedValue = grade.SGrade;
            }
        }

        protected void btnGAdd_Click(object sender, EventArgs e)
        {
            Grade grade = new Grade();
            grade.StudentName = txtGName.Text;
            grade.Course = ddlCourse.SelectedValue;
            grade.SGrade = ddlgGrade.SelectedValue;

            gradeService.AddGrade(grade);
            RedirectGrades();
        }

        private void RedirectGrades()
        {
            Response.Redirect("GradeView.aspx", false);
           // Response.Redirect("StudentView.aspx", false);
        }

        protected void btnGUpdate_Click(object sender, EventArgs e)
        {
            Grade grade = new Grade();
            grade.GID = Convert.ToInt32(gID.Value);
            grade.StudentName = txtGName.Text;
            grade.Course = ddlCourse.SelectedValue;
            grade.SGrade = ddlgGrade.SelectedValue;

            gradeService.EditGrade(grade);
            RedirectGrades();
        }

        protected void btnGDelete_Click(object sender, EventArgs e)
        {
            int gradeId = Convert.ToInt32(gID.Value);

            gradeService.DeleteGrade(gradeId);
            RedirectGrades();
        }
    }
}