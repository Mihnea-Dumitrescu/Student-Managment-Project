using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;

namespace Student_Managment_Project.Teacher
{
    public partial class TeacherCreateAssignment : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
        }
        protected void ButAssignment_Click(object sender, EventArgs e)
        {
            string mainconn = ConfigurationManager.ConnectionStrings["Myconnection"].ConnectionString;
            SqlConnection sqlconn = new SqlConnection(mainconn);
            string sqlquery = "Insert into [dbo].[Assignments] (AssignmentID,AssignmentName,AssignmentStart,AssignmentEnd) values (@AssignmentID,@AssignmentName,@AssignmentStart,@AssignmentEnd)";
            SqlCommand sqlcomm = new SqlCommand(sqlquery, sqlconn);
            sqlconn.Open();
            sqlcomm.Parameters.AddWithValue("@AssignmentID", TxtAssignmentID.Text);
            sqlcomm.Parameters.AddWithValue("@AssignmentName", TxtAssignmentName.Text);
            sqlcomm.Parameters.AddWithValue("@AssignmentStart", CalStartDate.SelectedDate);
            sqlcomm.Parameters.AddWithValue("@AssignmentEnd", CalEndDate.SelectedDate);
            sqlcomm.ExecuteNonQuery();
            Labmsg.Text = "The Assignment " + TxtAssignmentName.Text + " Is Saved Successfully";
            TxtAssignmentID.Text = "";
            TxtAssignmentName.Text = "";

            sqlconn.Close();
        }
        protected void ButNewStudent_Click(object sender, EventArgs e)
        {
            int intId = 100;

            string strPopup = "<script language='javascript' ID='script1'>"

            // Passing intId to popup window.
            + "window.open('popup.aspx?data=" + HttpUtility.UrlEncode(intId.ToString())

            + "','new window', 'top=90, left=200, width=300, height=100, dependant=no, location=0, alwaysRaised=no, menubar=no, resizeable=no, scrollbars=n, toolbar=no, status=no, center=yes')"

            + "</script>";

            ScriptManager.RegisterStartupScript((Page)HttpContext.Current.Handler, typeof(Page), "Script1", strPopup, false);
        }

    }
}