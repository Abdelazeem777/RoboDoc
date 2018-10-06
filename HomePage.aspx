<%@ Page Language="C#" AutoEventWireup="true" CodeFile="HomePage.aspx.cs" Inherits="HomePage" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>RoboDoc</title>
    <meta charset="utf-8"/>
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link rel="stylesheet"type="text/css" href="css/font-awesome.min.css">
    <link  type="text/css" rel="stylesheet" href="css/mycss.css"/>


    <style type="text/css">
        .auto-style1 {
            width: 100%;
            height: 115px;
        }
        .auto-style2 {
            width: 476px;
        }
        .auto-style3 {
            width: 454px;
        }
    </style>


</head>
<body>
    <form id="form1" runat="server">
<div id="main" class="main"> 
    <header >
    <div class="menuBar">
        <div class="containerOfOptions" onclick="myFunction(this)">
            <div class="bar1"></div>
            <div class="bar2"></div>
            <div class="bar3"></div>
        </div> 
       
        <div class="allLogo">
        <img class="logo" src="images.png" >
        <p class="logoName">RoboDoc</p>
        </div>
         <div class="dropdown">
            <div class="fa fa-user" style="float:right;padding:7px;font-size: 27px;margin:5px 10px 0px 1292px;"></div>
            <div class="dropdown-content" >
                <asp:Label ID="userName" runat="server" Text=""></asp:Label>
                <a id="logOut" style="float:left;  border-right:1px solid black;border-left:0px;  " href="accountInfo.aspx">My account</a>
                <a id="logOut" href="logIn.aspx">Log out</a>
          </div>
        </div>

       
    </div>
    </header>
    

    <aside class="sideBar" id="sideBar">
        <a href="HomePage.aspx">Home</a>
        <a href="InsertMedicine.aspx">New medicine</a>
        <a href="accountInfo.aspx">My Account</a>
        <a href="logIn.aspx">Sign out</a>
    </aside>
    <section id="section">
    <div class="content">
       <div class="firstInContainer" >
           <div class="welcome">
                <p class="p1" id="p1" >Welcome</p>
                <p class="p2" id="p2">to</p>
                <p class="p3" id="p3">RoboDoc</p>
           </div>
        </div>
        <div class="mainContent">
            <div>
               <p>What did you feel ??</p>
                   <table class="auto-style1">
                   <tr>
                       <td class="auto-style2">Human System</td>
                       <td class="auto-style3">Organ</td>
                       <td>Symptoms</td>
                   </tr>
                   <tr>
                       <td class="auto-style2">
                           <asp:DropDownList ID="DropDownList1" runat="server" DataSourceID="SqlDataSource1" DataTextField="SystemName"  DataValueField="SystemName" Height="50px" Width="242px">
                           </asp:DropDownList>
                           <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:RoboDocConnectionString %>" SelectCommand="SELECT [SystemName] FROM [HumanSystem]"></asp:SqlDataSource>
                       </td>
                       <td class="auto-style3">
                           <asp:DropDownList ID="DropDownList2" runat="server" DataSourceID="SqlDataSource2" DataTextField="OrganName" DataValueField="OrganName" Height="50px" Width="242px">
                           </asp:DropDownList>
                           <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:RoboDocConnectionString %>" SelectCommand="SELECT [OrganName] FROM [Organ]" OnSelecting="SqlDataSource2_Selecting">
                           </asp:SqlDataSource>
                       </td>
                       <td>
                           <asp:DropDownList ID="DropDownList3" runat="server" DataSourceID="SqlDataSource3" DataTextField="SymptomsName" DataValueField="SymptomsName" Height="50px" Width="242px">
                           </asp:DropDownList>
                           <asp:SqlDataSource ID="SqlDataSource3" runat="server" ConnectionString="<%$ ConnectionStrings:RoboDocConnectionString %>" SelectCommand="SELECT [SymptomsName] FROM [SymptomsOfDisease]"></asp:SqlDataSource>
                       </td>
                   </tr>
                   </table>
                <asp:Button ID="buFind" runat="server" Text="Find your Treatment" OnClick="buFind_Click" />
            </div>


        </div>
    </div>
    </section>
    <footer>
        <div class="contact">
            <p>Contact with us:</p>
        </div>
        <div class="socialIcon">
            
            <a href="https://www.facebook.com/abdelazeem.kuratem" class="fa fa-facebook" target="_blank"></a>
            <a href="https://www.linkedin.com/in/abdelazeem-kuratem-41065a145/" class="fa fa-linkedin" target="_blank"></a>
            <a href="https://twitter.com/abdelazeem263" class="fa fa-twitter" target="_blank"></a>
        </div>
        <div class="copyright">
            All rights for <sup> ©</sup>RoboDoc.Inc
        </div>

    </footer>
</div>
    
    <script type="text/javascript" src="jquery-3.3.1.js"></script>
    <script type="text/javascript" src="js/MyJavaScript.js"></script>
    <script>

        $(document).ready(function () {
            $("#p1").fadeIn(3000);
            $("#p2").fadeIn(3000);
            $("#p3").fadeIn(3000);
        });
    </script>

    </form>

</body>
</html>

