<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Report.aspx.cs" Inherits="Report" %>

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
document.body.style.background="url('watermark1.jpg') opacity:0.3 filter:alpha(opacity=40) white center bottom no-repeat fixed"

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
    <br /><asp:TextBox ID="txtFareStoppage" runat="server" 
                    
        style="z-index: 1; left: 780px; top: 207px; position: absolute"></asp:TextBox>
                <asp:TextBox ID="txtFareEmpId" runat="server" 
                    
        style="z-index: 1; left: 457px; top: 207px; position: absolute"></asp:TextBox>
                <asp:TextBox ID="txtDaysOfBooking" runat="server" ReadOnly="True" 
                    
        style="z-index: 1; left: 785px; top: 335px; position: absolute"></asp:TextBox>
                <asp:TextBox ID="txtFare" runat="server" ReadOnly="True" 
                    
        style="z-index: 1; left: 459px; top: 340px; position: absolute"></asp:TextBox>
                <asp:TextBox ID="txtFareStatus" runat="server" 
                    
        style="z-index: 1; left: 190px; top: 336px; position: absolute"></asp:TextBox>
                <asp:TextBox ID="txtFareBookingId" runat="server" ReadOnly="True" 
                    
                    
        style="z-index: 1; left: 197px; top: 202px; position: absolute; "></asp:TextBox>
    
    <br />
    <br />
    <br />
    <br />
                                          <asp:Label ID="lblDaysOfBooking" 
        runat="server" Font-Bold="True" 
                                              Font-Size="Medium" 
                                              style="z-index: 1; left: 622px; top: 343px; position: absolute; height: 19px" 
                                              Text="DaysOfBooking"></asp:Label>
                                          <asp:Label ID="lblFare" runat="server" 
        Font-Bold="True" Font-Size="Medium" 
                                              style="z-index: 1; left: 369px; top: 342px; position: absolute; height: 19px" 
                                              Text="Fare"></asp:Label>
                                          <asp:Label ID="lblFareHead" 
        runat="server" Font-Bold="True" Font-Size="X-Large" 
                                              style="z-index: 1; left: 410px; top: 142px; position: absolute; height: 26px;" 
                                              Text="FareDetails"></asp:Label>
                                              <asp:Label ID="Label16" runat="server" 
                    style="top: 142px; left: 613px; position: absolute; height: 16px; width: 108px" 
                    Text="You are Login as" ForeColor="Red"></asp:Label>
                <asp:Label ID="Label17" runat="server" 
                    style="top: 144px; left: 737px; position: absolute; height: 14px; width: 49px" 
                    Text="Label" ForeColor="Red"></asp:Label>
                    <asp:LinkButton ID="LinkButton1" runat="server" onclick="LinkButton1_Click" 
                            
        style="top: 143px; left: 823px; position: absolute; height: 15px; width: 60px" 
        ForeColor="Red" CausesValidation="False">Log Out</asp:LinkButton>
                                          <asp:Label ID="lblFareStatus" 
        runat="server" Font-Bold="True" 
                                              Font-Size="Medium" 
                                              style="z-index: 1; left: 79px; top: 337px; position: absolute; height: 16px; right: 676px" 
                                              Text="Status"></asp:Label>
                                          <asp:Label ID="lblFareStoppage" 
        runat="server" Font-Bold="True" 
                                              Font-Size="Medium" 
                                              style="z-index: 1; left: 626px; top: 207px; position: absolute; height: 24px;" 
                                              Text="StoppageName"></asp:Label>
                                          <asp:Label ID="lblEmpId" runat="server" 
        Font-Bold="True" Font-Size="Medium" 
                                              
        style="z-index: 1; left: 379px; top: 209px; position: absolute; height: 16px;" 
        Text="EmpId"></asp:Label>
                                          <asp:Label ID="lblBookingId" 
        runat="server" Font-Bold="True" Font-Size="Medium" 
                                              style="z-index: 1; left: 86px; top: 206px; position: absolute; height: 15px" 
                                              Text="BookingId"></asp:Label>
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


