using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace SampleWebApplication
{
    public partial class AdminView : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }
        protected void lbinsert(object sender, EventArgs e)
        {

            SqlDataSource1.InsertParameters["Product_Type"].DefaultValue = ((TextBox)GridView1.FooterRow.FindControl("txtproducttype")).Text;

            SqlDataSource1.InsertParameters["Price"].DefaultValue = ((TextBox)GridView1.FooterRow.FindControl("txtcost")).Text;


            SqlDataSource1.InsertParameters["No_Of_Products_Available"].DefaultValue = ((TextBox)GridView1.FooterRow.FindControl("txtnumberofpdt")).Text;

            SqlDataSource1.Insert();
        }





    }
}