<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="WebForm4.aspx.cs"
Inherits="ASP.NET_Project_2.WebForm3" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
  <head runat="server">
    <title>Book a Room</title>
      <style type="text/css">
           .booking-page {
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
 .booking-page:hover {
   box-shadow: rgba(0, 226, 255, 0.8) 0px 19px 38px,
     rgba(0, 226, 255, 0.8) 0px 15px 12px;
 }
 body{
       height: 100%;
  width: 100%;
  background-image: url("vojtech-bruzek-Yrxr3bsPdS0-unsplash.jpg");
  background-repeat: no-repeat;
  background-size: cover;
}
 

 #form1 {
   display: flex;
   justify-content: center;
 }

 
 .room-type{
     display:flex;
     justify-content:space-between;
         padding: 0 15px 0 15px;
 }

 #Button1 {
   width: 95%;
   border: 2px solid white;
   font-size: large;
   border-radius: 20px;
   color: #FFFFFF;
   background-color: #000099;
 }

 #Button2 {
   width: 95%;
   border: 2px solid white;
   font-size: large;
   border-radius: 20px;
   color: #FFFFFF;
   background-color: #FF3300;
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
      #Label5 {
   text-align: left;
 }
      </style>
  </head>
  <body>
    <form id="form1" runat="server">
      <div class="booking-page">
        <div>
          <asp:Label
            ID="Label2"
            runat="server"
            Text="Book A Room"
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
        <asp:TextBox ID="TextBox1" runat="server" Height="40px" OnTextChanged="TextBox1_TextChanged" ReadOnly="True"></asp:TextBox>

          <br />

        <br /><br />

        <div style="text-align: left">
          &nbsp;&nbsp;&nbsp;
          <asp:Label
            ID="Label4"
            runat="server"
            Text="Select  Room Type"
            style="color: #ffffff; text-align: left; font-size: large"
          ></asp:Label>
        </div>

        <br />
          <div class="room-type"> <asp:RadioButton
   ID="RadioButton2"
   runat="server"
   Text="Deluxe"
   GroupName="rbgender"
   style="color: #ffffff"
 />
 <asp:RadioButton
   ID="RadioButton3"
   runat="server"
   Text="Ordinary"
   GroupName="rbgender"
   style="color: #ffffff"
 /></div>
           

          <br />
           

          <br />
          <div style="text-align:left">&nbsp;&nbsp;&nbsp;&nbsp; <asp:Label
            ID="Label5"
            runat="server"
            Text="Select Facilities"
            style="color: #ffffff; font-size: large"
          ></asp:Label></div>
          
           

          <br /><div style="display:flex; justify-content:space-between; padding: 0 15px 0 15px;"> <asp:CheckBox ID="CheckBox1" runat="server" style="color: #FFFFFF" Text="Computer" />
 <asp:CheckBox ID="CheckBox2" runat="server" style="color: #FFFFFF" Text="AC" />
 <asp:CheckBox ID="CheckBox3" runat="server" style="color: #FFFFFF" Text="Refrigerator" />
          </div>
         
           

        <br />

        <br />
        <br />
        <br />
          <asp:Button ID="Button1" runat="server" Text="Book" Height="40px" OnClick="Button1_Click" />

        <br />
        <br />
        <hr style="height: 0px; color: white" />

        <br />
          <asp:Button ID="Button2" runat="server" Text="Return" Height="40px" CausesValidation="False" OnClick="Button2_Click" />
        <br />
      </div>
    </form>
  </body>
</html>
