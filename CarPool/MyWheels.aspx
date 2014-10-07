<%@ Page Language="C#" AutoEventWireup="true" CodeFile="MyWheels.aspx.cs" Inherits="MyWheels" %>

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
document.body.style.background="url('watermark1.jpg') opacity:0.3 filter:alpha(opacity=40) white center no-repeat fixed"

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
    </div>
  <div class='portal_spacer'>
    
  <asp:Label ID="Label1" runat="server" Font-Bold="True" Font-Size="Large" Style="top: 131px;
                    left: 405px; position: absolute; height: 35px; width: 118px" 
                    Text="My Wheels"></asp:Label>
                <asp:Label ID="Label4" runat="server" 
                    style="top: 171px; left: 555px; position: absolute; height: 16px; width: 108px" 
                    Text="You are Login as" ForeColor="Red"></asp:Label>
                <asp:Label ID="Label5" runat="server" 
                    style="top: 171px; left: 687px; position: absolute; height: 15px; width: 70px" 
                    Text="Label" ForeColor="Red"></asp:Label>
                <asp:LinkButton ID="LinkButton1" runat="server" onclick="LinkButton1_Click" 
                    style="top: 173px; left: 779px; position: absolute; width: 60px" 
          ForeColor="#FF3300" CausesValidation="False">Log Out</asp:LinkButton>
                    <asp:LinkButton ID="LinkButton2" runat="server" Font-Bold="True" 
                            Font-Size="Medium" ForeColor="Red" onclick="LinkButton1_Click1" 
                            
                    
          style="top: 232px; left: 614px; position: absolute; height: 15px; width: 163px">Register Your Car</asp:LinkButton>
           
           <asp:LinkButton ID="LinkButton3" runat="server" Font-Bold="True" 
                            Font-Size="Medium" ForeColor="Red" onclick="LinkButton3_Click1" 
                            
                    
                    style="top: 228px; left: 71px; position: absolute; width: 221px">Update Your Car Details</asp:LinkButton> 
    </div>

    
  
</div>











<div style='clear: both;'>
    <br />
   <div style="overflow: auto; height: 193px; width: 561px; z-index: 1; left: 172px; top: 318px; position: absolute;">
   <asp:GridView ID="GridView1" runat="server" 
                            onselectedindexchanged="GridView1_SelectedIndexChanged1" 
                            
                            
        style="top: 13px; left: 8px; position: absolute; height: 199px; width: 516px" 
        BackColor="White" BorderColor="#CC9966" BorderStyle="None" BorderWidth="1px" 
        CellPadding="4" AutoGenerateColumns="False">
                            <RowStyle BackColor="White" ForeColor="#330099" />
                            <Columns>
                                <asp:ButtonField ButtonType="Button" CommandName="Select" HeaderText="Booking" 
                                    ShowHeader="True" Text="Show Booking" />
                                <asp:BoundField DataField="Car_Registration_Id" HeaderText="Registration No." />
                                <asp:BoundField DataField="Car_Name" HeaderText="Car Name" />
                                <asp:BoundField DataField="Date_Start_Pool" HeaderText="Pool Start Date" />
                                <asp:BoundField DataField="Date_End_Pool" HeaderText="Pool End Date" />
                                <asp:BoundField DataField="Available_seats" HeaderText="Available Seats" />
                            </Columns>
                            <FooterStyle BackColor="#FFFFCC" ForeColor="#330099" />
                            <PagerStyle BackColor="#FFFFCC" ForeColor="#330099" HorizontalAlign="Center" />
                            <SelectedRowStyle BackColor="#FFCC66" Font-Bold="True" ForeColor="#663399" />
                            <HeaderStyle BackColor="#990000" Font-Bold="True" ForeColor="#FFFFCC" />
                        </asp:GridView>
                        </div>
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

