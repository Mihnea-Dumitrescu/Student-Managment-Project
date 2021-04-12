using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Student_Managment_Project
{
    public partial class SMS : System.Web.UI.MasterPage
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["Adminname"] != null)
            {
                LabUserLogin.Text = Session["Adminname"].ToString();
            }
            else
            {
                Response.Redirect("HomePage.aspx");
            }
        }

        protected void LnkCourse_Click(object sender, EventArgs e)
        {
            Response.Redirect("CourseCreator.aspx");
        }

        protected void LnkTeacher_Click(object sender, EventArgs e)
        {
            Response.Redirect("TeacherCreator.aspx");
        }

        protected void LnkStudent_Click(object sender, EventArgs e)
        {
            Response.Redirect("StudentCreator.aspx");
        }

        protected void LnkLogout_Click(object sender, EventArgs e)
        {
            HttpContext.Current.Session.Abandon();
            Response.Redirect("~/HomePage.aspx");
        }

        protected void LnkAdmin_Click(object sender, EventArgs e)
        {
            Response.Redirect("AdminHomePage.aspx");
        }
    }
}