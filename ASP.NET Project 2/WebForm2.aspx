﻿<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="WebForm2.aspx.cs" Inherits="ASP.NET_Project_2.WebForm4" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .registration_successful_page {
        margin: 5% 5% 5% 5%;
        width: 1500px;
        background-color:  rgb(9, 9, 9, 0.6);
        display: block;
        align-content: center;
        height: 700px;
        text-align: center;
        padding: 0px 30px 0px 30px;
        border: 5px solid white;
        border-radius: 20px;
      }
       .registration_successful_page:hover {
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
    background-image: url("adrien-olichon-ZgREXhl8ER0-unsplash.jpg");
    background-repeat: no-repeat;
    background-size: cover;
  }

      #Button1 {
        background-color: limegreen;
        height: 40px;
        width: 90%;
            color: #FFFFFF;
            font-size: large;
        }
      
     
      
      #Button2 {
        background-color: red;
        height: 40px;
        width: 90%;
        color: #ffffff;
            font-size: large;
        }
      #GridView1{
          display:flex;
          justify-content:center;
      }
     
      </style>
</head>
<body>
    <form id="form1" runat="server">
      <div class="registration_successful_page">
        <br />
        <div>
          <asp:Label
            ID="Label2"
            runat="server"
            Text="REGISTRATION SUCCESSFUL"
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
            Text="User Details"
            style="color: #ffffff; font-size: x-large"
          ></asp:Label>
            <br />
            \<br />
          <br />
        </div>
        <br />
          <asp:GridView ID="GridView1" runat="server" OnSelectedIndexChanged="GridView1_SelectedIndexChanged" CellPadding="4" ForeColor="#333333" GridLines="None">
              <AlternatingRowStyle BackColor="White" />
              <FooterStyle BackColor="#990000" Font-Bold="True" ForeColor="White" />
              <HeaderStyle BackColor="#990000" Font-Bold="True" ForeColor="White" />
              <PagerStyle BackColor="#FFCC66" ForeColor="#333333" HorizontalAlign="Center" />
              <RowStyle BackColor="#FFFBD6" ForeColor="#333333" />
              <SelectedRowStyle BackColor="#FFCC66" Font-Bold="True" ForeColor="Navy" />
              <SortedAscendingCellStyle BackColor="#FDF5AC" />
              <SortedAscendingHeaderStyle BackColor="#4D0000" />
              <SortedDescendingCellStyle BackColor="#FCF6C0" />
              <SortedDescendingHeaderStyle BackColor="#820000" />
          </asp:GridView>

        <br />

        <br />
        <br />

        <br />
        <asp:Button
          ID="Button1"
          runat="server"
          Text="Click To Login"
          OnClick="Button1_Click"
        />

        <br />
        <br />
        <hr style="height: 0px; color: white" />

        <br />
        <asp:Button
          ID="Button2"
          runat="server"
          Text="Click To Registration"
          OnClick="Button2_Click"
        />

        <br /><br /><br />
      </div>
    </form>
  
</body>
</html>
