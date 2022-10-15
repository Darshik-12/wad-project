using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace PizzaOrderSystem
{
    public partial class WebForm1 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void sign_up_page_Click(object sender, EventArgs e)
        {
            Response.Redirect("sign_up_page.aspx");
        }

        protected void login_btn_Click(object sender, EventArgs e)
        {
            string l_pass = password_txt.Text;
            string email = email_id_txt.Text;

            SqlConnection conn = new SqlConnection();
            conn.ConnectionString = ConfigurationManager.ConnectionStrings["userConnection"].ConnectionString;
            conn.Open();
            string checkPasswordQuery = "select password from signup where password='" + l_pass + "' and email = '" + email + "'"; 
            SqlCommand passComm = new SqlCommand(checkPasswordQuery, conn);
            string password = passComm.ExecuteScalar()?.ToString() ?? "";
            if (password == l_pass)
            {
                Session["New"] = l_pass;
                Response.Write("Password is correct");
                Response.Redirect("home.aspx");
                Server.Transfer("home.aspx");
            }
            else
            {
                Response.Write("Password is not correct");
            }


            //Response.Redirect("home_page.aspx");
        }
    }
}