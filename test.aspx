<%@ Page Language="C#" AutoEventWireup="true" CodeFile="test.aspx.cs" Inherits="test" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style1 {
            width: 494px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
    <table style="width: 100%; height: 585px;">
        <tr>
            <td class="auto-style1">Medicine name </td>
            <td>
                <asp:TextBox ID="TextBox1" runat="server" Height="40px" Width="305px"></asp:TextBox>
            </td>
            
        </tr>
        <tr>
            <td class="auto-style1">Active ingredient</td>
            <td>
                <asp:TextBox ID="TextBox2" runat="server" Height="40px" Width="305px"></asp:TextBox>
            </td>
            
        </tr>
        <tr>
            <td class="auto-style1">insert image</td>
            <td><asp:FileUpload ID="FileUpload1" runat="server" /></td>
            
        </tr>
        <tr>
            <td class="auto-style1">Price (only the number without any words like EGP or pound)</td>
            <td>
                <asp:TextBox ID="TextBox3" runat="server" Height="40px" Width="305px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="auto-style1">Company Name</td>
            <td>
                <asp:TextBox ID="TextBox4" runat="server" Height="40px" Width="305px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="auto-style1">Disease name</td>
            <td>
                <asp:DropDownList ID="DropDownList1" runat="server" DataSourceID="SqlDataSource1" DataTextField="DiseaseName" DataValueField="DiseaseName">
                </asp:DropDownList>
                <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:RoboDocConnectionString %>" SelectCommand="SELECT [DiseaseName] FROM [Disease]"></asp:SqlDataSource>
            </td>
        </tr>
        <tr>
            <td class="auto-style1">
                <asp:Button ID="Button1" runat="server" Height="49px" OnClick="Button1_Click" Text="Button" Width="157px" />
            </td>
            <td>&nbsp;</td>
        </tr>
    </table>
    </form>
</body>
</html>
