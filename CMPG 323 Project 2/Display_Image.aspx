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
    </style>
</head>  
<body>  
    <form id="form1" runat="server">  
    <div>  
        <table class="auto-style1">
            <tr>
                <td class="auto-style2">  
    <asp:FileUpload ID="fileupload" runat="server" CssClass="auto-style3" />  
                </td>
                <td>  
        <asp:Button ID="upload" runat="server" Font-Bold="true" Text="Upload" OnClick="upload_Click" />  
                </td>
            </tr>
            <tr>
                <td class="auto-style4">
        <asp:Button ID="Refresh" runat="server" OnClick="Display_Click" Text="Refresh table" />
                </td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style5" colspan="2">  
            <asp:GridView runat="server" ID="gdImage" HeaderStyle-BackColor="LightBlue"  AutoGenerateColumns="false">  
                <Columns>  
                    <asp:BoundField DataField="ImageId" HeaderText="ImageId" />  
                    <asp:BoundField DataField="ImageName" HeaderText="ImageName" />  
                    <asp:ImageField DataImageUrlField="ImagePath" HeaderText="ImagePath" ControlStyle-Height="500" ControlStyle-Width="500"></asp:ImageField>                     
                </Columns>  
            </asp:GridView>  
                </td>
            </tr>
        </table>
    </div>  
    </form>
</body>  
</html> 