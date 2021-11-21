<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Register.aspx.cs" Inherits="CMPG_323_Project_2.Register" %>

<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    
    <style type="text/css">
        .header
        {
            background-color:midnightblue;
            color:white;
            font-size:xx-large;
            font-family:sans-serif
        }

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
            text-align: center;
            font-size: 4.2rem;
            font-weight: 100;
            color:darkblue;
        }
        .auto-style6 {
            width: 816px;
        }
        .auto-style7 {
            text-align: right;
            width: 822px;
            height: 23px;
        }
        .auto-style10 {
            width: 816px;
            height: 23px;
        }
        .auto-style9 {
            width: 410px;
            height: 23px;
        }

        .auto-style8
        {
            background-color:midnightblue;
            color:white;
            font-size:xx-large;
            font-family:sans-serif;
            width:1900px;
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

        .registerBtnstyle{
            height:30px;
            width:150px;
            border-radius:20px;
            border-width:4px;
            text-align:center;
            border-color:cornflowerblue;
            border-style:solid;
        }

        .registerBtnstyle:hover{
            border-radius:20px;
            border-width:4px;
            height:40px;
            width:160px;
        }


        body{
            background-color:powderblue;
            font-size:large;
            font-family:sans-serif;
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
                <asp:LinkButton ID="LinkButton1" runat="server" OnClick="LinkButton1_Click" ForeColor="White" Font-Underline="false">Logout</asp:LinkButton>
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
    <div class="sec2">
        <div class="container">
            <div class="auto-style1">
                <div class="auto-style1">
                    <br />
                    <table class="auto-style2">
                        <tr>
                            <td class="auto-style6">&nbsp;</td>
                            <td class="auto-style5">
                                Register</td>
                            <td class="auto-style3">
                                &nbsp;</td>
                        </tr>
                        <tr>
                            <td class="auto-style6">&nbsp;</td>
                            <td class="auto-style6">
                <asp:TextBox ID="EmailTBox" placeholder="Email Address" runat="server" CssClass="textboxStyle"></asp:TextBox></td>
                            <td class="auto-style3">
                    <asp:RegularExpressionValidator ID="EmailValid" runat="server" ControlToValidate="EmailTBox" ErrorMessage="Please enter your email" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"></asp:RegularExpressionValidator>
                            </td>
                        </tr>
                        <tr>
                            <td class="auto-style6">&nbsp;</td>
                            <td class="auto-style6">
                <asp:TextBox ID="UsernameTBox" placeholder="Username" runat="server" CssClass="textboxStyle"></asp:TextBox></td>
                            <td class="auto-style3">
                        <asp:RequiredFieldValidator ID="UsernameValid" runat="server" ControlToValidate="UsernameTBox" ErrorMessage="Please enter your username" ForeColor="Black"></asp:RequiredFieldValidator>
                            </td>
                        </tr>
                        <tr>
                            <td class="auto-style6"></td>
                            <td class="auto-style6">
                <asp:TextBox ID="PasswordTBox" placeholder="Password" runat="server"  TextMode="Password" CssClass="textboxStyle"></asp:TextBox></td>
                            <td class="auto-style3">
                        <asp:RequiredFieldValidator ID="PasswordValid" runat="server" ControlToValidate="PasswordTBox" ErrorMessage="Invalid password" ForeColor="Black"></asp:RequiredFieldValidator>
                                <br />
                            </td>
                        </tr>
                        <tr>
                            <td class="auto-style6">&nbsp;</td>
                            <td class="auto-style6">
                <asp:TextBox ID="PasswordConfTbox" placeholder="Confirm Password" runat="server" TextMode="Password" CssClass="textboxStyle"></asp:TextBox>
                            </td>
                            <td class="auto-style3">
                        <asp:RequiredFieldValidator ID="PasswordConfValid" runat="server" ControlToValidate="PasswordConfTbox" ErrorMessage="Invalid password" ForeColor="Black"></asp:RequiredFieldValidator>
                            </td>
                        </tr>
                        <tr>
                            <td class="auto-style10"></td>
                            <td class="auto-style9">
                                &nbsp;</td>
                            <td class="auto-style7">&nbsp;</td>
                        </tr>
                        <tr>
                            <td class="auto-style10">&nbsp;</td>
                            <td class="auto-style9">
                <asp:Button ID="Submit" runat="server" Text="Register" OnClick="Submit_Click2" CssClass="registerBtnstyle"/>
                                </td>
                            <td class="auto-style7">&nbsp;</td>
                        </tr>
                    </table>
                </div>
            </div>
        </div>
    </div>
    </form>
</body>
</html>