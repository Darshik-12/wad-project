using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data.SqlClient;
using System.IO;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Xml.Linq;

namespace PizzaOrderSystem
{
    public partial class sign_up_page : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void lkbtn_sign_up(object sender, EventArgs e)
        {
            string name = username_txt.Text;
            string email = email_id_txt.Text;
            string pass = pass_word_txt.Text;

            SqlConnection conn = new SqlConnection();
            conn.ConnectionString = ConfigurationManager.ConnectionStrings["userConnection"].ConnectionString;
            conn.Open();
            string insertQuery = "insert into signup(user_name,email,password) values(@user_name,@email,@password)";
            SqlCommand com = new SqlCommand(insertQuery, conn);
            
            com.Parameters.AddWithValue("@user_name", name);
            com.Parameters.AddWithValue("@email", email);
            com.Parameters.AddWithValue("@password", pass);
            

            com.ExecuteNonQuery();
            Response.Write("Registration Successful");
            Response.Redirect("login_page.aspx");
            Server.Transfer("login_page.aspx");
            conn.Close();


            //Response.Redirect("login_page.aspx");

        }
        protected void loginpage_Click(object sender, EventArgs e)
        {
            Response.Redirect("login_page.aspx");
        }
    }
}