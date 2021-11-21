<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Images.aspx.cs" Inherits="CMPG_323_Project_2.Images" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">

        .auto-style3 {
            margin-right: 0px;
        }
        .auto-style3 {
            margin-right: 0px;
        }
        
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
        font-family: Times New Roman;
        font-size: 20px;
        color: #000;
        text-align: left;
        border: none 1px transparent;
        }
        .rows:hover
        {
        background-color: #00d7ed;
        font-family: Times New Roman;
        color: #fff;
        text-align: left;
        font-size: 30px;
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
        
        form{
            background-color:powderblue;
        }

        .shareBtn{
            background: url(\Images\Share.png) no-repeat 0 0;
        }

        .auto-style8
        {
            background-color:midnightblue;
            color:white;
            font-size:xx-large;
            font-family:sans-serif
        }
        .auto-style9 {
            margin-bottom: 0px;
        }
        .auto-style10 {
            width: 921px;
        }

        .style-imagePath{
            display:none;
        }
        </style>
</head>
<body style="height: 246px">
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
    <form id="form1" runat="server">
&nbsp;select image:
        <br />
        <asp:Label ID="Label1" runat="server" Text="Label"></asp:Label>
        <br />
        <table style="width:100%;">
            <tr>
                <td class="auto-style10">&nbsp;</td>
                <td>
        <asp:TextBox ID="TextBox1" placeholder="Image Name" runat="server" OnTextChanged="TextBox1_TextChanged" Width="200px"></asp:TextBox>
                    <br />
        <asp:DropDownList ID="DropDownList2" runat="server" DataSourceID="SqlDataSource2" DataTextField="Album Id" DataValueField="Album Id">
        </asp:DropDownList>
        <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:ImageUserConnectionString1 %>" SelectCommand="SELECT * FROM [Albums]"></asp:SqlDataSource>
        <asp:TextBox ID="TextBox3" placeholder="Captured B" runat="server" Width="200px"></asp:TextBox>
                    <br />
        <asp:TextBox ID="TextBox4" placeholder="Tags" runat="server" Width="200px"></asp:TextBox>
                    <br />
        <asp:TextBox ID="TextBox5" placeholder="Location" runat="server" Width="200px"></asp:TextBox>
                    <br />
        <asp:TextBox ID="TextBox6" placeholder="User" runat="server" Width="200px"></asp:TextBox>
                    <br />
    <asp:FileUpload ID="fileupload" runat="server" CssClass="auto-style3" />  
                    <br />
        <asp:Button ID="upload" runat="server" Font-Bold="true" Text="Upload" OnClick="upload_Click" CssClass="auto-style9" />  
                    <br />
                </td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style10">
        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="ImageId" DataSourceID="SqlDataSource1" EmptyDataText="There are no data records to display." CssClass="mydatagrid" HeaderStyle-CssClass="header" RowStyle-CssClass="rows" OnSelectedIndexChanged="GridView1_SelectedIndexChanged1" OnRowCommand="GridView1_RowCommand" AllowSorting="True">
            <Columns>
                
                <asp:CommandField ShowSelectButton="True" />
                <asp:BoundField DataField="ImageId" HeaderText="ImageId" ReadOnly="True" SortExpression="ImageId" />
                <asp:BoundField DataField="ImageName" HeaderText="ImageName" SortExpression="ImageName" />
                <asp:BoundField DataField="Album Id" HeaderText="Album Id" SortExpression="Album Id" />
                <asp:BoundField DataField="Captured By" HeaderText="Captured By" SortExpression="Captured By" />
                <asp:BoundField DataField="Tags" HeaderText="Tags" SortExpression="Tags" />
                <asp:BoundField DataField="Location" HeaderText="Location" SortExpression="Location" />
                <asp:BoundField DataField="User" HeaderText="User" SortExpression="User" />
                <asp:ImageField DataImageUrlField="Image" HeaderText="Image" ControlStyle-Height="200" ControlStyle-Width="200" />
                <asp:BoundField DataField="ImagePath" HeaderText="ImagePath" ControlStype-CssClass="style-imagePath" SortExpression="ImagePath" />
            </Columns>
            <HeaderStyle CssClass="header" />
            <RowStyle CssClass="rows" />
        </asp:GridView>
                </td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style10">&nbsp;</td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
        </table>
        <br />
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ImageUserConnectionString1 %>" SelectCommand="SELECT * FROM [Image_Details]">
        </asp:SqlDataSource>
        <br />
        <br />
        <br />
        <br />
        <br />
        <br />
        <br />
        <br />
        <br />
                <br />
    </form>
</body>
</html>
