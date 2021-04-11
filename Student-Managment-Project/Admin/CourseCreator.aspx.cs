using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;

namespace Student_Managment_Project.Admin
{
    public partial class CourseCreator : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void ButCourse_Click(object sender, EventArgs e)
        {
            string mainconn = ConfigurationManager.ConnectionStrings["Myconnection"].ConnectionString;
            SqlConnection sqlconn = new SqlConnection(mainconn);
            string sqlquery = "Insert into [dbo].[Course/Project] (CourseID,CourseName,CourseYear,CourseLength,CourseCredits) values (@CourseID,@CourseName,@CourseYear,@CourseLength,@CourseCredits)";
            SqlCommand sqlcomm = new SqlCommand(sqlquery, sqlconn);
            sqlconn.Open();
            sqlcomm.Parameters.AddWithValue("@CourseID", TxtCourseID.Text);
            sqlcomm.Parameters.AddWithValue("@CourseName", TxtCoursename.Text);
            sqlcomm.Parameters.AddWithValue("@CourseYear", TxtCourseYear.Text);
            sqlcomm.Parameters.AddWithValue("@CourseLength", TxtCourseLength.Text);
            sqlcomm.Parameters.AddWithValue("@CourseCredits", TxtCourseCredits.Text);
            sqlcomm.ExecuteNonQuery();
            LabMsg.Text = "The Course " + TxtCoursename.Text + " Is Saved Successfully";
            TxtCourseID.Text = "";
            TxtCoursename.Text = "";
            TxtCourseYear.Text = "";
            TxtCourseLength.Text = "";
            TxtCourseCredits.Text = "";
            sqlconn.Close();
        }
    }
}