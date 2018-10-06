<%@ Page Language="C#" AutoEventWireup="true" CodeFile="insert the symptoms.aspx.cs" Inherits="insert_the_symptoms" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style1 {
            width: 100%;
            height: 299px;
        }
        .auto-style2 {
            width: 391px;
        }
        .auto-style3 {
            width: 391px;
            height: 119px;
        }
        .auto-style4 {
            height: 119px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    
        <table class="auto-style1">
            <tr>
                <td class="auto-style3">symptoms name</td>
                <td class="auto-style4">
                    <asp:TextBox ID="TextBox1" runat="server" Height="37px" Width="369px"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style2">disease</td>
                <td>
                    <asp:DropDownList ID="DropDownList1" runat="server" DataSourceID="SqlDataSource1" DataTextField="DiseaseName" DataValueField="DiseaseName" Height="45px" Width="384px">
                    </asp:DropDownList>
                    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:RoboDocConnectionString %>" SelectCommand="SELECT [DiseaseName] FROM [Disease]"></asp:SqlDataSource>
                </td>
            </tr>
            <tr>
                <td class="auto-style2">
                    <asp:Button ID="Button1" runat="server" Height="47px" OnClick="Button1_Click" Text="insert" Width="135px" />
                </td>
                <td>&nbsp;</td>
            </tr>
        </table>
    
    </div>
    </form>
</body>
</html>
