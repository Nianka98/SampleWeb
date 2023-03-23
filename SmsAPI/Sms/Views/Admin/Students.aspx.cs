using Sms.Services;
using System;
using System.Web.DynamicData;

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

    }
}