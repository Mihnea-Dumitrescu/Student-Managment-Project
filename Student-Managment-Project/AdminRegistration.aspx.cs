using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;

namespace Student_Managment_Project
{
    public partial class WebForm1 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }
        protected void ButRegister_Click(object sender, EventArgs e)
        {
            string mainconn = ConfigurationManager.ConnectionStrings["Myconnection"].ConnectionString;
            SqlConnection sqlconn = new SqlConnection(mainconn);
            string sqlquery = "Insert into [dbo].[Administrator] (AdminID,AdminUsernameID,AdminName,AdminSurname,AdminBirth,AdminEmail,AdminPhone,AdminUsername,AdminPassword) values (@AdminID,@AdminUsernameID,@AdminName,@AdminSurname,@AdminBirth,@AdminEmail,@AdminPhone,@AdminUsername,@AdminPassword)";
            SqlCommand sqlcomm = new SqlCommand(sqlquery, sqlconn);
            sqlconn.Open();
            sqlcomm.Parameters.AddWithValue("@AdminID", TxtAdminRegisterID.Text);
            sqlcomm.Parameters.AddWithValue("@AdminUsernameID", TxtAdminUsernameID.Text);
            sqlcomm.Parameters.AddWithValue("@AdminName", TxtAdminName.Text);
            sqlcomm.Parameters.AddWithValue("@AdminSurname", TxtAdminSurname.Text);
            sqlcomm.Parameters.AddWithValue("@AdminBirth", CalAdminBirthday.SelectedDate.Date);
            sqlcomm.Parameters.AddWithValue("@AdminEmail", TxtAdminEmail.Text);
            sqlcomm.Parameters.AddWithValue("@AdminPhone", TxtAdminPhone.Text);
            sqlcomm.Parameters.AddWithValue("@AdminUsername", TxtAdminUsername.Text);
            sqlcomm.Parameters.AddWithValue("@AdminPassword", TxtAdminPassword.Text);
            sqlcomm.ExecuteNonQuery();
            Labmsg.Text = "The Admin " + TxtAdminName.Text + " Is Saved Successfully";
            TxtAdminRegisterID.Text = "";
            TxtAdminUsernameID.Text = "";
            TxtAdminName.Text = "";
            TxtAdminSurname.Text = "";
            TxtAdminEmail.Text = "";
            TxtAdminPhone.Text = "";
            TxtAdminUsername.Text = "";
            TxtAdminPassword.Text = "";
            sqlconn.Close();
        }
        protected void ButGoBack_Click(object sender, EventArgs e)
        {
            Response.Redirect("HomePage.aspx");
        }
    }
}
