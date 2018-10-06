<%@ Page Title="" Language="C#" MasterPageFile="~/medicine.master" AutoEventWireup="true" CodeFile="medicineInfo.aspx.cs" Inherits="_Default" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
     <link rel="stylesheet"type="text/css" href="css/font-awesome.min.css">
    <link  type="text/css" rel="stylesheet" href="css/mycss.css"/>
     <style type="text/css">
         .auto-style4 {
             width: 100%;
             height: 564px;
         }
         .auto-style7 {
             width: 366px;
         }
         .auto-style8 {
             width: 423px;
         }
         .auto-style13 {
             width: 366px;
             height: 54px;
         }
         .auto-style15 {
             width: 366px;
             height: 65px;
         }
         .auto-style16 {
             width: 423px;
             height: 57px;
         }
         .auto-style17 {
             width: 366px;
             height: 57px;
         }
         .auto-style18 {
             width: 423px;
             height: 48px;
         }
         .auto-style19 {
             width: 366px;
             height: 48px;
         }
     </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <br /><br />
    <br />
    <div style="height:700px;">



        <table class="auto-style4" style="margin-top:50px;">
            <tr>
                <td class="auto-style8">
                    <div>
                        &nbsp;&nbsp;&nbsp;&nbsp;
                        Medicine:</div>
                </td>
                <td class="auto-style7"><asp:Label ID="Label1" runat="server" Text="Label"></asp:Label></td>
                <td rowspan="4">
                    <asp:Image ID="Image1" runat="server" Height="300px" Width="350px" />
                </td>
            </tr>
            <tr>
                <td class="auto-style16">
                    &nbsp;&nbsp;&nbsp;&nbsp;
                    Disease:</td>
                <td class="auto-style17">
                    <asp:Label ID="Label2" runat="server" Text="Label"></asp:Label>
                </td>
            </tr>
            <tr>
                <td class="auto-style8">
                    <div>
                        &nbsp;&nbsp;&nbsp;&nbsp;
                        Active Ingredient:</div>
                </td>
                <td class="auto-style13">
                    <asp:Label ID="Label3" runat="server" Text="Label"></asp:Label>
                </td>
            </tr>
            <tr>
                <td class="auto-style8">
                    <div>
                        &nbsp;&nbsp;&nbsp;&nbsp;
                        Company:</div>
                </td>
                <td class="auto-style15">
                    <asp:Label ID="Label4" runat="server" Text="Label"></asp:Label>
                </td>
            </tr>
            <tr>
                <td class="auto-style18">
                    <div>
                        &nbsp;&nbsp;&nbsp;&nbsp;
                        Price:</div>
                </td>
                <td class="auto-style19">
                    <asp:Label ID="Label5" runat="server" Text="Label"></asp:Label>
                </td>
                <td rowspan="2">&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style8">&nbsp;</td>
                <td class="auto-style7"><br />
                    <br />
                    <asp:Button ID="Button1" runat="server" Text="Buy Now" />
                </td>
            </tr>
        </table>

    </div>
    
</asp:Content>

