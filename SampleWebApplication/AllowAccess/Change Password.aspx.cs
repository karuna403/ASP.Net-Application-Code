using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;
using System.Web.Security;

namespace SampleWebApplication
{
    public partial class Change_Password : System.Web.UI.Page
    {
        static string s = ConfigurationManager.ConnectionStrings["RG_ProjectConnectionString"].ConnectionString;
        SqlConnection con = new SqlConnection(s);

        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void subbtn_Click(object sender, EventArgs e)
        {

            
            string email = Session["Email"].ToString();

            string password = txtchangepassword.Text;
            string retypepassord = txtretypepassword.Text;

            if (password == retypepassord)
            {
                con.Open();
                string encriptpassword = FormsAuthentication.HashPasswordForStoringInConfigFile(txtchangepassword.Text, "SHA1");
                string encriptretypepassword = FormsAuthentication.HashPasswordForStoringInConfigFile(txtretypepassword.Text, "SHA1");


                SqlCommand cmd = new SqlCommand("USP_UpdateCustomers", con);
                cmd.CommandType = CommandType.StoredProcedure;
                cmd.Parameters.AddWithValue("@changepassword", encriptpassword);
                cmd.Parameters.AddWithValue("@confirmpassword", encriptretypepassword);
                cmd.Parameters.AddWithValue("@email", email);
                int result = cmd.ExecuteNonQuery();
                if (result > 0)
                {
                    Response.Redirect("/Login.aspx");
                }
                con.Close();
            }
            else
            {
                Response.Redirect("/AllowAccess/Change Password.aspx");
            }





        }
    }
}