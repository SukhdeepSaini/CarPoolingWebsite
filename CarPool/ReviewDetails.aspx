<%@ Page Language="C#" AutoEventWireup="true" CodeFile="ReviewDetails.aspx.cs" Inherits="ReviewDetails" %>
<%@ Register Assembly="AjaxControlToolkit" Namespace="AjaxControlToolkit" TagPrefix="asp" %>
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
document.body.style.background="url('watermark1.jpg') opacity:0.3 filter:alpha(opacity=40) white right bottom no-repeat fixed"

</script>
	<form id="form1" runat="server">
	<asp:ScriptManager ID="ScriptManager1" runat="server">
    </asp:ScriptManager>
    
    <asp:ConfirmButtonExtender ID="cbe" runat="server"
    TargetControlID="btnBooking"
    ConfirmText="Are you sure you want to Book This Car?"
     />
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
    <asp:Label ID="lblMyProfile" runat="server" Font-Bold="True" Font-Size="X-Large" 
                    style="top: 152px; left: 376px; position: absolute; height: 17px; width: 200px" 
                    Text="Review Details"></asp:Label>
 <asp:Label ID="lblRegistrationId" runat="server" 
                    
                    style="z-index: 1; left: 29px; top: 255px; position: absolute; height: 17px; right: 617px;" 
                    Text="CarRegistrationId" Font-Bold="True" Font-Size="Small"></asp:Label>
                <asp:Label ID="lblReviewStoppageName" runat="server" 
                    style="z-index: 1; left: 328px; top: 256px; position: absolute" 
                    Text="StoppageName" Font-Bold="True"></asp:Label>
                <asp:Label ID="lblDateStart" runat="server" 
                    
                    style="z-index: 1; left: 33px; top: 371px; position: absolute; right: 687px;" 
                    Text="DateStartPool" Font-Bold="True"></asp:Label>
                <asp:Label ID="lblReviewStatus" runat="server" 
                    
                    style="z-index: 1; left: 621px; top: 376px; position: absolute; height: 15px;" 
                    Text="Status" Font-Bold="True"></asp:Label>
<asp:LinkButton ID="LinkButton1" runat="server" onclick="LinkButton1_Click" 
                            
        
        style="top: 156px; left: 816px; position: absolute; height: 15px; width: 60px" 
        CausesValidation="False">Log Out</asp:LinkButton>
  <asp:Label ID="lblDateEndPool" runat="server" 
                        
                        style="z-index: 1; left: 338px; top: 374px; position: absolute; right: 607px; height: 15px;" 
                        Text="DateEndPool" Font-Bold="True"></asp:Label>
                <asp:Label ID="Label17" runat="server" 
                    style="top: 155px; left: 736px; position: absolute; height: 15px; width: 49px" 
                    Text="Label"></asp:Label>
                        <asp:TextBox ID="txtReviewArrivalTime" runat="server" 
                            
        style="z-index: 1; left: 772px; top: 255px; position: absolute; height: 23px;"></asp:TextBox>
                <asp:Label ID="lblReviewTime" runat="server" 
                    style="z-index: 1; left: 613px; top: 255px; position: absolute; height: 15px;" 
                                 Text="MorningArrivalTime" Font-Bold="True"></asp:Label>
              
                             <asp:Button ID="lblCancel" runat="server" 
                                 style="cursor:pointer;cursor:hand;z-index: 1; left: 293px; right:598px; top: 493px; position: absolute; height: 26px" 
                                 Text="Cancel" onclick="lblCancel_Click" />
                             <asp:Button ID="btnBooking" runat="server" 
                                 style="cursor:pointer;cursor:hand;z-index: 1; left: 102px; top: 497px; position: absolute; " 
                                 Text="ContinueBooking" 
        onclick="btnBooking_Click" />

  <asp:Label ID="Label18" runat="server" 
                    style="top: 155px; left: 608px; position: absolute; height: 16px; width: 108px" 
                    Text="You are Login as"></asp:Label>
                        <asp:TextBox ID="txtStatus" runat="server" 
                            
        style="z-index: 1; top: 373px; position: absolute; left: 775px; height: 20px;"></asp:TextBox>
                        <asp:TextBox ID="txtDateEnd" runat="server" 
                            style="z-index: 1; left: 443px; top: 376px; position: absolute; height: 19px" 
                                 ontextchanged="TextBox5_TextChanged"></asp:TextBox>
                        <asp:TextBox ID="txtReviewCarId" runat="server" 
                            
                                 
        style="z-index: 1; left: 164px; top: 254px; position: absolute; right: 659px; height: 22px"></asp:TextBox>
                        <asp:TextBox ID="txtReviewStoppageName" runat="server" 
                            
        style="z-index: 1; left: 442px; top: 251px; position: absolute"></asp:TextBox>
                        <asp:TextBox ID="txtDateStart" runat="server" 
                            style="z-index: 1; left: 172px; top: 370px; position: absolute; height: 20px" 
                                 ontextchanged="TextBox2_TextChanged"></asp:TextBox>


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



	

</body>
</html>

</form>
</body>
</html>



