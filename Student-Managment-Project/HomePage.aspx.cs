using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;

namespace Student_Managment_Project
{
    public partial class HomePage : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void ButLogin_Click(object sender, EventArgs e)
        {
            if (TxtAdminId.Text == "Admin" && TxtPwdAdmin.Text == "Admin123")
            {
                Session["Adminname"] = "Welcome " + TxtAdminId.Text;
                Response.Redirect("Admin/AdminHomePage.aspx");
            }
            else if (TxtAdminId.Text == "Mihnea" && TxtPwdAdmin.Text == "abc")
            {
                Session["Adminname"] = "Welcome " + TxtAdminId.Text;
                Response.Redirect("Student/StudentHomePage.aspx");
            }
            else
            {
                Labmsg.Text = "Failed Login Details...";
            }

        }
        protected void ButStudentLogin_Click()
        {



        }
        protected void ButTeacherLogin_Click(object sender, EventArgs e)
        {

        }
        protected void ButAdminLogin_Click(object sender, EventArgs e)
        {

        }
        protected void ButAdminRegistration_Click(object sender, EventArgs e)
        {
            Response.Redirect("AdminRegistration.aspx");
        }

    }
}