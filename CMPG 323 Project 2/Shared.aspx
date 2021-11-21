<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Shared.aspx.cs" Inherits="CMPG_323_Project_2.Shared" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style1 {
            width: 645px;
        }

        .auto-style8
        {
            background-color:midnightblue;
            color:white;
            font-size:xx-large;
            font-family:sans-serif
        }
        .auto-style9 {
            width: 239px;
        }
        .auto-style10 {
            width: 195px;
        }
        .auto-style11 {
            width: 233px;
        }
        .auto-style12 {
            width: 428px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <table class="auto-style8">
        <tr>
            <td class="auto-style10">Photo Album</td>
            <td class="auto-style9">
                <asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl="~/Images.aspx" ForeColor="White">Manage images</asp:HyperLink>
            </td>
            <td class="auto-style11">
                <asp:HyperLink ID="HyperLink2" runat="server" NavigateUrl="~/Albums.aspx" ForeColor="White">Manage albums</asp:HyperLink>
            </td>
            <td class="auto-style4">
                <asp:HyperLink ID="HyperLink3" runat="server" NavigateUrl="~/Shared.aspx" ForeColor="White">Shared images</asp:HyperLink>
            </td>
            <td class="auto-style12">&nbsp;</td>
            <td class="login">
                <asp:HyperLink ID="HyperLink4" runat="server" NavigateUrl="~/Login.aspx" ForeColor="White">Login</asp:HyperLink>
            </td>
            <td class="register">
                <asp:HyperLink ID="HyperLink5" runat="server" NavigateUrl="~/Register.aspx" ForeColor="White">Register</asp:HyperLink>
            </td>
        </tr>
    </table>
        <table style="width:100%;">
            <tr>
                <td class="auto-style1">&nbsp;</td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style1">&nbsp;</td>
                <td>
        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="SharedImageId" DataSourceID="SqlDataSource1" OnSelectedIndexChanged="GridView1_SelectedIndexChanged" >
            <Columns>
                <asp:CommandField SelectText="Download" ShowSelectButton="True" />
                <asp:BoundField DataField="SharedImageId" HeaderText="SharedImageId" InsertVisible="False" ReadOnly="True" SortExpression="SharedImageId" />
                <asp:BoundField DataField="ImageName" HeaderText="ImageName" SortExpression="ImageName" />
                <asp:BoundField DataField="Captured By" HeaderText="Captured By" SortExpression="Captured By" />
                <asp:BoundField DataField="Tags" HeaderText="Tags" SortExpression="Tags" />
                <asp:BoundField DataField="Location" HeaderText="Location" SortExpression="Location" />
                <asp:BoundField DataField="Shared From" HeaderText="Shared From" SortExpression="Shared From" />
                <asp:BoundField DataField="Image" HeaderText="Image" SortExpression="Image" />
            </Columns>
        </asp:GridView>
                </td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style1">&nbsp;</td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
        </table>
        <div>
        </div>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ImageUserConnectionString1 %>" SelectCommand="SELECT * FROM [Shared]"></asp:SqlDataSource>
        <br />
    </form>
</body>
</html>
