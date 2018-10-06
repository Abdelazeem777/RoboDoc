<%@ Page Language="C#" AutoEventWireup="true" UnobtrusiveValidationMode="none" CodeFile="logIn.aspx.cs" Inherits="logIn" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>RoboDoc Sign in</title>
    <meta charset="utf-8"/>
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link rel="stylesheet"type="text/css" href="css/font-awesome.min.css">
    <link  type="text/css" rel="stylesheet" href="css/cssForSignUp.css"/>
</head>
<body>
    <form id="form" runat="server">
    <div class="container" >
     <div class="allLogo">
         <p class="signUp">Sign in</p>
        <img class="logo" src="images.png" >
        <p class="logoName">RoboDoc</p>
     </div>
     <div class="signInInfo" style="height: 340px; margin-top: 5px;">
         <asp:Label ID="Label5" runat="server" Text="Label" CssClass="lable">E-mail:</asp:Label>
         <br />
         <asp:TextBox ID="TextBox4" runat="server" TextMode="Email" CssClass="textbox"></asp:TextBox><br />
         <br />
         <asp:Label ID="Label7" runat="server" Text="Label" CssClass="lable">Password:</asp:Label>
          <asp:RequiredFieldValidator ID="RequiredFieldValidator7" runat="server" ErrorMessage="*This Field is required" CssClass="Validator" ControlToValidate="TextBox6"></asp:RequiredFieldValidator>
         <br />
         <asp:TextBox ID="TextBox6" runat="server" TextMode="Password" CssClass="textbox"></asp:TextBox><br />
        <br />
         <asp:Button ID="Button2" OnClick="Button2_Click" runat="server" Text="Sign in"  style="margin: 0px;margin-left: 40%; padding-bottom: 10px;" />
       
          <p style="display:inline-block;margin:4px 10px 5px 222px;font-size:20px;" >Don't have an account?</p><a href="signUp.aspx" style="font-size:20px;text-decoration:none;color:blue;display:inline-block;">Sign up</a>
     </div>
        <p class="signWith">OR Sign in with</p>
         <div class="socialIcon">
            
            <a href="https://www.facebook.com/v2.12/dialog/oauth?client_id={192217298224059}&redirect_uri={http://RoboDoc.com/}&state={state-param}" class="fa fa-facebook" target="_blank"></a>
            <a href="https://www.linkedin.com/in/abdelazeem-kuratem-41065a145/" class="fa fa-google" target="_blank"></a>
            <a href="https://twitter.com/abdelazeem263" class="fa fa-twitter" target="_blank"></a>
        </div>
        
    </div>
    </form>
  
    <script src="js/jsForLogIn.js"></script>
</body>
</html>
