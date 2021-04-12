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
    public partial class StudentCreator : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
        }
        protected void ButStudent_Click(object sender, EventArgs e)
            {
                string mainconn = ConfigurationManager.ConnectionStrings["Myconnection"].ConnectionString;
                SqlConnection sqlconn = new SqlConnection(mainconn);
                string sqlquery = "Insert into [dbo].[Student](StudentID,StudentUsernameID,StudentName,StudentSurname,StudentEmail,StudentPhone,StudentBirth,StudentYear,StudentUsername,StudentPassword) values (@StudentID,@StudentUsernameID,@StudentName,@StudentSurname,@StudentEmail,@StudentPhone,@StudentBirth,@StudentYear,@StudentUsername,@StudentPassword)";
                sqlconn.Open();
                SqlCommand sqlcomm = new SqlCommand(sqlquery, sqlconn);
                sqlcomm.Parameters.AddWithValue("@StudentID", TxtStudentID.Text);
                sqlcomm.Parameters.AddWithValue("@StudentUsernameID", TxtStudentUsernameID.Text);
                sqlcomm.Parameters.AddWithValue("@StudentName", TxtStudentName.Text);
                sqlcomm.Parameters.AddWithValue("@StudentSurname", TxtStudentSurname.Text);
                sqlcomm.Parameters.AddWithValue("@StudentEmail", TxtStudentEmail.Text);
                sqlcomm.Parameters.AddWithValue("@StudentPhone", TxtStudentPhone.Text);
                sqlcomm.Parameters.AddWithValue("@StudentBirth", CalStudentBirth.SelectedDate.Date);
                sqlcomm.Parameters.AddWithValue("@StudentYear", TxtStudentYear.Text);
                sqlcomm.Parameters.AddWithValue("@StudentUsername", TxtStudentUsername.Text);
                sqlcomm.Parameters.AddWithValue("@StudentPassword", TxtStudentPassword.Text);
                sqlcomm.ExecuteNonQuery();
                Labmsg.Text = "The Student " + TxtStudentName.Text + " Is Saved Successfully.. <br/>";
                TxtStudentID.Text = "";
                TxtStudentName.Text = "";
                TxtStudentSurname.Text = "";
                TxtStudentEmail.Text = "";
                TxtStudentPhone.Text = "";
                TxtStudentYear.Text = "";
                TxtStudentUsername.Text = "";
                TxtStudentPassword.Text = "";

                sqlconn.Close();
            }
        }
    }