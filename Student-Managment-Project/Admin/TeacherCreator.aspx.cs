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
    public partial class TeacherCreator : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
        }
        protected void ButTutor_Click(object sender, EventArgs e)
        {
            string mainconn = ConfigurationManager.ConnectionStrings["Myconnection"].ConnectionString;
            SqlConnection sqlconn = new SqlConnection(mainconn);
            string sqlquery = "Insert into [dbo].[Teacher] (TeacherID,TeacherUsernameID,TeacherName,TeacherSurname,TeacherDepartment,TeacherEmail,TeacherPhone,TeacherBirth,TeacherUsername,TeacherPassword) values (@TeacherID,@TeacherName,@TeacherUsernameID,@TeacherSurname,@TeacherDepartment,@TeacherEmail,@TeacherPhone,@TeacherBirth,@TeacherUsername,@TeacherPassword)";
            SqlCommand sqlcomm = new SqlCommand(sqlquery, sqlconn);
            sqlconn.Open();
            sqlcomm.Parameters.AddWithValue("@TeacherID", TxtTeacherID.Text);
            sqlcomm.Parameters.AddWithValue("@TeacherUsernameID", TxtTeacherUsernameID.Text);
            sqlcomm.Parameters.AddWithValue("@TeacherName", TxtTeacherName.Text);
            sqlcomm.Parameters.AddWithValue("@TeacherSurname", TxtTeacherSurname.Text);
            sqlcomm.Parameters.AddWithValue("@TeacherDepartment", TeacherCourse.SelectedItem.Text);
            sqlcomm.Parameters.AddWithValue("@TeacherEmail", TxtTeacherEmail.Text);
            sqlcomm.Parameters.AddWithValue("@TeacherPhone", TxtTeacherPhone.Text);
            sqlcomm.Parameters.AddWithValue("@TeacherBirth", CalTeacherBirth.SelectedDate.Date);
            sqlcomm.Parameters.AddWithValue("@TeacherUsername", TxtTeacherUsername.Text);
            sqlcomm.Parameters.AddWithValue("@TeacherPassword", TxtTeacherPassword.Text);
            sqlcomm.ExecuteNonQuery();
            Labmsg.Text = "The Teacher " + TxtTeacherName.Text + " Is Saved Successfully";
            TxtTeacherID.Text = "";
            TxtTeacherName.Text = "";
            TxtTeacherSurname.Text = "";
            TxtTeacherEmail.Text = "";
            TxtTeacherPhone.Text = "";
            TxtTeacherUsername.Text = "";
            TxtTeacherPassword.Text = "";
            sqlconn.Close();
        }

        protected void CalTeacherBirth_SelectionChanged(object sender, EventArgs e)
        {

        }
    }
}