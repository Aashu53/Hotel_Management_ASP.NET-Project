<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="WebForm3.aspx.cs"
Inherits="ASP.NET_Project_2.WebForm2" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
  <head runat="server">
    <title>Register</title>
    <style>
      .registration-page {
        margin: 5% 5% 5% 5%;
        width: 800px;
        background-color: rgb(9, 9, 9, 0.6);
        display: block;
        align-content: center;
        height: 1700px;
        text-align: center;
        padding: 0px 30px 0px 30px;
        border: 5px solid white;
        border-radius: 20px;
      }
      .registration-page:hover {
        box-shadow: rgba(251, 238, 0, 0.46) 0px 19px 38px,
          rgba(251, 238, 0, 0.46) 0px 15px 12px;
      }

      #form1 {
        display: flex;
        justify-content: center;
      }
      body {
        height: 100%;
        width: 100%;
        background-image: url("albert-YYZU0Lo1uXE-unsplash.jpg");
        background-repeat: no-repeat;
        background-size: cover;
      }

      #Button1 {
        width: 90%;
        border: 2px solid white;
        font-size: large;
        border-radius: 20px;
        color: #ffffff;
        background-color: #ff33cc;
      }
      #Button2 {
        width: 90%;
        border: 2px solid white;
        font-size: large;
        border-radius: 20px;
      }
      #TextBox1 {
        border-radius: 20px;
        width: 90%;
        padding-left: 20px;
      }
      #TextBox2 {
        border-radius: 20px;
        width: 90%;
        padding-left: 20px;
      }
      #Label3 {
        text-align: left;
      }
      #Label4 {
        text-align: left;
      }
      .auto-style1 {
        text-align: left;
      }
      #Button1 {
        background-color: limegreen;
        height: 40px;
        width: 90%;
      }
      #Button2 {
        background-color: red;
        height: 40px;
        width: 90%;
        color: #ffffff;
      }
      #TextBox3 {
        border-radius: 20px;
        width: 90%;
        padding-left: 20px;
      }
      #TextBox4 {
        border-radius: 20px;
        width: 90%;
        padding-left: 20px;
      }
      #TextBox5 {
        border-radius: 20px;
        width: 90%;
        padding-left: 20px;
      }
      #TextBox6 {
        border-radius: 20px;
        width: 90%;
        padding-left: 20px;
      }
      #TextBox7 {
        border-radius: 20px;
        width: 90%;
        padding-left: 20px;
      }
      #TextBox9 {
        border-radius: 20px;
        width: 90%;
        padding-left: 20px;
      }
      #TextBox11 {
        border-radius: 20px;
        width: 90%;
        padding-left: 20px;
      }
      #DropDownList1 {
        width: 90%;
        border-radius: 20px;
        height: 40px;
        font-size: large;
        padding-left: 20px;
      }
    </style>
  </head>
  <body>
    <form id="form1" runat="server">
      <div class="registration-page">
        <br />
        <div>
          <asp:Label
            ID="Label2"
            runat="server"
            Text="REGISTRATION"
            style="font-size: x-large; color: #ffffff"
          ></asp:Label>
        </div>

        <br />
        <hr style="height: 0px; color: white" />

        <br /><br />

        <div class="auto-style1">
          &nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;
          <asp:Label
            ID="Label3"
            runat="server"
            Text="First Name"
            style="color: #ffffff; font-size: large"
          ></asp:Label>
          <br />
        </div>
        <br />
        <asp:TextBox ID="TextBox1" runat="server" Height="40px"></asp:TextBox>

        <br />
          <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="TextBox1" ErrorMessage="First Name Cannot be Empty" style="color: #FF0000; text-align: left"></asp:RequiredFieldValidator>
          <br />

        <div style="text-align: left">
          &nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;
          <asp:Label
            ID="Label4"
            runat="server"
            Text="Last Name"
            style="color: #ffffff; text-align: left; font-size: large"
          ></asp:Label>
        </div>

        <br />

        <asp:TextBox ID="TextBox2" runat="server" Height="40px" OnTextChanged="TextBox2_TextChanged"></asp:TextBox>

        <br />
          <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="TextBox2" ErrorMessage="Last Name Cannot be Empty " style="color: #FF0000"></asp:RequiredFieldValidator>

        <div style="text-align: left">
          &nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;
          <asp:Label
            ID="Label1"
            runat="server"
            Text="Username"
            style="color: #ffffff; text-align: left; font-size: large"
          ></asp:Label>
        </div>

        <br />
        <asp:TextBox ID="TextBox3" runat="server" Height="40px"></asp:TextBox>

        <br />
          <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="TextBox3" ErrorMessage="Username Cannot be Empty" style="color: #FF0000"></asp:RequiredFieldValidator>
          <br />

        <div style="display: flex; align-items: center">
          &nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;

          <asp:Label
            ID="Label11"
            runat="server"
            Text="Gender"
            style="color: #ffffff; font-size: large; margin-right: 10px"
          ></asp:Label>

          &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
          &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
          &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;

          <div style="display: flex; justify-content: space-between">
            <asp:RadioButton
              ID="RadioButton2"
              runat="server"
              Text="Male"
              GroupName="rbgender"
              style="color: #ffffff"
            />
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:RadioButton
              ID="RadioButton1"
              runat="server"
              Text="Female"
              GroupName="rbgender"
              style="color: #ffffff"
            />
          </div>
        </div>

        <br />
        <div style="text-align: left">
          &nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;
          <asp:Label
            ID="Label12"
            runat="server"
            Text="Age"
            style="color: #ffffff; text-align: left; font-size: large"
          ></asp:Label>
        </div>

        <br />
        <asp:TextBox ID="TextBox11" runat="server" Height="40px"></asp:TextBox>

        <br />
          <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ControlToValidate="TextBox11" ErrorMessage="Please Enter Your Age  " style="color: #FF0000"></asp:RequiredFieldValidator>

        <div style="text-align: left">
          &nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;
          <asp:Label
            ID="Label5"
            runat="server"
            Text="Password"
            style="color: #ffffff; text-align: left; font-size: large"
          ></asp:Label>
        </div>

        <br />
        <asp:TextBox ID="TextBox4" runat="server" Height="40px" OnTextChanged="TextBox4_TextChanged" TextMode="Password"></asp:TextBox>

        <br />
          <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ControlToValidate="TextBox4" ErrorMessage="Password Cannot be Blank" style="color: #FF0000"></asp:RequiredFieldValidator>

        <div style="text-align: left">
          &nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;
          <asp:Label
            ID="Label10"
            runat="server"
            Text="Confirm Password"
            style="color: #ffffff; text-align: left; font-size: large"
          ></asp:Label>
        </div>

        <br />
        <asp:TextBox ID="TextBox9" runat="server" Height="40px"></asp:TextBox>

        <br />
          <asp:CompareValidator ID="CompareValidator1" runat="server" ControlToCompare="TextBox4" ControlToValidate="TextBox9" ErrorMessage="Password Not Matching" style="color: #FF0000"></asp:CompareValidator>

        <div style="text-align: left">
          &nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;
          <asp:Label
            ID="Label6"
            runat="server"
            Text="Email"
            style="color: #ffffff; text-align: left; font-size: large"
          ></asp:Label>
        </div>

        <br />
        <asp:TextBox ID="TextBox5" runat="server" Height="40px"></asp:TextBox>

        <br />
          <asp:RequiredFieldValidator ID="RequiredFieldValidator7" runat="server" ControlToValidate="TextBox5" ErrorMessage="Please Enter an Email" style="color: #FF0000"></asp:RequiredFieldValidator>

        <div style="text-align: left">
          &nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;
          <asp:Label
            ID="Label7"
            runat="server"
            Text="PhoneNo"
            style="color: #ffffff; text-align: left; font-size: large"
          ></asp:Label>
        </div>

        <br />
        <asp:TextBox ID="TextBox6" runat="server" Height="40px"></asp:TextBox>

        <br />
          <asp:RequiredFieldValidator ID="RequiredFieldValidator8" runat="server" ControlToValidate="TextBox6" ErrorMessage="PhoneNo Cannot be Blank" style="color: #FF0000"></asp:RequiredFieldValidator>

        <div style="text-align: left">
          &nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;
          <asp:Label
            ID="Label8"
            runat="server"
            Text="Address"
            style="color: #ffffff; text-align: left; font-size: large"
          ></asp:Label>
        </div>

        <br />
        <asp:TextBox
          ID="TextBox7"
          runat="server"
          Height="81px"
          TextMode="MultiLine"
        ></asp:TextBox>

        <br />
          <asp:RequiredFieldValidator ID="RequiredFieldValidator9" runat="server" ControlToValidate="TextBox7" ErrorMessage="Please Enter Address" style="color: #FF0000"></asp:RequiredFieldValidator>

        <div style="text-align: left">
          &nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;
          <asp:Label
            ID="Label9"
            runat="server"
            Text="Country"
            style="color: #ffffff; text-align: left; font-size: large"
          ></asp:Label>
        </div>

        <br />

        <asp:DropDownList ID="DropDownList1" runat="server" Height="40px">
          <asp:ListItem>India</asp:ListItem>
          <asp:ListItem>USA</asp:ListItem>
          <asp:ListItem>Russia</asp:ListItem>
          <asp:ListItem>Sri-Lanka</asp:ListItem>
        </asp:DropDownList>

        <br />
          <asp:RequiredFieldValidator ID="RequiredFieldValidator10" runat="server" ControlToValidate="DropDownList1" ErrorMessage="Please Choose a Country" style="color: #FF0000"></asp:RequiredFieldValidator>
        <br />
        <div style="text-align: left; margin: 0 30px 0 30px">
          <asp:Label
            ID="Label13"
            runat="server"
            Text="Language"
            style="color: #ffffff; text-align: left; font-size: large"
          ></asp:Label
          ><br /><br />
          <div
            style="
              display: flex;
              justify-content: space-between;
              margin-right: 20px;
              align-items: center;
            "
          >
            <asp:CheckBox
              ID="CheckBox1"
              runat="server"
              style="color: #ffffff"
              Text="English"
            />
            <asp:CheckBox
              ID="CheckBox2"
              runat="server"
              style="color: #ffffff"
              Text="Hindi"
            />
            <asp:CheckBox
              ID="CheckBox3"
              runat="server"
              style="color: #ffffff"
              Text="Telugu"
            />
          </div>
        </div>

        <br />

        <br />
        <br />

        <br />
        <asp:Button
          ID="Button1"
          runat="server"
          Text="Submit"
          OnClick="Button1_Click"
        />

        <br />
        <br />
        <hr style="height: 0px; color: white" />

        <br />
        <asp:Button
          ID="Button2"
          runat="server"
          Text="Reset"
          OnClick="Button2_Click" CausesValidation="False"
        />

        <br /><br /><br />
      </div>
    </form>
  </body>
</html>
