<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="ViewTeacher.aspx.cs" Inherits="School_managment_system.ViewTeacher" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style>
        h2 {
            text-align: center;
            margin: 20px;
            font-family: Arial, sans-serif;
        }
        .container {
            width: 90%;
            margin: auto;
            background: #fff;
            padding: 20px;
            border-radius: 8px;
            box-shadow: 0px 2px 6px rgba(0,0,0,0.1);
            overflow-x: auto;
        }
        .gridview {
            width: 100%;
            border-collapse: collapse;
        }
        .gridview th, .gridview td {
            padding: 10px;
            border: 1px solid #ddd;
        }
        .gridview th {
            background: #007bff;
            color: #fff;
            text-align: left;
        }
        .gridview img {
            width: 60px;
            height: 60px;
            border-radius: 50%;
            object-fit: cover;
        }
    </style>
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <h2>Teacher Records</h2>
    <div class="container">
        <asp:GridView ID="GridView1" runat="server" CssClass="gridview" AutoGenerateColumns="false">
            <Columns>
                <asp:BoundField DataField="FirstName" HeaderText="First Name" />
                <asp:BoundField DataField="LastName" HeaderText="Last Name" />
                <asp:BoundField DataField="Email" HeaderText="Email" />
                <asp:BoundField DataField="Subject" HeaderText="Subject" />
                <asp:BoundField DataField="Qualification" HeaderText="Qualification" />
                <asp:BoundField DataField="Gender" HeaderText="Gender" />
                <asp:BoundField DataField="Contact" HeaderText="Contact Number" />
                <asp:BoundField DataField="Address" HeaderText="Address" />
                <asp:ImageField DataImageUrlField="Photo" HeaderText="Photo"
                                ControlStyle-Width="60" ControlStyle-Height="60" />
            </Columns>
        </asp:GridView>
    </div>
</asp:Content>

<asp:Content ID="Content4" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">
</asp:Content>
<asp:Content ID="Content5" ContentPlaceHolderID="ContentPlaceHolder3" runat="server">
</asp:Content>