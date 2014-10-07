<%@ Page Language="C#" AutoEventWireup="true" CodeFile="LogIn.aspx.cs" Inherits="LogIn" %>

<!DOCTYPE html 
	PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" 
	"http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns='http://www.w3.org/1999/xhtml'>
<head>
<title>CoolPool.Com</title>



<link rel="stylesheet" href="styles_global.css" title="stylesheet" type="text/css" />  
<link rel="stylesheet" href="styles.css" title="stylesheet" type="text/css" />  
<script type="text/javascript" language="javascript">
    javascript: window.history.forward(1);
    </script>
<script type="text/javascript" src="mootools12-min.js"></script>







<style type='text/css'></style>

</head>
<body>
<script language="JavaScript1.2">



if (document.all||document.getElementById)
document.body.style.background="url('watermark1.jpg') opacity:0.3 filter:alpha(opacity=40) white right no-repeat fixed"

</script>
	<form id="form1" runat="server">
<iframe id='ajaxframe' name='ajaxframe' style='display: none;' src='javascript:false;'></iframe>

<div id="smoothbox_container"></div>



<table cellpadding='0' cellspacing='0'  align='center'>
<tr>
<td>



<div>

    
    <table cellpadding='0' cellspacing='0' style='width: 100%; padding-top: 20px;' align='center'>
  <tr>
  <td align='left' valign='bottom' class="style2">
      <a href="Home.aspx" >
    <img src="logocarpool.png" border='0' style="margin-top: 0px" /></a>
  </td>
 <td align='left' valign='bottom'>
 <marquee  scrollamount="5" 
direction="right" loop="true" style="width: 700px; " scrollamount="30" 
        scrolldelay="40" onMouseOver="this.stop();" onMouseOut="this.start();" 
        id="MARQUEE1" style="text-align: left; "  class="scrolling" >
    <img src="buggy.gif" border='0' /></marquee>
  </td>
  </tr>
  </table>

</div>

</div>
<table cellpadding='0' cellspacing='0' style='width: 100%;' align='center'>
<tr>
<td nowrap='nowrap' class='top_menu'>
  <div class='top_menu_link_container'>
    <div class='top_menu_link'>
      <a href="Home.aspx" class='top_menu_item'>
        Home      </a>
    </div>
  </div>
  
  <div class='top_menu_link_container'>
    <div class='top_menu_link'>
      <a href="Quick Pool.aspx" class='top_menu_item'>
        QuickPool     </a>
    </div>
  </div>
  <div class='top_menu_link_container'>
    <div class='top_menu_link'>
      <a href="Find A Trip.aspx" class='top_menu_item'>
        Find A trip
      </a>
    </div>
  </div>
  <div class='top_menu_link_container'>
    <div class='top_menu_link'>
      <a href="Myprofile.aspx" class='top_menu_item'>
        My Profile
      </a>
    </div>
  </div>

        <div class='top_menu_link_container'>
      <div class='top_menu_link'>
        <a href="MyWheels.aspx" class='top_menu_item'>
          MyWheels      </a>
      </div>
    </div>
       <div class='top_menu_link_container'>
      <div class='top_menu_link'>
        <a href="MyTrip.aspx" class='top_menu_item'>
          MyTrip      </a>
      </div>
    </div>
     <div class='top_menu_link_container'>
      <div class='top_menu_link'>
        <a href="Help.aspx" class='top_menu_item'>
          Help     </a>
      </div>
    </div>
  <div class='top_menu_link_container_end'>
    <div class='top_menu_link'>
      &nbsp;
    </div>
  </div>

</td>
<td nowrap='nowrap' align='right' class='top_menu2'>

        <div class='top_menu_link_container_end' style='float: right;'><div class='top_menu_link'><a href="Register.aspx" class='top_menu_item'>Signup</a></div></div>
    <div class='top_menu_link_container' style='float: right;'><div class='top_menu_link'><a href="LogIn.aspx" class='top_menu_item'>Login</a></div></div>
  
</td>
</tr>
</table>









<table cellpadding='0' cellspacing='0' align='center' style='width: 100%;'>
<tr>


<td valign='top'>
<div class='page_header'></br>Account Login</div>

Welcome to the CoolPool! If you already have an account, you can login below.<br>If you don't have an account, you can <a href="Register.aspx">sign up here</a>!<br />
<br />
<div class='content'>

    







<div style='float: left; width: 453px; padding: 0px 10px 0px 10px;'>

    <div style='padding: 5px 10px 0px 0px; width: 877px;'>
  <div class='portal_spacer'>
 
    </div>

    
  
    </div>

    
  
</div>











<div style='clear: both;'>
    <br />
    <br />
    <br />
    <br />
    <br />
    <br />
    <br />
    <br />
    <br />
    <br />
    <br />
    <br />
    <br />
    <br />
    
    <br />
    <br />
    <br />
    <br />
    <br />
    <br />
    <br />
    
                <asp:HyperLink ID="hlSignUp" runat="server" NavigateUrl="~/Register.aspx" 
                            
                            style="top: 451px; left: 363px; position: absolute; height: 19px; width: 39px" 
                            ForeColor="#CC0000">Sign Up</asp:HyperLink>
                            <asp:HyperLink ID="hlForgot" runat="server" NavigateUrl="~/Forgot Password.aspx" 
                            
                            style="top: 448px; left: 459px; position: absolute; height: 19px; width: 140px" 
                            ForeColor="#CC0000">Forgot Your Password</asp:HyperLink>
                            <img src="help16.gif" border='0' 
        
        
        style="top: 450px; left: 435px; position: absolute; height: 16px; width: 14px"  />
                             <asp:Label ID="lblUsreName" runat="server" 
        Font-Bold="True" Font-Size="Medium" 
                            style="top: 230px; left: 240px; position: absolute; height: 16px; width: 134px" 
                            Text="UserName"></asp:Label>
                        <asp:TextBox ID="txtLogInUserName" runat="server" 
                            
                            
                            
                            
                            
                            
                            
        
        style="top: 230px; left: 412px; position: absolute; height: 22px; width: 128px; right: 411px;"></asp:TextBox>
                        <asp:TextBox ID="txtLogInPassword" runat="server" 
                            
                            
                            
                            
                            style="top: 305px; left: 414px; position: absolute; height: 23px; width: 128px" 
                            TextMode="Password"></asp:TextBox>
                            <asp:Label ID="lblLogInPassword" runat="server" 
        Font-Bold="True" Font-Size="Medium" 
                            style="top:307px; left: 236px; position: absolute; height: 16px; width: 134px" 
                            Text="Password"></asp:Label>
                        <asp:RequiredFieldValidator ID="rfvPassword" runat="server" 
                            ErrorMessage="Please Enter the User Name" 
                            
                            style="z-index: 1; left: 570px; top: 305px; position: absolute; width: 149px" 
                            ControlToValidate="txtLogInPassword"></asp:RequiredFieldValidator>
                        <asp:RequiredFieldValidator ID="rfvUserName" runat="server" 
                            ControlToValidate="txtLogInUserName" ErrorMessage="Please Enter the User Name" 
                            
        style="z-index: 1; left: 572px; top: 230px; position: absolute; width: 149px"></asp:RequiredFieldValidator>
                             <asp:Button ID="btnLogIn" runat="server" onclick="Button1_Click1" 
                            style="cursor:pointer;cursor:hand;top: 381px; left: 418px; position: absolute; height: 26px; width: 105px" 
                            Text="Log In" />
                               
      
    <br />
    <br />
    <br />
    <br />
    <br />
    <br />
    <br />
    <br />
    <br />
    </div>


    
</div>


</td>
</tr>
</table>


<div class='copyright'>
  Copyright 2010 &nbsp;-&nbsp;
  <a href="Help.aspx" class='copyright'>FAQ</a> &nbsp;-&nbsp;
  
  <a href= "ContactUs.aspx"class='copyright'>Contact Us</a>
  
      </div>



</td>
</tr>
</table>







</form>
</body>
</html>


