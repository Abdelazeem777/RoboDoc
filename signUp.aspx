<%@ Page Language="C#" AutoEventWireup="true" UnobtrusiveValidationMode="none" CodeFile="signUp.aspx.cs" Inherits="signUp" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>RoboDoc Sign up</title>
    <meta charset="utf-8"/>
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link rel="stylesheet"type="text/css" href="css/font-awesome.min.css">
    <link  type="text/css" rel="stylesheet" href="css/cssForSignUp.css"/>
</head>
<body>
    <form id="form" runat="server">
    <div class="container">
     <div class="allLogo">
         <p class="signUp">Sign up</p>
        <img class="logo" src="images.png" >
        <p class="logoName">RoboDoc</p>
     </div>
        <div class="step" >
            <p id="stepPara">Step 1</p>
        </div>
        <div class="signUpInfo">
         <div id ="div1">
            <asp:Label ID="Label1" runat="server" Text="Label" CssClass="lable">First name:</asp:Label>
         <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ErrorMessage="*This Field is required" CssClass="Validator" ControlToValidate="TextBox1"></asp:RequiredFieldValidator>
         <br /> 
         <asp:TextBox ID="TextBox1" runat="server" CssClass="textbox"></asp:TextBox><br />
         <asp:Label ID="Label2" runat="server" Text="Label" CssClass="lable">Last name:</asp:Label>
          <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ErrorMessage="*This Field is required" CssClass="Validator" ControlToValidate="TextBox2"></asp:RequiredFieldValidator>
         <br />
         <asp:TextBox ID="TextBox2" runat="server" CssClass="textbox"></asp:TextBox><br />
         <asp:Label ID="Label3" runat="server" Text="Label" CssClass="lable">Birth date:</asp:Label>
          <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ErrorMessage="*This Field is required" CssClass="Validator" ControlToValidate="TextBox3"></asp:RequiredFieldValidator>
         <br />
         <asp:TextBox ID="TextBox3" runat="server" TextMode="Date" CssClass="textbox"></asp:TextBox><br />
         <asp:Label ID="Label4" runat="server" Text="Label" CssClass="lable">Gender:</asp:Label>
          <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ErrorMessage="*This Field is required" CssClass="Validator" ControlToValidate="DropDownList1"></asp:RequiredFieldValidator>
         <br />
         <asp:DropDownList ID="DropDownList1" runat="server" CssClass="dropDown">
             <asp:ListItem>Male</asp:ListItem>
             <asp:ListItem>Female</asp:ListItem>
         </asp:DropDownList><br />
         
         <asp:Label ID="Label5" runat="server" Text="Label" CssClass="lable">Address:</asp:Label><br/>

            <asp:TextBox ID="TextBox4" runat="server"  placeholder="Country" CssClass="textboxadd"></asp:TextBox>
            <asp:TextBox ID="TextBox6" runat="server"  placeholder="City" CssClass="textboxadd"></asp:TextBox>
            <asp:TextBox ID="TextBox7" runat="server"  placeholder="Street" CssClass="textboxadd"></asp:TextBox><br />
             </div>

            <div id ="div2">                
                <asp:Label ID="Label7" runat="server" Text="Label" CssClass="lable">E-mail:</asp:Label>
               
                <asp:TextBox ID="TextBox8" runat="server" TextMode="Email" CssClass="textbox"></asp:TextBox><br />
                <asp:Label ID="Label6" runat="server" Text="Label" CssClass="lable">Phone number:</asp:Label>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" ErrorMessage="*This Field is required" CssClass="Validator" ControlToValidate="TextBox5"></asp:RequiredFieldValidator>
                <br />
                <asp:TextBox ID="TextBox5" runat="server" TextMode="Phone" CssClass="textbox"></asp:TextBox><br />
                <asp:Label ID="Label8" runat="server" Text="Label" CssClass="lable">Password:</asp:Label>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator7" runat="server" ErrorMessage="*This Field is required" CssClass="Validator" ControlToValidate="TextBox9"></asp:RequiredFieldValidator>
                <br />
                <asp:TextBox ID="TextBox9" runat="server" TextMode="Password" CssClass="textbox"></asp:TextBox><br />
                <asp:Label ID="Label9" runat="server" Text="Label" CssClass="lable">Confirm password:</asp:Label>
                <asp:CompareValidator ID="CompareValidator1" runat="server" ErrorMessage="*Password doesn't match" CssClass="Validator" ControlToCompare="TextBox10" ControlToValidate="TextBox9"></asp:CompareValidator>
                <br />
                <asp:TextBox ID="TextBox10" runat="server" TextMode="Password" CssClass="textbox"></asp:TextBox><br /><br />
            </div>
            <div id="div3">
            <asp:Label ID="Label10" runat="server" Text="Label" CssClass="lable">Any old Disease:</asp:Label>
         
         <br />
                <asp:DropDownList ID="DropDownList2" CssClass="textbox" runat="server" DataSourceID="SqlDataSource1" DataTextField="DiseaseName" DataValueField="DiseaseName"></asp:DropDownList>
            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:RoboDocConnectionString %>" SelectCommand="SELECT [DiseaseName] FROM [Disease]"></asp:SqlDataSource>
         <asp:Label ID="Label11" runat="server" Text="Label" CssClass="lable">Smaoking:</asp:Label>
         <br />
         <asp:CheckBox ID="CheckBox1" runat="server"  Text="Yes" Height="50px" Width="150px" Font-Size="X-Large" /><br />
         <asp:Label ID="Label12" runat="server" Text="Label" CssClass="lable">Weight:</asp:Label>
         <asp:RequiredFieldValidator ID="RequiredFieldValidator9" runat="server" ErrorMessage="*This Field is required" CssClass="Validator" ControlToValidate="TextBox1"></asp:RequiredFieldValidator>
         <br />
         <asp:TextBox ID="TextBox13" runat="server" TextMode="Number" CssClass="textbox"></asp:TextBox><br />
                 <asp:Label ID="Label13" runat="server" Text="Label" CssClass="lable">Martial Status:</asp:Label>
         <asp:RequiredFieldValidator ID="RequiredFieldValidator10" runat="server" ErrorMessage="*This Field is required" CssClass="Validator" ControlToValidate="TextBox1"></asp:RequiredFieldValidator>
         <br />
         <asp:TextBox ID="TextBox14" runat="server" CssClass="textbox"></asp:TextBox><br />
            </div>
           
        <div style="height:125px;"> 
         
        <a id="linkBack" style="height:50px" onclick="back()">Back</a>
         <asp:Button ID="Button1" ClientIDMode="Inherit" runat="server" Text="Sign up" OnClick="Button1_Click1" />
         <a id="linkNext" style="height:50px" onclick="next()">Next</a> <br />
        <p style="display:inline-block;margin:0px 10px 10px 240px;font-size:20px;" >Have an account?</p><a href="logIn.aspx" style="font-size:20px;text-decoration:none;color:blue;display:inline-block;">Log in</a>
                </div>
     </div>
        
       
         
        <p class="signWith">OR Sign up with :</p>
         <div class="socialIcon">
            
            <a href="https://www.facebook.com/v2.12/dialog/oauth?client_id={192217298224059}&redirect_uri={http://RoboDoc.com/}&state={state-param}" class="fa fa-facebook" target="_blank"></a>
            <a href="https://www.linkedin.com/in/abdelazeem-kuratem-41065a145/" class="fa fa-google" target="_blank"></a>
            <a href="https://twitter.com/abdelazeem263" class="fa fa-twitter" target="_blank"></a>
        </div>
        
    </div>
    </form>
    <script src="js/jsForSignUp.js"></script>
</body>
</html>
