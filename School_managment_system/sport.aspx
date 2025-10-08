<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="sport.aspx.cs" Inherits="School_managment_system.sport" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
        <style>
        body {
            font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif;
            background: linear-gradient(135deg, #f0f4f8, #d9e2ec);
            margin: 0;
            padding: 0;
        }
        .sports-container {
            max-width: 900px;
            margin: 50px auto;
            padding: 20px;
            background: #ffffff;
            border-radius: 15px;
            box-shadow: 0px 5px 15px rgba(0,0,0,0.1);
            text-align: center;
        }
        .sports-container h1 {
            color: #1e3a8a;
            margin-bottom: 20px;
        }
        .sports-container img {
            max-width: 100%;
            height: auto;
            border-radius: 10px;
        }
        .sports-description {
            margin-top: 15px;
            font-size: 16px;
            color: #333333;
        }
    </style>
</asp:Content>


<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
     <div class="sports-container">
     <h1>Our Sports Activities</h1>
     <asp:Image ID="imgSports" runat="server" ImageUrl="~/Images/sports.jpg" AlternateText="Sports Image" />
     <div class="sports-description">
         We offer a wide range of sports activities for students including football, basketball, volleyball, and athletics to promote physical fitness and teamwork.
     </div>
 </div>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">
</asp:Content>
<asp:Content ID="Content4" ContentPlaceHolderID="ContentPlaceHolder3" runat="server">
</asp:Content>
