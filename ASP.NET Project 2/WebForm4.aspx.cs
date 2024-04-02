using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Net;
using System.Web;
using System.Web.Services.Description;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Xml.Linq;

namespace ASP.NET_Project_2
{
    public partial class WebForm3 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            TextBox1.Text = Session["Username"].ToString();


        }

        protected void TextBox1_TextChanged(object sender, EventArgs e)
        {
            
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            string username=TextBox1.Text;
            string roomtype=string.Empty;
            if (RadioButton2.Checked==true)
            {
               roomtype=RadioButton2.Text;
            }
            else if(RadioButton3.Checked==true)
            {
                roomtype=RadioButton3.Text;
            }
            else
            {
                Response.Write("Please Select a Gender");
            }
            string facilities=string.Empty;
            if (CheckBox1.Checked == true)
            {
               facilities=CheckBox1.Text+"";
            }
            if (CheckBox2.Checked == true)
            {
               
               facilities += CheckBox2.Text+"";
            }
            if(CheckBox3.Checked == true)
            {
                facilities += CheckBox3.Text + "";
            }
          
                SqlConnection con = new SqlConnection("data source=.; database=Hotel_Management_System; integrated security=yes");
                con.Open();
                string query2 = $"insert into hotel_details values ('{username}','{roomtype}','{facilities}')";
                SqlCommand cmd2 = new SqlCommand(query2, con);
                cmd2.ExecuteNonQuery();
                con.Close();
           
                Response.Redirect("WebForm5.aspx");
            

        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            Response.Redirect("WebForm1.aspx");
        }
    }
}