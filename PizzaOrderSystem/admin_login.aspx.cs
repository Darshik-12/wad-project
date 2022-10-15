using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace PizzaOrderSystem
{
    public partial class admin_login : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if(ad_pass_tb.Text == "admin" && ad_tb.Text == "admin@gmail.com")
            {
                Response.Redirect("admin_home.aspx");
                Server.Transfer("admin_home.aspx");
            }
        }
    }
}