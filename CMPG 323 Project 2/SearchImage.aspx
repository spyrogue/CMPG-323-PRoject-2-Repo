<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="SearchImage.aspx.cs" Inherits="CMPG_323_Project_2.SearchImage" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <style>
        body{
            background-color:powderblue;
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
        .auto-style9 {
            height: 34px;
        }
    </style>
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <table class="auto-style8">
        <tr>
            <td class="photoAlbum">Photo Album</td>
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
        <div>
            <br />
            <table style="width:100%;">
                <tr>
                    <td class="auto-style9"></td>
                    <td class="auto-style9">&nbsp;<asp:Label ID="Label1" runat="server" Text="Search"></asp:Label>
                        <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
&nbsp;
                        <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="Button" />
                    </td>
                    <td class="auto-style9"></td>
                </tr>
                <tr>
                    <td>&nbsp;</td>
                    <td>
                        <asp:GridView ID="GridView1" runat="server">
                        </asp:GridView>
                    </td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td>&nbsp;</td>
                    <td>&nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
            </table>
        </div>
    </form>
</body>
</html>
