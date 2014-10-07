<%@ Page Language="C#" AutoEventWireup="true" CodeFile="MyTrip.aspx.cs" Inherits="MyTrip" %>

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
document.body.style.background="url('watermark1.jpg') opacity:0.3 filter:alpha(opacity=40) white left  no-repeat fixed"

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
    <asp:Label ID="lblShowBookingHead" runat="server" Font-Bold="True" 
                    Font-Size="Large" Style="top: 138px;
                    left: 376px; position: absolute; height: 17px; width: 177px" 
                    Text="Show Booking"></asp:Label>
                <asp:Label ID="lblShowId" runat="server" 
                    style="top: 138px; left: 599px; position: absolute; height: 17px; width: 108px" 
                    Text="You are Login as" ForeColor="Red"></asp:Label>
                <asp:Label ID="lblId" runat="server" 
                    style="top: 140px; left: 716px; position: absolute; height: 15px; width: 49px" 
                    Text="Label" ForeColor="#FF3300"></asp:Label>
                
                <asp:LinkButton ID="lblShowLogOut" runat="server" 
                    
                    
                    style="top: 135px; left: 797px; position: absolute; height: 30px; width: 44px" 
                    onclick="lblShowLogOut_Click" ForeColor="#FF3300" 
        CausesValidation="False">Log Out</asp:LinkButton>
                    <asp:ObjectDataSource ID="ObjectDataSource1" runat="server" 
                            OldValuesParameterFormatString="original_{0}" SelectMethod="GetMyTrip" 
                            TypeName="Pool">
                            <SelectParameters>
                                <asp:SessionParameter DefaultValue="0" Name="Emp_Id" SessionField="LogIn" 
                                    Type="Int32" />
                            </SelectParameters>
                        </asp:ObjectDataSource>
    <asp:Button ID="btnActive" runat="server" onclick="Button1_Click" 
        style="top: 168px; left: 631px; position: absolute; height: 26px; width: 168px" 
        Text="My Active Bookings" />
    <br />
    <br />
    <br />
    <br />
    <br />
    <br />
    <br />
    <br />
    <br />
    <div style="overflow: auto; height: 262px; width: 644px; z-index: 1; left: 254px; top: 247px; position: absolute;">
  <asp:GridView ID="grdMyBooking" runat="server" DataSourceID="ObjectDataSource1" 
                            
                            style="top: 44px; left: 13px; position: absolute; height: 131px; width: 542px; right: 25px; z-index: 1;" 
                            CellPadding="4" 
                            PageSize="5" BackColor="White" BorderColor="#CC9966" 
        BorderStyle="None" BorderWidth="1px" AutoGenerateColumns="False" 
            onselectedindexchanged="GridView1_SelectedIndexChanged">
                            <RowStyle BackColor="White" ForeColor="#330099" />
                            <Columns>
                                <asp:BoundField DataField="Booking_Id" HeaderText="BookingId" />
                                <asp:BoundField DataField="Car_Registration_Id" HeaderText="RegistrationNo." />
                                <asp:BoundField DataField="Stoppage_Name" HeaderText="Stoppage Name" />
                                <asp:BoundField DataField="Date_Start_Booking" HeaderText="Start Date" />
                                <asp:BoundField DataField="Date_End_Booking" HeaderText="End Date" />
                            </Columns>
                            <FooterStyle BackColor="#FFFFCC" ForeColor="#330099" />
                            <PagerStyle BackColor="#FFFFCC" ForeColor="#330099" HorizontalAlign="Center" />
                            <SelectedRowStyle BackColor="#FFCC66" Font-Bold="True" ForeColor="#663399" />
                            <HeaderStyle BackColor="#990000" Font-Bold="True" ForeColor="#FFFFCC" />
                        </asp:GridView>
                  <asp:GridView ID="grdActivBooking" runat="server" Height="136px" 
            onselectedindexchanged="GridView2_SelectedIndexChanged" 
            style="margin-left: 13px; margin-top: 44px" Width="543px" 
            BackColor="White" BorderColor="#CC9966" BorderStyle="None" BorderWidth="1px" 
            CellPadding="4">
                      <RowStyle BackColor="White" ForeColor="#330099" />
                      <Columns>
                          <asp:ButtonField ButtonType="Button" CommandName="Select" Text="Cancel" />
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

