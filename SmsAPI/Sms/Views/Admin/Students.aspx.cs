using Sms.Services;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Sms.Views.Admin
{
    public partial class Students : System.Web.UI.Page
    {
        StudentService studentService = new StudentService();
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack) { getStudents(); }
        }

        private void getStudents (){ 
        StudentsList.DataSource= studentService.GetStudents();
            StudentsList.DataBind();
        }
    }

}
