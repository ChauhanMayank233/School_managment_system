<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="adminlogin.aspx.cs" Inherits="School_managment_system.adminlogin" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <!DOCTYPE html>

    <html>
    <head>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <title>School Management Login</title>
        <style>
            * {
                margin: 0;
                padding: 0;
                box-sizing: border-box;
                font-family: Arial, sans-serif;
            }

            body {
                display: flex;
                justify-content: center;
                align-items: center;
                height: 100vh;
                background: url("images/school.jpg") no-repeat center center/cover;
            }

            .login-box {
                width: 350px;
                padding: 40px;
                border-radius: 15px;
                background: rgba(255, 255, 255, 0.1);
                backdrop-filter: blur(10px);
                box-shadow: 0 8px 25px rgba(0, 0, 0, 0.3);
                text-align: center;
                color: black;
            }

                .login-box h2 {
                    margin-bottom: 25px;
                    font-size: 28px;
                }

            .input-box {
                position: relative;
                margin-bottom: 20px;
            }

                .input-box input {
                    width: 100%;
                    padding: 12px;
                    border: none;
                    outline: none;
                    border-radius: 25px;
                    background: rgba(255, 255, 255, 0.2);
                    color: black;
                    font-size: 16px;
                }

                    .input-box input::placeholder {
                        color: black;
                    }

            .options {
                display: flex;
                justify-content: space-between;
                align-items: center;
                margin-bottom: 20px;
                font-size: 14px;
            }

                .options label {
                    display: flex;
                    align-items: center;
                    gap: 5px;
                }

            .login-btn {
                width: 100%;
                padding: 12px;
                border: none;
                outline: none;
                background: linear-gradient(135deg, #f53347, #00bfff);
                color: black;
                font-size: 18px;
                border-radius: 25px;
                cursor: pointer;
                transition: 0.3s;
            }

                .login-btn:hover {
                    background: linear-gradient(135deg, #0092ff, #1e90ff);
                }

            .register-link {
                margin-top: 15px;
                font-size: 14px;
            }

                .register-link a {
                    color: #00acff;
                    text-decoration: none;
                }
        </style>
    </head>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <body>
        <div class="login-box">
            <h2>School Login</h2>
            <form>
                <div class="input-box">
                    <%--        <input type="text" placeholder="Username" required>--%>
                    <asp:TextBox ID="txteml" type="text" placeholder="Email" runat="server"></asp:TextBox>
                </div>
                <div class="input-box">
                    <%--        <input type="password" placeholder="Password" required>--%>
                    <asp:TextBox ID="txtcpwd" type="password" placeholder="Password" runat="server"></asp:TextBox>
                </div>
                <%--      <button type="submit" class="login-btn">Login</button>--%>
                <asp:Button ID="Button1" runat="server" type="submit" class="login-btn" Text="Login" OnClick="Button1_Click" />
                <div class="register-link">
                    <p>Don't have an account? <a href="adminregister.aspx">Register</a></p>
                </div>
            </form>
        </div>
    </body>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">
</asp:Content>
<asp:Content ID="Content4" ContentPlaceHolderID="ContentPlaceHolder3" runat="server">
</asp:Content>

