using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Security.Policy;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Xml.Linq;

namespace ASP.NET_Project_2
{
    public partial class WebForm2 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            string Name = TextBox1.Text + "" + TextBox2.Text,
            username = TextBox3.Text, password = TextBox4.Text, email = TextBox5.Text, address = TextBox7.Text, phoneno = TextBox6.Text;
            int age=Convert.ToInt32(TextBox11.Text);
            string gender=string.Empty, language=string.Empty, country = string.Empty;
            Session["Username"] = username;
            if (RadioButton1.Checked == true)
            {
                gender = "Female";
            }
            else if (RadioButton2.Checked == true)
            {
                gender = "Male";
            }
            else
            {
                Response.Write("Please Select a Gender");
            }
            country = DropDownList1.SelectedValue;
            if(CheckBox1.Checked==true|| CheckBox2.Checked==true|| CheckBox3.Checked == true)
            {
                if (CheckBox1.Checked == true)
                {
                    if(CheckBox2.Checked== true)
                    {
                        if(CheckBox3.Checked== true)
                        {
                            language = CheckBox1.Text +"" +CheckBox2.Text +"" +CheckBox3.Text;
                        }
                        else
                        {
                            language = CheckBox1.Text + "" + CheckBox2.Text ;
                        }
                    }
                    else
                    {
                        language = CheckBox1.Text ;
                    }
                }
                else if(CheckBox2.Checked==true)
                {
                    if(CheckBox3.Checked == true)
                    {
                        language =  CheckBox2.Text + "" + CheckBox3.Text;
                    }
                    else
                    {
                        language = CheckBox2.Text;
                    }
                }
                else
                {
                    language=CheckBox3.Text;
                }
            }
            
                SqlConnection con = new SqlConnection("data source=.; database=Hotel_Management_System; integrated security=yes");
                con.Open();
                string query2 = $"insert into user_details values ('{Name}','{username}',{age},'{gender}','{password}','{email}','{address}','{phoneno}','{country}','{language}')";
                SqlCommand cmd2 = new SqlCommand(query2, con);
                cmd2.ExecuteScalar();
                con.Close();
            
                Response.Redirect("WebForm2.aspx");
            

           
        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            Response.Redirect("WebForm3.aspx");
        }

        protected void TextBox2_TextChanged(object sender, EventArgs e)
        {

        }

        protected void TextBox4_TextChanged(object sender, EventArgs e)
        {

        }
    }
}