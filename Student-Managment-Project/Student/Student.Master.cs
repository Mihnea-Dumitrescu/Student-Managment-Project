using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Student_Managment_Project.Student
{
    public partial class Student : System.Web.UI.MasterPage
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void LnkCourses_Click(object sender, EventArgs e)
        {
            Response.Redirect("StudentCoursesPage.aspx");
        }

        protected void LnkAssignments_Click(object sender, EventArgs e)
        {
            Response.Redirect("StudentAssignmentsPage.aspx");
        }

        protected void LnkStudentHome_Click(object sender, EventArgs e)
        {
            Response.Redirect("StudentHomePage.aspx");
        }

        protected void LnkLogout_Click(object sender, EventArgs e)
        {
            HttpContext.Current.Session.Abandon();
            Response.Redirect("~/HomePage.aspx");
        }
    }
}