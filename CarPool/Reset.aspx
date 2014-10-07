<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Reset.aspx.cs" Inherits="Reset" %>

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
document.body.style.background="url('watermark1.jpg') opacity:0.3 filter:alpha(opacity=40) white right centre no-repeat fixed"

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
      <a href="#" >
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
      <a href="#" class='top_menu_item'>
        Home      </a>
    </div>
  </div>
  
  <div class='top_menu_link_container'>
    <div class='top_menu_link'>
      <a href="#" class='top_menu_item'>
        QuickPool     </a>
    </div>
  </div>
  <div class='top_menu_link_container'>
    <div class='top_menu_link'>
      <a href="#" class='top_menu_item'>
        Find A trip
      </a>
    </div>
  </div>
  <div class='top_menu_link_container'>
    <div class='top_menu_link'>
      <a href="#" class='top_menu_item'>
        My Profile
      </a>
    </div>
  </div>

        <div class='top_menu_link_container'>
      <div class='top_menu_link'>
        <a href="#" class='top_menu_item'>
          MyWheels      </a>
      </div>
    </div>
       <div class='top_menu_link_container'>
      <div class='top_menu_link'>
        <a href="#" class='top_menu_item'>
          MyTrip      </a>
      </div>
    </div>
     <div class='top_menu_link_container'>
      <div class='top_menu_link'>
        <a href="#" class='top_menu_item'>
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

        <div class='top_menu_link_container_end' style='float: right;'><div class='top_menu_link'></div></div>
    <div class='top_menu_link_container' style='float: right;'><div class='top_menu_link'></div></div>
  
</td>
</tr>
</table>









<table cellpadding='0' cellspacing='0' align='center' style='width: 100%;'>
<tr>


<td valign='top'>

<div class='content'>

    







<div style='float: left; width: 453px; padding: 0px 10px 0px 10px;'>

    <div style='padding: 5px 10px 0px 0px; width: 877px;'>
  <div class='portal_spacer'>
    
      <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
          ErrorMessage="Please Enter Your Password" 
          
          style="top: 300px; left: 452px; position: absolute; height: 17px; width: 155px" 
          ControlToValidate="txtPassword"></asp:RequiredFieldValidator>
          <asp:CustomValidator ID="cvUserName" runat="server" ControlToValidate="txtPassword"
                            
        ErrorMessage="Password must Contain atleast 6 characters" 
        ClientValidationFunction="CheckUserID" 
        
        
        
          style="top: 329px; left: 275px; position: absolute; height: 15px; width: 229px;"></asp:CustomValidator>
    <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" 
          ErrorMessage="Please Confirm Your Password" 
          
          style="top: 364px; left: 451px; position: absolute; height: 17px; width: 155px" 
          ControlToValidate="txtConfirm"></asp:RequiredFieldValidator>
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
    <asp:Label ID="lblSecurityAns" runat="server" 
                                              style="top: 289px; left: 96px; position: absolute; height: 18px; width: 141px" 
                                              Text="New Password" 
        Font-Bold="True" Font-Size="Medium"></asp:Label>
    <br />
    <asp:CompareValidator ID="CompareValidator1" runat="server" 
        ControlToCompare="txtPassword" ControlToValidate="txtConfirm" 
        ErrorMessage="Password Donot Match" 
        
        style="top: 415px; left: 296px; position: absolute; height: 17px; width: 120px"></asp:CompareValidator>
    <br />
    <asp:Label ID="lblConfirm" runat="server" 
                                              style="top: 370px; left: 89px; position: absolute; height: 18px; width: 172px" 
                                              Text="Confirm Password" 
        Font-Bold="True" Font-Size="Medium"></asp:Label>
        <asp:TextBox ID="txtPassword" runat="server" 
                    
                    
                    
        
        
        
        style="z-index: 1; left: 295px; top: 292px; position: absolute; height: 24px; width: 121px; bottom: 206px; right: 535px;" 
        TextMode="Password"></asp:TextBox>
    <br />
    <asp:TextBox ID="txtConfirm" runat="server" 
                    
                    
                    
        
        
        
        
        style="z-index: 1; left: 296px; top: 366px; position: absolute; height: 24px; width: 121px; bottom: 246px;" 
        TextMode="Password"></asp:TextBox>
  
    <asp:Label ID="lblShowBookHead" runat="server" Font-Bold="True" 
                    Font-Size="Large" Style="top: 157px;
                    left: 378px; position: absolute; height: 28px; width: 396px" 
                    Text="Reset Your Password"></asp:Label>
                    <asp:Label ID="Label2" runat="server" Font-Bold="True" 
                     Style="top: 227px;
                    left: 310px; position: absolute; height: 28px; width: 396px" 
                    Text="Reset Your Password First to Access the Website"></asp:Label>
                    
    <br />
    <br />
    <br />
    <br />
    <asp:Button ID="Button2" 
        runat="server" onclick="Button2_Click" 
                                              style="cursor:pointer;cursor:hand;top: 455px; left: 108px; position: absolute; height: 26px; width: 104px" 
                                              Text="Click Me" />
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
 <script language="javascript">
     function CheckUserID(source, args)
      {
         if (args.Value.length < 6)
             args.IsValid = false;
     }		
</script>
</body>
</html>
