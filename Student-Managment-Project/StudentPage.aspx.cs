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
    public partial class StudentPage : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            LitJoindate.Text = DateTime.Now.ToString();

        }

        protected void ButStudent_Click(object sender, EventArgs e)
        {
            string mainconn = ConfigurationManager.ConnectionStrings["Myconnection"].ConnectionString;
            SqlConnection sqlconn = new SqlConnection(mainconn);
            string sqlquery = "Insert into [dbo].[student](Stfname,Stlname,StFathername,StFatherPhone,StEmail,StPhone,Coursejoin,CourseFees,Firstinstallment,FeesDue,JoinDate) values (@Stfname,@Stlname,@StFathername,@StFatherPhone,@StEmail,@StPhone,@Coursejoin,@CourseFees,@Firstinstallment,@FeesDue,@JoinDate)";
            sqlconn.Open();
            SqlCommand sqlcomm = new SqlCommand(sqlquery, sqlconn);
            sqlcomm.Parameters.AddWithValue("@Stfname", TxtStFname.Text);
            sqlcomm.Parameters.AddWithValue("@Stlname", TxtStLname.Text);
            sqlcomm.Parameters.AddWithValue("@StFathername", TxtFatherName.Text);
            sqlcomm.Parameters.AddWithValue("@StFatherPhone", TxtFatherPhone.Text);
            sqlcomm.Parameters.AddWithValue("@StEmail", TxtStEmail.Text);
            sqlcomm.Parameters.AddWithValue("@StPhone", TxtPhone.Text);
            sqlcomm.Parameters.AddWithValue("@Coursejoin", DDLCourseName.SelectedItem.Text);
            sqlcomm.Parameters.AddWithValue("@CourseFees", LabCourseFees.Text);
            sqlcomm.Parameters.AddWithValue("@Firstinstallment", TxtCourseInstallment.Text);
            sqlcomm.Parameters.AddWithValue("@FeesDue", LabDueFees.Text);
            sqlcomm.Parameters.AddWithValue("@JoinDate", LitJoindate.Text);
            sqlcomm.ExecuteNonQuery();
            Labmsg.Text = "The Student " + TxtStFname.Text + " Is Saved Successfully.. <br/>";
            sqlconn.Close();
        }

        protected void DDLCourseName_SelectedIndexChanged(object sender, EventArgs e)
        {
            string mainconn = ConfigurationManager.ConnectionStrings["Myconnection"].ConnectionString;
            SqlConnection sqlconn = new SqlConnection(mainconn);
            string sqlquery = "select * from [dbo].[Coursetable] where Cname=@Cname";
            sqlconn.Open();
            SqlCommand sqlcomm = new SqlCommand(sqlquery, sqlconn);
            sqlcomm.Parameters.AddWithValue("@Cname", DDLCourseName.SelectedItem.Text);
            SqlDataReader sdr = sqlcomm.ExecuteReader();
            while(sdr.Read())
            {
                LabCourseFees.Text = sdr["Cfees"].ToString();
            }
            sqlconn.Close();
        }

        protected void TxtCourseInstallment_TextChanged(object sender, EventArgs e)
        {
            int balance = Convert.ToInt32(LabCourseFees.Text) - Convert.ToInt32(TxtCourseInstallment.Text);
            LabDueFees.Text = balance.ToString();
        }
    }
}