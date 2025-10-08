<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="adminregister.aspx.cs" Inherits="School_managment_system.adminregister" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
        <!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Register Page</title>
    <style>
        body {
            margin: 0;
            padding: 0;
            font-family: Arial, sans-serif;
            background: url('images/school(1).jpg') no-repeat center center/cover;
            height: 100vh;
            display: flex;
            justify-content: center;
            align-items: center;
        }

        .register-box {
            width: 350px;
            padding: 40px;
            border-radius: 15px;
            background: rgba(255, 255, 255, 0.3);
            backdrop-filter: blur(10px);
            box-shadow: 0 8px 25px rgba(0, 0, 0, 0.3);
            text-align: center;
            color: black;
        }

            .register-box h2 {
                text-align: center;
                margin-bottom: 20px;
                color: #333;
            }

            .register-box input {
                width: 100%;
                padding: 10px;
                margin: 10px 0;
                border: 1px solid #808080;
                border-radius: 6px;
                font-size: 14px;
            }

                .register-box input:focus {
                    border-color: #ffffff;
                    outline: none;
                }

            .register-box button {
                width: 100%;
                padding: 12px;
                border: none;
                outline: none;
                background: linear-gradient(135deg, #f53347, #1df9f0);
                color: black;
                font-size: 18px;
                border-radius: 25px;
                cursor: pointer;
                transition: 0.3s;
            }

                .register-box button:hover {
                    background: #45a049;
                }

            .register-box p {
                text-align: center;
                margin-top: 15px;
                font-size: 14px;
            }

            .register-box a {
                color: #f53347;
                text-decoration: none;
            }

                .register-box a:hover {
                    text-decoration: wavy;
                    color:black;
                }
    </style>
</head>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
        <body>
    <div class="register-box">
        <h2>Register</h2>
        <form>
            <%--<input type="text" placeholder="Full Name" required>--%>
            <asp:TextBox ID="txtnm" type="text" placeholder="Full Name"  runat="server"></asp:TextBox>

<%--            <input type="email" placeholder="Email Address" required>--%>
            <asp:TextBox ID="txteml" type="email" placeholder="Email Address" runat="server"></asp:TextBox>

           <%-- <input type="text" placeholder="Username" required>--%>
            <asp:TextBox ID="txtunm" type="text" placeholder="Username" runat="server"></asp:TextBox>

            <%--<input type="password" placeholder="Password" required>--%>
            <asp:TextBox ID="txtpwd" type="password" placeholder="Password" runat="server"></asp:TextBox>

            <%--<input type="password" placeholder="Confirm Password" required>--%>
            <asp:TextBox ID="txtcpwd"  type="password" placeholder="Confirm Password"  runat="server"></asp:TextBox>

            <asp:FileUpload ID="fipimg" runat="server" />

<%--            <button type="submit">Sign Up</button>--%>
            <asp:Button ID="Button1" type="submit" runat="server" Text="Sign Up" OnClick="Button1_Click" />
            <p>Already have an account? <a href="adminlogin.aspx">Login</a></p>
        </form>
    </div>
</body>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">
</asp:Content>
<asp:Content ID="Content4" ContentPlaceHolderID="ContentPlaceHolder3" runat="server">
</asp:Content>

