<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Display_Image.aspx.cs" Inherits="CMPG_323_Project_2.Display_Image" %>

<!DOCTYPE html>  
<html xmlns="http://www.w3.org/1999/xhtml">  
<head runat="server">  
    <title></title>  
    <style type="text/css">
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
        background-color: #21a900;
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
<body>  
    <form id="form1" runat="server">  
    <div>  
        <table class="auto-style1">
            <tr>
                <td class="auto-style2">  
                    &nbsp;</td>
                <td class="auto-style6">  
    <asp:FileUpload ID="fileupload" runat="server" CssClass="auto-style3" />  
        <asp:Button ID="upload" runat="server" Font-Bold="true" Text="Upload" OnClick="upload_Click" />  
                </td>
                <td>  
                    &nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style4">
                    &nbsp;</td>
                <td class="auto-style4">
                    &nbsp;</td>
                <td>
        <asp:Button ID="Refresh" runat="server" OnClick="Display_Click" Text="Refresh table" />
                </td>
            </tr>
            <tr>
                <td class="auto-style5">  
                    &nbsp;</td>
                <td class="auto-style5" colspan="1">  
            <asp:GridView runat="server" ID="gdImage" HeaderStyle-BackColor="LightBlue"  AutoGenerateColumns="false" CssClass="mydatagrid" HeaderStyle-CssClass="header" RowStyle-CssClass="rows">  
                <Columns>  
                    <asp:BoundField DataField="ImageId" HeaderText="ImageId" />  
                    <asp:BoundField DataField="ImageName" HeaderText="ImageName" />  
                    <asp:ImageField DataImageUrlField="Image" HeaderText="Image" ControlStyle-Height="200" ControlStyle-Width="200"></asp:ImageField>                     
                </Columns>  
            </asp:GridView>  
                </td>
            </tr>
        </table>
    </div>  
    </form>
</body>  
</html> 