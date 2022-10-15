using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data.SqlClient;
using System.Linq;
using System.Reflection.Emit;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Xml.Linq;

namespace PizzaOrderSystem
{
    public partial class payment : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            String val3 = Session["data2"].ToString();
            l1.Text = val3;
        }

        protected void poh_lkbtn_Click(object sender, EventArgs e)
        {
            Response.Redirect("home_page.aspx");
        }

        protected void cyo_lkbtn_Click(object sender, EventArgs e)
        {
            Response.Redirect("confirmorder.aspx");
        }

        protected void gb_lkbtn_Click(object sender, EventArgs e)
        {
            Response.Redirect("confirmorder.aspx");
        }

        protected void lo_lkbtn_Click(object sender, EventArgs e)
        {
            Response.Redirect("login_page.aspx");
        }

        protected void o_lkbtn_Click(object sender, EventArgs e)
        {
            SqlConnection conn = new SqlConnection(ConfigurationManager.ConnectionStrings["userConnection"].ConnectionString);
            conn.Open();
            string insertQuery = "insert into pizzaorder(firstname,lastname,address,postalcode,contactno,email,amount) values(@firstname,@lastname,@address,@postalcode,@contactno,@email,@amount)";
            SqlCommand com = new SqlCommand(insertQuery, conn);
            com.Parameters.AddWithValue("@firstname", fn_tb.Text);

            com.Parameters.AddWithValue("@lastname", ln_tb.Text);

            com.Parameters.AddWithValue("@address", add_tb.Text);
            com.Parameters.AddWithValue("@postalcode", pc_tb.Text);
            com.Parameters.AddWithValue("@contactno", cn_tb.Text);
            com.Parameters.AddWithValue("@email", email_tb.Text);
            com.Parameters.AddWithValue("@amount", l1.Text);

            com.ExecuteNonQuery();
            Response.Write("Registration Successful");
            Response.Redirect("order.aspx");
            Server.Transfer("order.aspx");
            conn.Close();
        }

        protected void yo_lkbtn_Click(object sender, EventArgs e)
        {
            Response.Redirect("order.aspx");
        }
    }
}