using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.Services.Description;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Xml.Linq;

namespace PizzaOrderSystem
{
    public partial class home_page : System.Web.UI.Page
    {
        public IEnumerable<string> Id { get; private set; }

        protected void Page_Load(object sender, EventArgs e)
        {
            Session["data"] = "";
            Session["data0"] = "";
            Session["data1"] = "";
            Session["data2"] = "";
        }

        protected void confirm_order_Click(object sender, EventArgs e)
        {
            Response.Redirect("confirmorder.aspx");
        }

        protected void co_lkbtn_Click(object sender, EventArgs e)
        {
            string size = "";
            int sum = 0;
            if (small_rbtn.Checked)
            {
                size = small_rbtn.Text;
                size += "<br>";
                sum = sum + 60;
            }
            if (mediam_rbtn.Checked)
            {
                size += mediam_rbtn.Text;
                size += "<br>";
                sum = sum + 80;
            }
            if (large_rbtn.Checked)
            {
                size += large_rbtn.Text;
                size += "<br>";
                sum = sum + 100;
            }
            if (xlarge_rbtn.Checked)
            { 
                size += xlarge_rbtn.Text;
                size += "<br>";
                sum = sum + 120;
            }

            string crust = "";
            if (nor_rbtn.Checked)
            {
                crust = nor_rbtn.Text;
                crust += "<br>";
            }
            if (chees_rbtn.Checked)
            {
                crust += chees_rbtn.Text;
                crust += "<br>";
            }
            if (brust_rbtn.Checked)
            {
                crust += brust_rbtn.Text;
                crust += "<br>";
            }

            string message = "";
            foreach (ListItem item in top_cbl.Items)
            {
                if (item.Selected)
                {
                    message += item.Text;
                    sum += 10;
                }
                message += "<br>";
            }
            //ClientScript.RegisterStartupScript(this.GetType(), "alert", "alert('" + message + "');", true);
            foreach (ListItem item in cd_cbl.Items)
            {
                if (item.Selected)
                {
                    message += item.Text;
                    sum += 30;
                }
                message += "<br>";
            }
            //ClientScript.RegisterStartupScript(this.GetType(), "alert", "alert('" + message + "');", true);
            foreach (ListItem item in off_cbl.Items)
            {
                if (item.Selected)
                {
                    message += item.Text;
                    sum += 60;
                }
                message += "<br>";
            }
            //ClientScript.RegisterStartupScript(this.GetType(), "alert", "alert('" + message + "');", true);
            

            Session["data"] = message;
            Session["data0"] = size;
            Session["data1"] = crust;
            Session["data2"] = sum;

            Response.Redirect("confirmorder.aspx");
        }

        protected void bill_linkbtn_Click(object sender, EventArgs e)
        {
            Response.Redirect("payment.aspx");
        }

        protected void lo_lkbtn_Click(object sender, EventArgs e)
        {
            Response.Redirect("login_page.aspx");
        }

        protected void ui_lkbtn_Click(object sender, EventArgs e)
        {
            Response.Redirect("user_info.aspx");
        }
    }
}