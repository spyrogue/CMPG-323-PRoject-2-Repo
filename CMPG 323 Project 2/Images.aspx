<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Images.aspx.cs" Inherits="CMPG_323_Project_2.Images" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">

        .auto-style3 {
            text-align:center;
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
        font-size: 20px;
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

        .shareBtn{
            background: url(\Images\Share.png) no-repeat 0 0;
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
            height:30px;
            width:150px;
            border-radius:20px;
            border-width:4px;
            text-align:center;
            border-color:cornflowerblue;
            border-style:solid;
        }

        .auto-style9:hover{
            border-radius:20px;
            border-width:4px;
            height:40px;
            width:160px;
        }

        .auto-style10 {
            width: 921px;
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

        .style-imagePath{
            display:none;
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

        .dropdown
        {
            height:30px;
            width:70px;
            border-radius:20px;
            border-width:4px;
            text-align:center;
            border-color:white;
            border-style:solid;
        }

        .lbl
        {
            font-size:large;
            font-family:sans-serif;
        }

        .auto-style12 {
            height: 47px;
        }
        </style>
</head>
<body style="height: 246px">
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
        <br />
        <br />
        <table style="width:100%;">
            <tr>
                <td class="auto-style10" rowspan="2">
                    <asp:GridView ID="GridView1" runat="server" AllowSorting="True" AutoGenerateColumns="False" DataKeyNames="ImageId" DataSourceID="SqlDataSource1" EmptyDataText="There are no data records to display." CssClass="mydatagrid" HeaderStyle-CssClass="header" RowStyle-CssClass="rows" OnSelectedIndexChanged="GridView1_SelectedIndexChanged2">
                        <Columns>
                            <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" ShowSelectButton="True" SelectText="Share" />
                            <asp:BoundField DataField="ImageId" HeaderText="ImageId" ReadOnly="True" SortExpression="ImageId" />
                            <asp:BoundField DataField="ImageName" HeaderText="ImageName" SortExpression="ImageName" />
                            <asp:BoundField DataField="Album_Id" HeaderText="Album_Id" SortExpression="Album_Id" />
                            <asp:BoundField DataField="Captured_By" HeaderText="Captured_By" SortExpression="Captured_By" />
                            <asp:BoundField DataField="Tags" HeaderText="Tags" SortExpression="Tags" />
                            <asp:BoundField DataField="Location" HeaderText="Location" SortExpression="Location" />
                            <asp:BoundField DataField="User" HeaderText="User" SortExpression="User" />
                            <asp:ImageField DataImageUrlField="Image" HeaderText="Image" SortExpression="Image" ControlStyle-Height="200" ControlStyle-Width="200">
<ControlStyle Height="200px" Width="200px"></ControlStyle>
                            </asp:ImageField>
                            <asp:BoundField DataField="ImagePath" HeaderText="ImagePath" SortExpression="ImagePath" HeaderStyle-CssClass="style-imagePath" ItemStyle-CssClass="style-imagePath">
<HeaderStyle CssClass="style-imagePath"></HeaderStyle>

<ItemStyle CssClass="style-imagePath"></ItemStyle>
                            </asp:BoundField>
                        </Columns>

<HeaderStyle CssClass="header"></HeaderStyle>

<RowStyle CssClass="rows"></RowStyle>
                    </asp:GridView>
                    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ImageUserConnectionString1 %>" DeleteCommand="DELETE FROM [Image_Details] WHERE [ImageId] = @ImageId" InsertCommand="INSERT INTO [Image_Details] ([ImageName], [Album Id], [Captured By], [Tags], [Location], [User], [Image], [ImagePath]) VALUES (@ImageName, @Album_Id, @Captured_By, @Tags, @Location, @User, @Image, @ImagePath)" SelectCommand="SELECT [ImageId], [ImageName], [Album Id] AS Album_Id, [Captured By] AS Captured_By, [Tags], [Location], [User], [Image], [ImagePath] FROM [Image_Details]" UpdateCommand="UPDATE [Image_Details] SET [ImageName] = @ImageName, [Album Id] = @Album_Id, [Captured By] = @Captured_By, [Tags] = @Tags, [Location] = @Location, [User] = @User, [Image] = @Image, [ImagePath] = @ImagePath WHERE [ImageId] = @ImageId">
                        <DeleteParameters>
                            <asp:Parameter Name="ImageId" Type="Int32" />
                        </DeleteParameters>
                        <InsertParameters>
                            <asp:Parameter Name="ImageName" Type="String" />
                            <asp:Parameter Name="Album_Id" Type="Int32" />
                            <asp:Parameter Name="Captured_By" Type="String" />
                            <asp:Parameter Name="Tags" Type="String" />
                            <asp:Parameter Name="Location" Type="String" />
                            <asp:Parameter Name="User" Type="String" />
                            <asp:Parameter Name="Image" Type="String" />
                            <asp:Parameter Name="ImagePath" Type="String" />
                        </InsertParameters>
                        <UpdateParameters>
                            <asp:Parameter Name="ImageName" Type="String" />
                            <asp:Parameter Name="Album_Id" Type="Int32" />
                            <asp:Parameter Name="Captured_By" Type="String" />
                            <asp:Parameter Name="Tags" Type="String" />
                            <asp:Parameter Name="Location" Type="String" />
                            <asp:Parameter Name="User" Type="String" />
                            <asp:Parameter Name="Image" Type="String" />
                            <asp:Parameter Name="ImagePath" Type="String" />
                            <asp:Parameter Name="ImageId" Type="Int32" />
                        </UpdateParameters>
                    </asp:SqlDataSource>
                </td>
                <td class="auto-style12">
        <asp:TextBox ID="TextBox1" placeholder="Image Name" runat="server" OnTextChanged="TextBox1_TextChanged" CssClass="textboxStyle"></asp:TextBox>
                    <br />
                    <br />
                    <asp:Label ID="Label1" runat="server" Text="Album ID" CssClass="lbl"></asp:Label>
        <asp:DropDownList ID="DropDownList2" runat="server" DataSourceID="SqlDataSource2" DataTextField="Album Id" DataValueField="Album Id" CssClass="dropdown">
        </asp:DropDownList>
                    <br />
        <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:ImageUserConnectionString1 %>" SelectCommand="SELECT * FROM [Albums]"></asp:SqlDataSource>
                    <br />
        <asp:TextBox ID="TextBox3" placeholder="Captured By" runat="server" CssClass="textboxStyle"></asp:TextBox>
                    <br />
                    <br />
        <asp:TextBox ID="TextBox4" placeholder="Tags" runat="server" CssClass="textboxStyle"></asp:TextBox>
                    <br />
                    <br />
        <asp:TextBox ID="TextBox5" placeholder="Location" runat="server" CssClass="textboxStyle"></asp:TextBox>
                    <br />
                    <br />
        <asp:TextBox ID="TextBox6" placeholder="User" runat="server" CssClass="textboxStyle"></asp:TextBox>
                    <br />
                    <br />
    <asp:FileUpload ID="fileupload" runat="server" CssClass="auto-style3" />  
                    <br />
                    <br />
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:Button ID="upload" runat="server" Font-Bold="true" Text="Upload" OnClick="upload_Click" CssClass="auto-style9" />  
                    <br />
                </td>
            </tr>
            <tr>
                <td>
                    &nbsp;</td>
            </tr>
            </table>
    </form>
</body>
</html>
