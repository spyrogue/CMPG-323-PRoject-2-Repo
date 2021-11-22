<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Albums.aspx.cs" Inherits="CMPG_323_Project_2.Albums" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <style type="text/css">

        .mydatagrid
        {
        width: 50%;
        border: solid 2px black;
        }
        .header
        {
        background-color: #646464;
        font-family: Arial;
        color: White;
        border: none 0px transparent;
        height: 10px;
        text-align: center;
        font-size: 16px;
        }

        .rows
        {
        background-color: #fff;
        color: #000;
        text-align: left;
        border: none 1px transparent;
        font-size: 30px;
        font-family:sans-serif;
        }
        .rows:hover
        {
        background-color: #00d7ed;
        color: #fff;
        text-align: left;
        font-size: 40px;
        font-family:sans-serif;
        }
        .selectedrow
        {
        background-color: #ff8000;
        font-family: Arial;
        color: #fff;
        font-weight: bold;
        text-align: center;
        }
        .mydatagrid a /** FOR THE PAGING ICONS **/
        {
        background-color: Transparent;
        padding: 5px 5px 5px 5px;
        color: #fff;
        text-decoration: none;
        font-weight: bold;
        }

        .mydatagrid a:hover /** FOR THE PAGING ICONS HOVER STYLES**/
        {
        background-color: #000;
        color: #fff;
        }
        .mydatagrid span /** FOR THE PAGING ICONS CURRENT PAGE INDICATOR **/
        {
        background-color: #c9c9c9;
        color: #000;
        padding: 5px 5px 5px 5px;
        }
        .pager
        {
        background-color: #646464;
        font-family: Arial;
        color: White;
        height: 30px;
        text-align: left;
        }

        .mydatagrid td
        {
        padding: 5px;
        }
        .mydatagrid th
        {
        padding: 5px;
        }


        .auto-style8
        {
            background-color:midnightblue;
            color:white;
            font-size:xx-large;
            font-family:sans-serif;
            width:1900px;
        }

        .auto-style9{
            text-align: center;
            width: 642px;
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
            width: 584px;
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

        .insertBtnstyle{
            height:30px;
            width:150px;
            border-radius:20px;
            border-width:4px;
            text-align:center;
            border-color:cornflowerblue;
            border-style:solid;
        }

        .insertBtnstyle:hover{
            border-radius:20px;
            border-width:4px;
            height:40px;
            width:160px;
        }

        .auto-style11 {
            text-align: center;
            width: 586px;
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
                <asp:LinkButton ID="LinkButton1" runat="server" OnClick="LinkButton1_Click" ForeColor="White" Font-Underline="false" Visible="False">Logout</asp:LinkButton>
            </td>
        </tr>
    </table>
        <div>
            <br />
            <table style="width:100%;">
                <tr>
                    <td class="auto-style9">&nbsp;</td>
                    <td colspan="2">
            <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="Album_Id" DataSourceID="SqlDataSource1" EmptyDataText="There are no data records to display." CssClass="mydatagrid" HeaderStyle-CssClass="header" RowStyle-CssClass="rows" AllowSorting="True">
                <Columns>
                    <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" />
                    <asp:BoundField DataField="Album_Id" HeaderText="Album_Id" SortExpression="Album_Id" />
                    <asp:BoundField DataField="Album_Name" HeaderText="Album_Name" SortExpression="Album_Name" />
                    <asp:BoundField DataField="User" HeaderText="User" SortExpression="User" />
                </Columns>
                <HeaderStyle CssClass="header" />
                <RowStyle CssClass="rows" />
            </asp:GridView>
            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ImageUserConnectionString1 %>" DeleteCommand="DELETE FROM [Albums] WHERE [Album Id] = @Album_Id" InsertCommand="INSERT INTO [Albums] ([Album Name], [User]) VALUES (@Album_Name, @User)" SelectCommand="SELECT [Album Id] AS Album_Id, [Album Name] AS Album_Name, [User] FROM [Albums]" UpdateCommand="UPDATE [Albums] SET [Album Name] = @Album_Name, [User] = @User WHERE [Album Id] = @Album_Id">
                <DeleteParameters>
                    <asp:Parameter Name="Album_Id" Type="Int32" />
                </DeleteParameters>
                <InsertParameters>
                    <asp:Parameter Name="Album_Name" Type="String" />
                    <asp:Parameter Name="User" Type="String" />
                </InsertParameters>
                <UpdateParameters>
                    <asp:Parameter Name="Album_Name" Type="String" />
                    <asp:Parameter Name="User" Type="String" />
                    <asp:Parameter Name="Album_Id" Type="Int32" />
                </UpdateParameters>
            </asp:SqlDataSource>
                    </td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style9">&nbsp;</td>
                    <td class="auto-style11">
                        <asp:TextBox ID="TextBox1" runat="server" CssClass="textboxStyle" placeholder="Album Name"></asp:TextBox>
                        <br />
                    </td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style9">&nbsp;</td>
                    <td class="auto-style11">
                        <asp:TextBox ID="TextBox2" runat="server" CssClass="textboxStyle" placeholder="User"></asp:TextBox>
                    </td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style9">&nbsp;</td>
                    <td class="auto-style11">
                        <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="Insert" CssClass="insertBtnstyle"/>
                    </td>
                    <td>&nbsp;</td>
                </tr>
            </table>
            <br />
            </div>
    </form>
</body>
</html>
