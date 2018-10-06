<%@ Page Language="C#" AutoEventWireup="true" CodeFile="insert disease.aspx.cs" Inherits="insert_disease" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style1 {
            width: 559px;
        }
        .auto-style2 {
            width: 559px;
            height: 105px;
        }
        .auto-style3 {
            height: 105px;
        }
        .auto-style4 {
            width: 559px;
            height: 89px;
        }
        .auto-style5 {
            height: 89px;
        }
        .auto-style6 {
            width: 559px;
            height: 122px;
        }
        .auto-style7 {
            height: 122px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    
        <table style="width: 100%; height: 481px;">
            <tr>
                <td class="auto-style2">disease name (dont forget the capital character in the first)</td>
                <td class="auto-style3">
                    <asp:TextBox ID="TextBox1" runat="server" Height="32px" Width="223px"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style4">system</td>
                <td class="auto-style5">
                    <asp:DropDownList ID="DropDownList1" runat="server" DataSourceID="SqlDataSource1" DataTextField="SystemName" DataValueField="SystemName" Height="38px" Width="228px">
                    </asp:DropDownList>
                    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:RoboDocConnectionString %>" SelectCommand="SELECT [SystemName] FROM [HumanSystem]"></asp:SqlDataSource>
                </td>
            </tr>
            <tr>
                <td class="auto-style6">organ</td>
                <td class="auto-style7">
                    <asp:DropDownList ID="DropDownList2" runat="server" DataSourceID="SqlDataSource3" DataTextField="OrganName" DataValueField="OrganName" Height="36px" Width="229px">
                    </asp:DropDownList>
                    <asp:SqlDataSource ID="SqlDataSource3" runat="server" ConnectionString="<%$ ConnectionStrings:RoboDocConnectionString %>" SelectCommand="SELECT [OrganName] FROM [Organ]"></asp:SqlDataSource>
                </td>
            </tr>
            <tr>
                <td class="auto-style1">
                    <asp:Button ID="Button1" runat="server" Height="47px" OnClick="Button1_Click" Text="Button" Width="109px" />
                </td>
                <td>&nbsp;</td>
            </tr>
        </table>
    
    </div>
    </form>
</body>
</html>
