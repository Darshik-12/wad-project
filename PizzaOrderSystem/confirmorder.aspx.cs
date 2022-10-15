using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace PizzaOrderSystem
{
    public partial class confirmorder : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            String val = Session["data"].ToString();
            String val0 = Session["data0"].ToString();
            String val1 = Session["data1"].ToString();
            String val2 = Session["data2"].ToString();

            sess_lbl.Text = val;
            sess_lbl0.Text = val0;
            sess_lbl1.Text = val1;
            Label1.Text = val2;
        }

        protected void pab_lkbtn_Click(object sender, EventArgs e)
        {
            Response.Redirect("payment.aspx");
        }

        protected void oph_lkbtn_Click(object sender, EventArgs e)
        {
            Response.Redirect("home_page.aspx");
        }

        protected void gfp_lkbtn_Click(object sender, EventArgs e)
        {
            Response.Redirect("payment.aspx");

        }

        protected void lo_lkbtn_Click(object sender, EventArgs e)
        {
            Response.Redirect("login_page.aspx");
        }
    }
}