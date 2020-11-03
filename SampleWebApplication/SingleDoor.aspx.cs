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


namespace SampleWebApplication
{
    public partial class SingleDoor : System.Web.UI.Page
    {
       static string cs = ConfigurationManager.ConnectionStrings["RG_ProjectConnectionString"].ConnectionString;
        SqlConnection con = new SqlConnection(cs);
        int pid = 0;
        string useremail;
        protected void Page_Load(object sender, EventArgs e)
        {


        }


        protected void tnsubmit_Click(object sender, EventArgs e)
        {

            if (txtpincode.Text == "521139" || txtpincode.Text == "521138" || txtpincode.Text == "521140" || txtpincode.Text == "521141" ||
                txtpincode.Text == "521142" || txtpincode.Text == "521143" || txtpincode.Text == "521144" || txtpincode.Text == "521145")
            {
                if (int.Parse(txtquantity.Text) <= 0)
                {
                    Label1.Text = "invalid Quantity";
                    Label1.ForeColor = System.Drawing.Color.Red;
                }


                else
                {
                    con.Open();
                    SqlCommand cmd = new SqlCommand("USP_Insert_Order", con);
                    cmd.CommandType = CommandType.StoredProcedure;

                    string producttype = "Single Door";
                    string pincode = txtpincode.Text;
                    int quantity = int.Parse(txtquantity.Text);
                    int price = 15490;
                    int tprice = quantity * price;
                    string pemail = Session["Email"].ToString();

                    cmd.Parameters.AddWithValue("@productname", producttype);

                    cmd.Parameters.AddWithValue("@quantity", quantity);
                    cmd.Parameters.AddWithValue("@price", tprice);
                    cmd.Parameters.AddWithValue("@pincode", pincode);
                    cmd.Parameters.AddWithValue("@email", pemail);
                    int result = cmd.ExecuteNonQuery();
                    if (result > 0)
                    {

                        Response.Write("<script>alert('thank you for ordering')</script>");


                    }
                    con.Close();
                    con.Open();
                    useremail = Session["Email"].ToString();

                    SqlCommand cmd1 = new SqlCommand("select id from OrderProduct where email=@email", con);
                    cmd1.Parameters.AddWithValue("@email", useremail);
                    SqlDataReader dr = cmd1.ExecuteReader();
                    while (dr.Read())
                    {
                        pid = (int)dr["id"];
                    }
                    con.Close();
                    con.Open();

                    SqlCommand cmd2 = new SqlCommand("select * from OrderProduct where id=@id", con);
                    cmd2.Parameters.AddWithValue("@id", pid);
                    SqlDataAdapter ad = new SqlDataAdapter(cmd2);

                    DataTable dt = new DataTable();
                    ad.Fill(dt);
                    GridView1.DataSource = dt;
                    GridView1.DataBind();

                    GridView1.Visible = false;



                    con.Close();


                }

            }
            else
            {
                lerror.Text = "Delivery to this pincode is unavailable";
                lerror.ForeColor = System.Drawing.Color.Goldenrod;

            }

        }


        protected void Show_Order_Click(object sender, EventArgs e)
        {

            /*  useremail = Session["Email"].ToString();
               con.Open();
                SqlCommand cmd1 = new SqlCommand("select id from OrderProduct where email=@email", con);
                cmd1.Parameters.AddWithValue("@email", useremail);
                SqlDataReader dr = cmd1.ExecuteReader();
                while (dr.Read())
                {
                    pid = (int)dr["id"];
                }
                con.Close();
                con.Open();

                SqlCommand cmd2 = new SqlCommand("select * from OrderProduct where id=@id", con);
                cmd2.Parameters.AddWithValue("@id", pid);
                //SqlDataReader rd = cmd2.ExecuteReader();
                //while (rd.Read())
               // {
              // lbproducttype.Text = rd["ProductName"].ToString();
               
                
              //lbproducttype.Text = "amma";
            

          SqlDataAdapter ad = new SqlDataAdapter(cmd2);

          DataTable dt = new DataTable();
          ad.Fill(dt);
          GridView1.DataSource = dt;
          GridView1.DataBind();
          con.Close();*/

            GridView1.Visible = true;



        }
        protected void Cancel_Click(object sender, EventArgs e)
        {
            GridView1.Visible = false;
            Label1.Text = "";
            lerror.Text = "";
            txtpincode.Text = "";
            txtquantity.Text = "";

        }
    }
}