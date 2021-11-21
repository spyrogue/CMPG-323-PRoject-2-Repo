<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Main.aspx.cs" Inherits="CMPG_323_Project_2.Main" %>

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
            width: 245px;
        }
        .auto-style1:hover {
            background-color: lightskyblue;
        }

        .auto-style2 {
            width: 203px;
        }

        .auto-style4 {
            width: 218px;
        }
        .auto-style4:hover {
            background-color: lightskyblue;
        }

        .auto-style5 {
            width: 723px;
        }

        .auto-style7 {
            width: 238px;
        }
        .auto-style7:hover {
            background-color: lightskyblue;
        }

        .login:hover{
            background-color: lightskyblue;
        }

        .register:hover
        {
            background-color: lightskyblue;
        }

        .auto-style8 {
            background-color: midnightblue;
            color: white;
            font-size: xx-large;
            font-family: sans-serif;
            width: 100%;
        }

    </style>

</head>
<body>
    <form id="form1" runat="server">
    <table class="auto-style8">
        <tr>
            <td class="auto-style2">Photo Album</td>
            <td class="auto-style7">
                <asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl="~/Images.aspx" ForeColor="White">Manage images</asp:HyperLink>
            </td>
            <td class="auto-style1">
                <asp:HyperLink ID="HyperLink2" runat="server" NavigateUrl="~/Albums.aspx" ForeColor="White">Manage albums</asp:HyperLink>
            </td>
            <td class="auto-style4">
                <asp:HyperLink ID="HyperLink3" runat="server" NavigateUrl="~/Shared.aspx" ForeColor="White">Shared images</asp:HyperLink>
            </td>
            <td class="auto-style5">&nbsp;</td>
            <td class="login">
                <asp:HyperLink ID="HyperLink4" runat="server" NavigateUrl="~/Login.aspx" ForeColor="White">Login</asp:HyperLink>
            </td>
            <td class="register">
                <asp:HyperLink ID="HyperLink5" runat="server" NavigateUrl="~/Register.aspx" ForeColor="White">Register</asp:HyperLink>
            </td>
        </tr>
    </table>
    </form>
    </body>
</html>
