<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="WebForm1.aspx.cs"
Inherits="ASP.NET_Project_2.WebForm1" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
  <head runat="server">
    <title>Login</title>
    <style>
      .login-page {
        margin: 5% 5% 5% 5%;
        width: 400px;
        background-color: rgb(9, 9, 9, 0.6);
        display: block;
        align-content: center;
        height: 600px;
        text-align: center;
        padding: 30px 30px 30px 30px;
        border: 5px solid white;
        border-radius: 20px;
      }
      .login-page:hover {
        box-shadow: rgba(253, 0, 0, 0.9) 0px 19px 38px,
          rgba(253, 0, 0, 0.9) 0px 15px 12px;
      }

      #form1 {
        display: flex;
        justify-content: center;
      }
      body {
        height: 100%;
        width: 100%;
        background-image: url("visualsofdana-T5pL6ciEn-I-unsplash.jpg");
        background-repeat: no-repeat;
        background-size: cover;
      }

      #Button1 {
        width: 95%;
        border: 2px solid white;
        font-size: large;
        border-radius: 20px;
        color: #000000;
        background-color: #00FF00;
      }

      #Button3 {
        width: 95%;
        border: 2px solid white;
        font-size: large;
        border-radius: 20px;
        color: #ffffff;
        background-color: #800000;
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
    </style>
  </head>
  <body>
    <form id="form1" runat="server">
      <div class="login-page">
        <div>
          <asp:Label
            ID="Label2"
            runat="server"
            Text="LOGIN"
            style="font-size: x-large; color: #ffffff"
          ></asp:Label>
        </div>

        <br />
        <hr style="height: 0px; color: white" />

        <br /><br />

        <div class="auto-style1">
          &nbsp;&nbsp;&nbsp;
          <asp:Label
            ID="Label3"
            runat="server"
            Text="Enter Username"
            style="color: #ffffff; font-size: large"
          ></asp:Label>
          <br />
        </div>
        <br />
        <asp:TextBox ID="TextBox1" runat="server" Height="40px"></asp:TextBox>

        <br />
          <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="TextBox1" ErrorMessage="Username Cannot be Empty" style="color: #FF0000"></asp:RequiredFieldValidator>
          <br />
          <br />

        <div style="text-align: left">
          &nbsp;&nbsp;&nbsp;
          <asp:Label
            ID="Label4"
            runat="server"
            Text="Enter Password"
            style="color: #ffffff; text-align: left; font-size: large"
          ></asp:Label>
        </div>

        <br />
        <asp:TextBox ID="TextBox2" runat="server" Height="40px"></asp:TextBox>

        <br />

          <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ControlToValidate="TextBox2" ErrorMessage="Password Cannot be Blank" style="color: #FF0000"></asp:RequiredFieldValidator>
          <br />
        <br />
        <br />
        <asp:Button
          ID="Button1"
          runat="server"
          OnClick="Button1_Click"
          Text="Login"
          BackColor="#800000"
          ForeColor="White"
          Height="40px"
        />

        <br />
        <br />
        <hr style="height: 0px; color: white" />

        <br />
        <asp:Button
          ID="Button3"
          runat="server"
          OnClick="Button3_Click"
          Text="New User? Register"
          Height="40px" CausesValidation="False"
        />
        <br />
      </div>
    </form>
  </body>
</html>
