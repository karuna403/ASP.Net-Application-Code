using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Drawing;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Web.Security;



namespace SampleWebApplication
{
    public partial class Register : System.Web.UI.Page
    {
        static string cs = ConfigurationManager.ConnectionStrings["RG_ProjectConnectionString"].ConnectionString;
        SqlConnection con = new SqlConnection(cs);
        protected void Page_Load(object sender, EventArgs e)
        {

        }
        protected void btnsub_Click(object sender, EventArgs e)
        {
            con.Open();
            SqlCommand cmd = new SqlCommand("USP_Insert_Register", con);
            cmd.CommandType = CommandType.StoredProcedure;
            string fname = txtfname.Text;
            string lname = txtlname.Text;
            string email = txtemail.Text;
            //string password = txtpassword.Text;
            string encyrptpassword = FormsAuthentication.HashPasswordForStoringInConfigFile(txtpassword.Text, "SHA1");
            //string confirmpassword = txtconfirmpass.Text;
            string encyrptconfirmpassword = FormsAuthentication.HashPasswordForStoringInConfigFile(txtconfirmpass.Text, "SHA1");
            string mobilenumber = txtmnumber.Text;
            cmd.Parameters.AddWithValue("@firstname", fname);
            cmd.Parameters.AddWithValue("@lastname", lname);
            cmd.Parameters.AddWithValue("@email", email);
            cmd.Parameters.AddWithValue("@password", encyrptpassword);
            cmd.Parameters.AddWithValue("@confirmpassword", encyrptconfirmpassword);
            cmd.Parameters.AddWithValue("@mobilenumber", mobilenumber);
            int result = cmd.ExecuteNonQuery();
            if (result > 0)
            {

                Response.Redirect("/Login.aspx");
            }




        }
    }
}