<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="CMPG_323_Project_2.Login" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style1 {
            width: 100%;
        }
        .auto-style2 {
            text-align: center;
            font-size: 4.2rem;
            font-weight: 100;
            color:darkblue;
        }
        .auto-style3 {
            text-align: center;
            width: 824px;
        }
        .auto-style4 {
            width: 824px;
        }
        .auto-style5 {
            text-align: center;
            width: 233px;
        }
        
        .auto-style8
        {
            background-color:midnightblue;
            color:white;
            font-size:xx-large;
            font-family:sans-serif;
            width:1900px;
        }

        body{
            background-color:powderblue;
            font-size:large;
            font-family:sans-serif;
            
            color:aqua;
        }

        .photoAlbum{
            width:180px;
        }
        .manageImages{
            width:180px;
        }
        .manageAlbums{
            width:180px;
        }
        .sharedImages{
            width:180px;
        }
        .searchImages{
            width:180px;
        }
        .spacer{
            width:300px;
        }
        .login{
            width:100px;
        }
        .register{
            width:100px;
        }

        .textboxStyle{
            height:30px;
            width:250px;
            border-radius:20px;
            border-width:4px;
            text-align:center;
            border-color:white;
            border-style:solid;
        }

        .textboxStyle:hover{
            border-color:forestgreen;
            border-radius:20px;
            border-width:4px;
            height:40px;
            width:300px;
        }

        .loginBtnstyle{
            height:30px;
            width:150px;
            border-radius:20px;
            border-width:4px;
            text-align:center;
            border-color:cornflowerblue;
            border-style:solid;
        }

        .loginBtnstyle:hover{
            border-radius:20px;
            border-width:4px;
            height:40px;
            width:160px;
        }


        .auto-style9 {
            width: 824px;
            height: 13px;
        }
        .auto-style10 {
            text-align: center;
            font-size: 4.2rem;
            font-weight: 100;
            height: 13px;
        }
        .auto-style11 {
            height: 13px;
        }


    </style>
</head>
<body>
    <form id="form1" runat="server">
        <table class="auto-style8">
        <tr>
            <td class="photoAlbum">PhotoAlbum</td>
            <td class="manageImages">
                <asp:HyperLink ID="HyperLink2" runat="server" NavigateUrl="~/Images.aspx" ForeColor="White" Font-Underline="false">Manage images</asp:HyperLink>
            </td>
            <td class="manageAlbums">
                <asp:HyperLink ID="HyperLink3" runat="server" NavigateUrl="~/Albums.aspx" ForeColor="White" Font-Underline="false">Manage albums</asp:HyperLink>
            </td>
            <td class="sharedImages">
                <asp:HyperLink ID="HyperLink4" runat="server" NavigateUrl="~/Shared.aspx" ForeColor="White" Font-Underline="false">Shared images</asp:HyperLink>
            </td>
            <td class="searchImages">
                <asp:HyperLink ID="HyperLink7" runat="server" NavigateUrl="~/SearchImage.aspx" ForeColor="White" Font-Underline="false">Search images</asp:HyperLink>
            </td>
            <td class="spacer">&nbsp;</td>
            <td class="login">
                <asp:HyperLink ID="HyperLink5" runat="server" NavigateUrl="~/Login.aspx" ForeColor="White" Font-Underline="false">Login</asp:HyperLink>
            </td>
            <td class="register">
                <asp:HyperLink ID="HyperLink6" runat="server" NavigateUrl="~/Register.aspx" ForeColor="White" Font-Underline="false">Register</asp:HyperLink>
                <asp:LinkButton ID="LinkButton1" runat="server" ForeColor="White" Font-Underline="false" OnClick="LinkButton1_Click">Logout</asp:LinkButton>
            </td>
        </tr>
    </table>
        <br />
        <br />
        <br />
        <br />
        <br />
        <br />
        <br />
        <br />
        <br />
        <table class="auto-style1">
            <tr>
                <td class="auto-style4">&nbsp;</td>
                <td class="auto-style2">Login</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style9"></td>
                <td class="auto-style10"></td>
                <td class="auto-style11"></td>
            </tr>
            <tr>
                <td class="auto-style3">&nbsp;</td>
                <td class="auto-style5">
                    <asp:TextBox ID="EmailTextBox" placeholder="Email Address" runat="server" OnTextChanged="EmailTextBox_TextChanged" CssClass="textboxStyle"></asp:TextBox>
                </td>
                <td>
                    <asp:RegularExpressionValidator ID="EmailValidator" runat="server" ControlToValidate="EmailTextBox" ErrorMessage="Please enter a correct email address" ForeColor="Red" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"></asp:RegularExpressionValidator>
                </td>
            </tr>
            <tr>
                <td class="auto-style3">&nbsp;</td>
                <td class="auto-style5">
                    <asp:TextBox ID="UsernameTextBox" placeholder="Username" runat="server" CssClass="textboxStyle"></asp:TextBox>
                </td>
                <td>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="UsernameTextBox" ErrorMessage="Plese enter a valid password" ForeColor="Red"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td class="auto-style3">&nbsp;</td>
                <td class="auto-style5">
                    <asp:TextBox ID="PasswordTextBox" placeholder="Password" runat="server" TextMode="Password" CssClass="textboxStyle"></asp:TextBox>
                </td>
                <td>
                    <asp:RequiredFieldValidator ID="EmailRequiredFieldValidator" runat="server" ControlToValidate="PasswordTextBox" ErrorMessage="Plese enter a valid password" ForeColor="Red"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td class="auto-style4">&nbsp;</td>
                <td class="auto-style5">
                    &nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style4">&nbsp;</td>
                <td class="auto-style5">
                    <asp:Button ID="LoginBtn" runat="server" Text="Login" CssClass="loginBtnstyle" OnClick="LoginBtn_Click" />
                </td>
                <td>&nbsp;</td>
            </tr>
        </table>
    </form>
</body>
</html>