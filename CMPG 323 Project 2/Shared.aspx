<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Shared.aspx.cs" Inherits="CMPG_323_Project_2.Shared" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
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
        font-family: Times New Roman;
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

        .auto-style1 {
            width: 645px;
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

        .style-imagePath{
            display:none;
        }
    </style>
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
                <asp:LinkButton ID="LinkButton1" runat="server" ForeColor="White" Font-Underline="false" Visible="False" OnClick="LinkButton1_Click">Logout</asp:LinkButton>
            </td>
        </tr>
    </table>
        <br />
        <table style="width:100%;">
            <tr>
                <td class="auto-style1">&nbsp;</td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style1">
                    <asp:GridView ID="GridView1" runat="server" AllowSorting="True" AutoGenerateColumns="False" DataKeyNames="SharedImageId" DataSourceID="SqlDataSource1" EmptyDataText="There are no data records to display." CssClass="mydatagrid" HeaderStyle-CssClass="header" RowStyle-CssClass="rows" OnSelectedIndexChanged="GridView1_SelectedIndexChanged1">
                        <Columns>
                            <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" ShowSelectButton="True" SelectText="Download" />
                            <asp:BoundField DataField="SharedImageId" HeaderText="SharedImageId" ReadOnly="True" SortExpression="SharedImageId" />
                            <asp:BoundField DataField="ImageName" HeaderText="ImageName" SortExpression="ImageName" />
                            <asp:BoundField DataField="Captured_By" HeaderText="Captured_By" SortExpression="Captured_By" />
                            <asp:BoundField DataField="Tags" HeaderText="Tags" SortExpression="Tags" />
                            <asp:BoundField DataField="Location" HeaderText="Location" SortExpression="Location" />
                            <asp:BoundField DataField="Shared_From" HeaderText="Shared_From" SortExpression="Shared_From" />
                            <asp:ImageField DataImageUrlField="Image" HeaderText="Image" SortExpression="Image" ControlStyle-Height="200" ControlStyle-Width="200">
<ControlStyle Height="200px" Width="200px"></ControlStyle>
                            </asp:ImageField>
                            <asp:BoundField DataField="ImagePath" HeaderText="ImagePath" SortExpression="ImagePath" HeaderStyle-CssClass="style-imagePath" ItemStyle-CssClass="style-imagePath" >

<HeaderStyle CssClass="style-imagePath"></HeaderStyle>

<ItemStyle CssClass="style-imagePath"></ItemStyle>
                            </asp:BoundField>

                        </Columns>

<HeaderStyle CssClass="header"></HeaderStyle>

<RowStyle CssClass="rows"></RowStyle>
                    </asp:GridView>
                    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ImageUserConnectionString1 %>" DeleteCommand="DELETE FROM [Shared] WHERE [SharedImageId] = @SharedImageId" InsertCommand="INSERT INTO [Shared] ([ImageName], [Captured By], [Tags], [Location], [Shared From], [Image], [ImagePath]) VALUES (@ImageName, @Captured_By, @Tags, @Location, @Shared_From, @Image, @ImagePath)" ProviderName="<%$ ConnectionStrings:ImageUserConnectionString1.ProviderName %>" SelectCommand="SELECT [SharedImageId], [ImageName], [Captured By] AS Captured_By, [Tags], [Location], [Shared From] AS Shared_From, [Image], [ImagePath] FROM [Shared]" UpdateCommand="UPDATE [Shared] SET [ImageName] = @ImageName, [Captured By] = @Captured_By, [Tags] = @Tags, [Location] = @Location, [Shared From] = @Shared_From, [Image] = @Image, [ImagePath] = @ImagePath WHERE [SharedImageId] = @SharedImageId">
                        <DeleteParameters>
                            <asp:Parameter Name="SharedImageId" Type="Int32" />
                        </DeleteParameters>
                        <InsertParameters>
                            <asp:Parameter Name="ImageName" Type="String" />
                            <asp:Parameter Name="Captured_By" Type="String" />
                            <asp:Parameter Name="Tags" Type="String" />
                            <asp:Parameter Name="Location" Type="String" />
                            <asp:Parameter Name="Shared_From" Type="String" />
                            <asp:Parameter Name="Image" Type="String" />
                            <asp:Parameter Name="ImagePath" Type="String" />
                        </InsertParameters>
                        <UpdateParameters>
                            <asp:Parameter Name="ImageName" Type="String" />
                            <asp:Parameter Name="Captured_By" Type="String" />
                            <asp:Parameter Name="Tags" Type="String" />
                            <asp:Parameter Name="Location" Type="String" />
                            <asp:Parameter Name="Shared_From" Type="String" />
                            <asp:Parameter Name="Image" Type="String" />
                            <asp:Parameter Name="ImagePath" Type="String" />
                            <asp:Parameter Name="SharedImageId" Type="Int32" />
                        </UpdateParameters>
                    </asp:SqlDataSource>
                </td>
                <td>
                    &nbsp;</td>
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
        <br />
    </form>
</body>
</html>
