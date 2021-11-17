<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="CMPG_323_Project_2.Login" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style1 {
            width: 100%;
        }
        .auto-style2 {
            text-align: center;
            font-size: 4.2rem;
            font-weight: 100;
        }
        .auto-style3 {
            text-align: center;
            width: 824px;
        }
        .auto-style4 {
            width: 824px;
        }
        .auto-style5 {
            text-align: center;
            width: 233px;
        }
        .auto-style6 {
            width: 233px;
        }
        .auto-style7 {
            text-align: right;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <table class="auto-style1">
            <tr>
                <td class="auto-style2" colspan="5">Login</td>
            </tr>
            <tr>
                <td class="auto-style4">&nbsp;</td>
                <td class="auto-style6">&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style3">&nbsp;</td>
                <td class="auto-style5">
                    <asp:TextBox ID="EmailTextBox" placeholder="Email Address" runat="server" Width="190px" OnTextChanged="EmailTextBox_TextChanged"></asp:TextBox>
                </td>
                <td>
                    <asp:RegularExpressionValidator ID="EmailValidator" runat="server" ControlToValidate="EmailTextBox" ErrorMessage="Please enter a correct email address" ForeColor="Red" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"></asp:RegularExpressionValidator>
                </td>
            </tr>
            <tr>
                <td class="auto-style3">&nbsp;</td>
                <td class="auto-style5">
                    <asp:TextBox ID="UsernameTextBox" placeholder="Username" runat="server" Width="190px"></asp:TextBox>
                </td>
                <td>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="UsernameTextBox" ErrorMessage="Plese enter a valid password" ForeColor="Red"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td class="auto-style3">&nbsp;</td>
                <td class="auto-style5">
                    <asp:TextBox ID="PasswordTextBox" placeholder="Password" runat="server" Width="190px"></asp:TextBox>
                </td>
                <td>
                    <asp:RequiredFieldValidator ID="EmailRequiredFieldValidator" runat="server" ControlToValidate="PasswordTextBox" ErrorMessage="Plese enter a valid password" ForeColor="Red"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td class="auto-style4">&nbsp;</td>
                <td class="auto-style5">
                    <asp:Label ID="ErrorName" runat="server"></asp:Label>
                </td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style4">&nbsp;</td>
                <td class="auto-style5">
                    <asp:Button ID="LoginBtn" runat="server" Text="Login" Width="82px" OnClick="LoginBtn_Click" />
                </td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style4">&nbsp;</td>
                <td class="auto-style6">&nbsp;</td>
                <td class="auto-style7">Dont have an account
                    <asp:HyperLink ID="RegisterHyperLink" runat="server" NavigateUrl="~/Register.aspx">Register</asp:HyperLink>
                    here</td>
            </tr>
        </table>
    </form>
</body>
</html>