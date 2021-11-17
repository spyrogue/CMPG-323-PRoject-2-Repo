<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Register.aspx.cs" Inherits="CMPG_323_Project_2.Register" %>

<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    
    <style type="text/css">
        .auto-style1 {
            text-align: center;
        }
        .auto-style2 {
            width: 100%;
            height: 136px;
        }
        .auto-style3 {
            text-align: left;
            width: 822px;
        }
        .auto-style5 {
            width: 410px;
        }
        .auto-style6 {
            width: 816px;
        }
        .auto-style7 {
            text-align: right;
            width: 822px;
            height: 23px;
        }
        .auto-style8 {
            width: 816px;
            height: 23px;
        }
        .auto-style9 {
            width: 410px;
            height: 23px;
        }
    </style>
    
</head>
<body>
    <style>
        form{
            background-color:white;
        }
    </style>
    <form id="form1" runat="server">
        <section>
    </section>
    <div class="sec2">
        <div class="container">
            <div class="auto-style1">
                <h2 class="auto-style1">Register</h2>
                <div class="auto-style1">
                    <br />
                    <table class="auto-style2">
                        <tr>
                            <td class="auto-style6">&nbsp;</td>
                            <td class="auto-style5">
                <asp:TextBox ID="EmailTBox" placeholder="Email Address" runat="server" Width="200px"></asp:TextBox></td>
                            <td class="auto-style3">
                    <asp:RegularExpressionValidator ID="EmailValid" runat="server" ControlToValidate="EmailTBox" ErrorMessage="Please enter your email" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"></asp:RegularExpressionValidator>
                            </td>
                        </tr>
                        <tr>
                            <td class="auto-style6">&nbsp;</td>
                            <td class="auto-style5">
                <asp:TextBox ID="UsernameTBox" placeholder="Username" runat="server" Width="200px"></asp:TextBox></td>
                            <td class="auto-style3">
                        <asp:RequiredFieldValidator ID="UsernameValid" runat="server" ControlToValidate="UsernameTBox" ErrorMessage="Please enter your username" ForeColor="Black"></asp:RequiredFieldValidator>
                            </td>
                        </tr>
                        <tr>
                            <td class="auto-style6">&nbsp;</td>
                            <td class="auto-style5">
                <asp:TextBox ID="PasswordTBox" placeholder="Password" runat="server" Width="200px"></asp:TextBox></td>
                            <td class="auto-style3">
                        <asp:RequiredFieldValidator ID="PasswordValid" runat="server" ControlToValidate="PasswordTBox" ErrorMessage="Invalid password" ForeColor="Black"></asp:RequiredFieldValidator>
                                <br />
                            </td>
                        </tr>
                        <tr>
                            <td class="auto-style6">&nbsp;</td>
                            <td class="auto-style5">
                <asp:TextBox ID="PasswordConfTbox" placeholder="Confirm Password" runat="server" Width="200px"></asp:TextBox>
                            </td>
                            <td class="auto-style3">
                        <asp:RequiredFieldValidator ID="PasswordConfValid" runat="server" ControlToValidate="PasswordConfTbox" ErrorMessage="Invalid password" ForeColor="Black"></asp:RequiredFieldValidator>
                            </td>
                        </tr>
                        <tr>
                            <td class="auto-style8"></td>
                            <td class="auto-style9">
                                &nbsp;</td>
                            <td class="auto-style7">&nbsp;</td>
                        </tr>
                        <tr>
                            <td class="auto-style8">&nbsp;</td>
                            <td class="auto-style9">
                <asp:Button ID="Submit" runat="server" Text="Register" OnClick="Submit_Click2" Width="97px" />
                                </td>
                            <td class="auto-style7">Have an account?
                    <asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl="~/Login.aspx">Login</asp:HyperLink>
                &nbsp;&nbsp;</td>
                        </tr>
                    </table>
                </div>
            </div>
        </div>
    </div>
    </form>
</body>
</html>