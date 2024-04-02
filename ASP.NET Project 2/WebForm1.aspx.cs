using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace ASP.NET_Project_2
{
    public partial class WebForm1 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            string username = TextBox1.Text;
            string password = TextBox2.Text;
            SqlConnection con=new SqlConnection("data source=.; database=Hotel_Management_System; integrated security=yes");
            con.Open();
            string queery = $"Select password from user_details where username='{username}'";
            SqlCommand cmd = new SqlCommand(queery,con);
            string res=cmd.ExecuteScalar().ToString();
            con.Close();
            if (password == res)
            {
                Session["Username"] = username;
                Response.Redirect("WebForm4.aspx");
            }
            else
            {
                Response.Write("Username/Password not matched");
            }
            
        }

        protected void Button3_Click(object sender, EventArgs e)
        {
            Response.Redirect("WebForm3.aspx");
        }
    }
}