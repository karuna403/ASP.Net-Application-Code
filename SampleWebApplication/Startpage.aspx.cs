using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace SampleWebApplication
{
    public partial class Startpage : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            lbusername.Text = Session["FirstName"].ToString() + Session["LastName"].ToString();

        }
    }
}