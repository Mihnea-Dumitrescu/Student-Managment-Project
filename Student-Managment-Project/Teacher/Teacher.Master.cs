using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Student_Managment_Project.Teacher
{
    public partial class Teacher : System.Web.UI.MasterPage
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }
        protected void LnkHome_Click(object sender, EventArgs e)
        {
            Response.Redirect("TeacherHomePage.aspx");
        }

        protected void LnkAssignments_Click(object sender, EventArgs e)
        {
            Response.Redirect("TeacherCreateAssignment.aspx");
        }

        protected void LnkLogout_Click(object sender, EventArgs e)
        {
            HttpContext.Current.Session.Abandon();
            Response.Redirect("~/HomePage.aspx");
        }
    }
}