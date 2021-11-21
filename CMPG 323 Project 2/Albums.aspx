<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Albums.aspx.cs" Inherits="CMPG_323_Project_2.Albums" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <style type="text/css">
        .auto-style8
        {
            background-color:midnightblue;
            color:white;
            font-size:xx-large;
            font-family:sans-serif
        }
        </style>
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <table class="auto-style8">
        <tr>
            <td class="auto-style2">Photo Album</td>
            <td class="auto-style7">
                <asp:HyperLink ID="HyperLink2" runat="server" NavigateUrl="~/Images.aspx" ForeColor="White">Manage images</asp:HyperLink>
            </td>
            <td class="auto-style1">
                <asp:HyperLink ID="HyperLink3" runat="server" NavigateUrl="~/Albums.aspx" ForeColor="White">Manage albums</asp:HyperLink>
            </td>
            <td class="auto-style4">
                <asp:HyperLink ID="HyperLink4" runat="server" NavigateUrl="~/Shared.aspx" ForeColor="White">Shared images</asp:HyperLink>
            </td>
            <td class="auto-style5">&nbsp;</td>
            <td class="login">
                <asp:HyperLink ID="HyperLink5" runat="server" NavigateUrl="~/Login.aspx" ForeColor="White">Login</asp:HyperLink>
            </td>
            <td class="register">
                <asp:HyperLink ID="HyperLink6" runat="server" NavigateUrl="~/Register.aspx" ForeColor="White">Register</asp:HyperLink>
            </td>
        </tr>
    </table>
        <div>
            Albums<br />
            <br />
            <asp:Button ID="Button2" runat="server" OnClick="Button2_Click1" Text="Store user" />
            <br />
            <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="Album_Id" DataSourceID="SqlDataSource1" EmptyDataText="There are no data records to display.">
                <Columns>
                    <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" />
                    <asp:BoundField DataField="Album_Id" HeaderText="Album_Id" SortExpression="Album_Id" />
                    <asp:BoundField DataField="Album_Name" HeaderText="Album_Name" SortExpression="Album_Name" />
                    <asp:BoundField DataField="User" HeaderText="User" SortExpression="User" />
                </Columns>
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
            <br />
            <asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl="images.aspx">view images</asp:HyperLink>
            <br />
            <br />
&nbsp;&nbsp;<asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="Insert" />
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
&nbsp;&nbsp;&nbsp;<asp:TextBox ID="TextBox2" runat="server"></asp:TextBox>
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            &nbsp;&nbsp;&nbsp;&nbsp;
            <asp:Label ID="Label1" runat="server" Text="Label"></asp:Label>
        </div>
    </form>
</body>
</html>
