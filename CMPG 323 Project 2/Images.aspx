<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Images.aspx.cs" Inherits="CMPG_323_Project_2.Images" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">

        .auto-style3 {
            margin-right: 0px;
        }
        .auto-style1 {
            width: 100%;
        }
        .auto-style2 {
            text-align: right;
            width: 606px;
        }
        .auto-style3 {
            margin-right: 0px;
        }
        .auto-style4 {
            width: 606px;
            text-align: center;
        }
        .auto-style5 {
            text-align: center;
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
        .auto-style6 {
            text-align: left;
            width: 606px;
        }

        form{
            background-color:powderblue;
        }
        </style>
</head>
<body style="height: 246px">
    <form id="form1" runat="server">
&nbsp;select image:
        <br />
        <asp:Label ID="Label1" runat="server" Text="Label"></asp:Label>
        <br />
        <br />
        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="ImageId" DataSourceID="SqlDataSource1" EmptyDataText="There are no data records to display." CssClass="mydatagrid" HeaderStyle-CssClass="header" RowStyle-CssClass="rows" OnSelectedIndexChanged="GridView1_SelectedIndexChanged1">
            <Columns>
                <asp:TemplateField >
                    <ItemTemplate>
                        <asp:Button ID="ShareBtn" ButtonType="Image" OnClick="ShareBtn_Click" runat="server" ImageUrl="~\Images\Share.png"/>
                    </ItemTemplate>
                </asp:TemplateField>
                <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" />
                <asp:BoundField DataField="ImageId" HeaderText="ImageId" ReadOnly="True" SortExpression="ImageId" />
                <asp:BoundField DataField="ImageName" HeaderText="ImageName" SortExpression="ImageName" />
                <asp:BoundField DataField="Album_Id" HeaderText="Album_Id" SortExpression="Album_Id" />
                <asp:BoundField DataField="Captured_By" HeaderText="Captured_By" SortExpression="Captured_By" />
                <asp:BoundField DataField="Tags" HeaderText="Tags" SortExpression="Tags" />
                <asp:BoundField DataField="Location" HeaderText="Location" SortExpression="Location" />
                <asp:BoundField DataField="User" HeaderText="User" SortExpression="User" />
                <asp:ImageField DataImageUrlField="Image" HeaderText="Image" ControlStyle-Height="200" ControlStyle-Width="200">
                <ControlStyle Height="200px" Width="200px"></ControlStyle>
                </asp:ImageField>
            </Columns>
            <HeaderStyle CssClass="header" />
            <RowStyle CssClass="rows" />
        </asp:GridView>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ImageUserConnectionString1 %>" DeleteCommand="DELETE FROM [Image_Details] WHERE [ImageId] = @ImageId" InsertCommand="INSERT INTO [Image_Details] ([ImageName], [Album Id], [Captured By], [Tags], [Location], [User], [Image]) VALUES (@ImageName, @Album_Id, @Captured_By, @Tags, @Location, @User, @Image)" SelectCommand="SELECT [ImageId], [ImageName], [Album Id] AS Album_Id, [Captured By] AS Captured_By, [Tags], [Location], [User], [Image] FROM [Image_Details]" UpdateCommand="UPDATE [Image_Details] SET [ImageName] = @ImageName, [Album Id] = @Album_Id, [Captured By] = @Captured_By, [Tags] = @Tags, [Location] = @Location, [User] = @User, [Image] = @Image WHERE [ImageId] = @ImageId">
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
            </InsertParameters>
            <UpdateParameters>
                <asp:Parameter Name="ImageName" Type="String" />
                <asp:Parameter Name="Album_Id" Type="Int32" />
                <asp:Parameter Name="Captured_By" Type="String" />
                <asp:Parameter Name="Tags" Type="String" />
                <asp:Parameter Name="Location" Type="String" />
                <asp:Parameter Name="User" Type="String" />
                <asp:Parameter Name="Image" Type="String" />
                <asp:Parameter Name="ImageId" Type="Int32" />
            </UpdateParameters>
        </asp:SqlDataSource>
        <br />
        <asp:TextBox ID="TextBox1" placeholder="Image Name" runat="server" OnTextChanged="TextBox1_TextChanged" Width="200px"></asp:TextBox>
        <br />
        <asp:TextBox ID="TextBox2" placeholder="Album Id" runat="server" Width="200px"></asp:TextBox>
        <br />
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
        <br />
        <asp:Button ID="upload" runat="server" Font-Bold="true" Text="Upload" OnClick="upload_Click" />  
                <br />
        <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="Button" />
    </form>
</body>
</html>
