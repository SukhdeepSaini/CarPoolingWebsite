<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Forgot Password.aspx.cs" Inherits="Forgot_Password" %>

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
document.body.style.background="url('watermark1.jpg') opacity:2.0 filter:alpha(opacity=40) white right bottom no-repeat fixed"

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

<div class='content'>

    







<div style='float: left; width: 453px; padding: 0px 10px 0px 10px;'>

    <div style='padding: 5px 10px 0px 0px; width: 877px;'>
  <div class='portal_spacer'>   <br />
      <br />
    <br />
    <asp:Label ID="Label1" runat="server" 
        Font-Bold="True" Font-Size="Medium" 
                                              
                                              style="z-index: 1; left: 172px; top: 224px; position: absolute; width: 183px;" 
                                              Text="Enter Your EmpId"></asp:Label>
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
                                         
                                          <asp:Label ID="lblEmpId" runat="server" 
        Font-Bold="True" Font-Size="Medium" 
                                              
                                              style="z-index: 1; left: 407px; top: 146px; position: absolute; width: 183px; height: 26px; right: 361px;" 
                                              Text="Forgot Password"></asp:Label>
                                          <asp:Label ID="lblSecurityQues" 
        runat="server" Font-Bold="True" Font-Size="Medium" 
                                              style="z-index: 1; left: 176px; top: 293px; position: absolute; height: 25px; width: 145px;" 
                                              Text="Security Question"></asp:Label>
                    
                                          <asp:Label ID="lblSecurityAns" runat="server" 
                                              style="top: 364px; left: 171px; position: absolute; height: 18px; width: 141px" 
                                              Text="Security Answer" 
        Font-Bold="True" Font-Size="Medium"></asp:Label>
                    
                                          <asp:Button ID="btnClickMe" 
        runat="server" onclick="Button1_Click" 
                                              style="cursor:pointer;cursor:hand;top: 216px; left: 674px; position: absolute; height: 26px; width: 73px" 
                                              Text="Click Me" />
                                              <asp:Button ID="btnClick" 
        runat="server" onclick="Button2_Click" 
                                              style="cursor:pointer;cursor:hand;top: 454px; left: 415px; position: absolute; height: 26px; width: 104px" 
                                              Text="Click Me" />
                    
                                          <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
                                              ControlToValidate="txtEmpId" ErrorMessage="EnterTheEmployeeId" 
                                              
                                              style="z-index: 1; left: 555px; top: 225px; position: absolute; bottom: 390px;"></asp:RequiredFieldValidator>
    <asp:TextBox ID="txtEmpId" runat="server" 
                    
                    
                    
        style="z-index: 1; left: 430px; top: 223px; position: absolute; height: 21px; width: 121px; bottom: 335px;"></asp:TextBox>
                <asp:TextBox ID="txtSecurityQues" runat="server" ReadOnly="True" 
                    
                    
                    
                    
                    
                    
        
        
        style="z-index: 1; left: 432px; top: 287px; position: absolute; right: 118px; width: 401px; height: 24px;"></asp:TextBox>
                
                <asp:TextBox ID="txtSecurityAns" runat="server" 
                    
                    
        style="top: 365px; left: 430px; position: absolute; height: 22px; width: 128px"></asp:TextBox>
                
                <asp:RequiredFieldValidator ID="rfvSecAns" runat="server" 
                    ControlToValidate="txtSecurityAns" ErrorMessage="EnterSecurityAnswer" 
                    
        
        style="z-index: 1; left: 598px; top: 365px; position: absolute; height: 18px;"></asp:RequiredFieldValidator>
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


