<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Map.aspx.cs" Inherits="Map" %>

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

/*
Watermark Backgound Image Script- © Dynamic Drive (www.dynamicdrive.com)
For full source code, 100's more DHTML scripts, and TOS,
visit dynamicdrive.com
*/

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

        <div class='top_menu_link_container_end' style='float: right;'></div>
    <div class='top_menu_link_container' style='float: right;'></div>
  
</td>
</tr>
</table>







<table cellpadding='0' cellspacing='0' align='center' style='width: 100%;'>
<tr>


<td valign='top'>

<div class='content'>

    







<div style='float: left; width: 453px; padding: 0px 10px 0px 10px;'>

    <div style='padding: 5px 10px 0px 0px; width: 877px;'>
  <div class='portal_spacer1'>   <br />
     <asp:Label ID="lblQuickPoolHead" runat="server" Font-Bold="True" 
                    Font-Size="Large" Style="top: 144px;
                    left: 392px; position: absolute; height: 16px; width: 176px; bottom: 362px;" 
                    Text="Map of Mysore City"></asp:Label>
    </div>

    
  
    </div>

    
  
</div>











<div style='clear: both;'>
   
    <asp:Image ID="Image1" runat="server" ImageUrl="~/Mysore.jpg" Width="912px" />
  
   
                                         
                                        
                    
                                          
   
    </div>


    
</div>


</td>
</tr>
</table>


<div class='copyright'>
  Copyright 2010 &nbsp;-&nbsp;
<a href="Help.aspx" class='copyright'>FAQ</a> &nbsp;-&nbsp;

  <a href= ""class='copyright'>Contact Us</a>
  
      </div>


</td>
</tr>
</table>



	<script type="text/javascript">
	    var gaJsHost = (("https:" == document.location.protocol) ? "https://ssl." : "http://www.");
	    document.write(unescape("%3Cscript src='" + gaJsHost + "google-analytics.com/ga.js' type='text/javascript'%3E%3C/script%3E"));
	</script>
	<script type="text/javascript">
	    try {
	        var pageTracker = _gat._getTracker("UA-10886984-1");
	        pageTracker._trackPageview();
	    } catch (err) { }</script>


</body>
</html>

</form>
</body>
</html>


