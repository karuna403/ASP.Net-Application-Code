using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;
using System.Drawing;
using System.Web.Security;

namespace SampleWebApplication
{
    public partial class Login : System.Web.UI.Page
    {
       
        static string cs = ConfigurationManager.ConnectionStrings["RG_ProjectConnectionString"].ConnectionString;
        SqlConnection con = new SqlConnection(cs);
        string email;
        string password;
        protected void Page_Load(object sender, EventArgs e)
        {
           
            con.Open();
            email = txtemail.Text;
            password = txtpassword.Text;
            SqlCommand cmd1 = new SqlCommand("select firstname, lastname , email from Register where email=@email", con);
            cmd1.Parameters.AddWithValue("@email", email);
            SqlDataReader rr = cmd1.ExecuteReader();
            while (rr.Read())
            {
                Session["FirstName"] = rr["firstname"].ToString();
                Session["LastName"]  = rr["lastname"].ToString();
                Session["Email"]     = rr["email"].ToString();
            }

           con.Close();
    }

        protected void subbtn_Click(object sender, EventArgs e)
        {
            if (AuthenticateUser(txtemail.Text, txtpassword.Text))
            {

                FormsAuthentication.RedirectFromLoginPage(txtemail.Text, false);

            }
            else
            {
                lberror.Text = "Invalid username or Password";
                lberror.ForeColor = System.Drawing.Color.Red;
            }
        }
        private bool AuthenticateUser(string Email, string Password)
        {
            con.Open();

            SqlCommand cmd = new SqlCommand("Check_User", con);
            cmd.CommandType = CommandType.StoredProcedure;
            string encyrptpassword = FormsAuthentication.HashPasswordForStoringInConfigFile(Password, "SHA1");
            cmd.Parameters.AddWithValue("@email", Email);
            cmd.Parameters.AddWithValue("@password", encyrptpassword);

            int result = (int)cmd.ExecuteScalar();
            return result == 1;

        }
    }
}