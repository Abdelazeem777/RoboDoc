<%@ Page Title="" Language="C#" MasterPageFile="~/medicine.master" AutoEventWireup="true" CodeFile="InsertMedicine.aspx.cs" Inherits="InsertMedicine" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .auto-style4 {
            width: 54%;
            height: 89px;
        }
        .auto-style5 {
            width: 54%;
            height: 86px;
        }
        .auto-style6 {
            height: 86px;
        }
        .auto-style7 {
            width: 54%;
            height: 82px;
        }
        .auto-style8 {
            height: 82px;
        }
        .auto-style10 {
            width: 54%;
            height: 92px;
        }
        .auto-style11 {
            width: 54%;
            height: 85px;
        }
        .auto-style12 {
            height: 85px;
        }
        .auto-style13 {
            height: 92px;
        }
        .auto-style14 {
            width: 54%;
            height: 84px;
        }
        .auto-style15 {
            height: 84px;
        }
        .auto-style16 {
            height: 89px;
        }
        #Button1{
     text-decoration: none;
    text-align: center;
    padding-top:8px;
    padding-bottom:6px;
    font-family: 'Times New Roman';
    width:230px;
    height:70px;
    margin-top:160px;
    font-size:25px;
    background-color:#2c2c2c;
    border-radius:20px;
    color:white;
}
 #Button1:hover {
        background-color: #247085;
    }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <br /><br /><br />

     <table style="width: 100%; height: 585px;">
        <tr>
            <td class="auto-style5">&nbsp;&nbsp;&nbsp;&nbsp; Medicine name </td>
            <td class="auto-style6">
                <asp:TextBox ID="TextBox1" runat="server" Height="40px" Width="305px"></asp:TextBox>
            </td>
            
        </tr>
        <tr>
            <td class="auto-style7">&nbsp;&nbsp;&nbsp;&nbsp; Active ingredient</td>
            <td class="auto-style8">
                <asp:TextBox ID="TextBox2" runat="server" Height="40px" Width="305px"></asp:TextBox>
            </td>
            
        </tr>
        <tr>
            <td class="auto-style11">&nbsp;&nbsp;&nbsp;&nbsp; insert image</td>
            <td class="auto-style12"><asp:FileUpload ID="FileUpload1" runat="server" /></td>
            
        </tr>
        <tr>
            <td class="auto-style10">&nbsp;&nbsp;&nbsp;&nbsp; Price (only the number without any words like EGP or pound)</td>
            <td class="auto-style13">
                <asp:TextBox ID="TextBox3" runat="server" Height="40px" Width="305px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="auto-style14">&nbsp;&nbsp;&nbsp;&nbsp; Company Name</td>
            <td class="auto-style15">
                <asp:TextBox ID="TextBox4" runat="server" Height="40px" Width="305px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="auto-style5">&nbsp;&nbsp;&nbsp;&nbsp; Disease name</td>
            <td class="auto-style6">
                <asp:DropDownList ID="DropDownList1" runat="server" DataSourceID="SqlDataSource1" DataTextField="DiseaseName" DataValueField="DiseaseName">
                </asp:DropDownList>
                <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:RoboDocConnectionString %>" SelectCommand="SELECT [DiseaseName] FROM [Disease]"></asp:SqlDataSource>
            </td>
        </tr>
        <tr>
            <td class="auto-style4">
                <asp:Button ID="Button1" runat="server" Height="49px" OnClick="Button1_Click" Text="Insert" Width="157px" />
            </td>
            <td class="auto-style16"></td>
        </tr>
    </table>
</asp:Content>

