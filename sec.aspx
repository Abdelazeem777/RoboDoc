<%@ Page Language="C#" AutoEventWireup="true" CodeFile="sec.aspx.cs" Inherits="sec" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style1 {
            width: 73%;
            height: 257px;
        }
        .auto-style2 {
            width: 373px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    
        <table class="auto-style1">
            <tr>
                <td class="auto-style2">username</td>
                <td>
                    <asp:TextBox ID="TextBox1" runat="server" Height="44px" Width="283px"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style2">password</td>
                <td>
                    <asp:TextBox ID="TextBox2" runat="server" Height="44px" TextMode="Password" Width="283px"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style2">
                    <asp:Button ID="Button1" runat="server" Height="41px" OnClick="Button1_Click1" Text="Button" Width="103px" />
                </td>
                <td>&nbsp;</td>
            </tr>
        </table>
    
    </div>
    </form>
</body>
</html>
