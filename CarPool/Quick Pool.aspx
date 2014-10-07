<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Quick Pool.aspx.cs" Inherits="Quick_Pool" %>

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
document.body.style.background="url('watermark1.jpg') opacity:0.3 filter:alpha(opacity=40) white left no-repeat fixed"

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

</script>








<table cellpadding='0' cellspacing='0' align='center' style='width: 100%;'>
<tr>


<td valign='top'>

<div class='content'>

    







<div style='float: left; width: 453px; padding: 0px 10px 0px 10px;'>

    <div style='padding: 5px 10px 0px 0px; width: 877px;'>
    <asp:ObjectDataSource ID="ObjectDataSource2" runat="server" 
                        OldValuesParameterFormatString="original_{0}" SelectMethod="GetCar" 
                        TypeName="Pool">
                        <SelectParameters>
                            <asp:SessionParameter DefaultValue="2" Name="Emp_id" SessionField="LogIn" 
                                Type="Int32" />
                        </SelectParameters>
                    </asp:ObjectDataSource>
                    <asp:ObjectDataSource ID="ObjectDataSource1" runat="server" 
                        OldValuesParameterFormatString="original_{0}" SelectMethod="GetLocation" 
                        TypeName="Pool"></asp:ObjectDataSource></div>
  <div class='portal_spacer'>
<asp:Label ID="lblQuickPoolHead" runat="server" Font-Bold="True" 
                    Font-Size="Large" Style="top: 137px;
                    left: 408px; position: absolute; height: 16px; width: 138px; bottom: 447px;" 
                    Text="Quick Pool "></asp:Label>
<asp:Label ID="lblShowId" runat="server" 
                    style="top: 151px; left: 613px; position: absolute; height: 16px; width: 108px" 
                    Text="You are Login as" ForeColor="#FF3300"></asp:Label>


<asp:Label ID="lblQuickId" runat="server" 
                    style="top: 150px; position: absolute; height: 15px; width: 49px; left: 729px;" 
                    Text="Label" ForeColor="#FF3300"></asp:Label>


<asp:LinkButton ID="lblQuickPoolLogOut" runat="server" onclick="LinkButton1_Click" 
                    
          style="top: 149px; left: 805px; position: absolute; width: 60px; height: 15px;" 
          ForeColor="Red" CausesValidation="False">Log Out</asp:LinkButton>

<asp:Label ID="lblAskPool" runat="server" Font-Bold="True" Font-Size="Medium" Style="top: 277px;
                            left: 578px; position: absolute; height: 17px; width: 329px" 
                            Text="Want To Pool your Car in Quick Pooling"></asp:Label>

<asp:LinkButton ID="LinkButton1" runat="server" Font-Bold="True" 
                            Font-Size="Medium" ForeColor="Red" onclick="LinkButton1_Click1" 
                            
          style="top: 327px; left: 582px; position: absolute; height: 15px; width: 163px">Register Your Car</asp:LinkButton>

<asp:LinkButton ID="LinkButton2" runat="server" Font-Bold="True" 
                        ForeColor="Red" onclick="LinkButton2_Click" 
                        
          
          style="top: 375px; left: 585px; position: absolute; height: 14px; width: 137px; ">Add New Stoppage </asp:LinkButton>

<asp:Label ID="lblLocation" runat="server" Font-Bold="True" Font-Size="Medium" Style="top: 487px;
                            left: 555px; position: absolute; height: 16px; width: 160px" 
                            Text="Select the Location" Visible="False"></asp:Label>

<asp:DropDownList ID="ddlCarid" runat="server" 
                        DataSourceID="ObjectDataSource2" DataTextField="Car_Registration_Id" 
                        DataValueField="Car_Registration_Id" 
                        
                        style="top: 426px; left: 751px; position: absolute; height: 23px; width: 124px" 
                        Visible="False" AutoPostBack="True" 
          onselectedindexchanged="DropDownList1_SelectedIndexChanged1">
                    </asp:DropDownList>


<asp:Label ID="lblCarid" runat="server" Font-Bold="True" Font-Size="Medium" Style="top: 434px;
                            left: 565px; position: absolute; height: 16px; width: 134px; bottom: 186px;" 
                            Text="Select Car Id" Visible="False"></asp:Label>

<asp:DropDownList ID="ddlNewlocation" runat="server" 
                        DataSourceID="ObjectDataSource1" DataTextField="Location" 
                        DataValueField="Location" 
                        
                        style="top: 487px; left: 749px; position: absolute; height: 29px; width: 124px" 
                        Visible="False" AutoPostBack="True" 
          onselectedindexchanged="DropDownList2_SelectedIndexChanged">
                    </asp:DropDownList>

<asp:Button ID="btnAddStoppage" runat="server" onclick="Button1_Click" 
                        style="cursor:pointer;cursor:hand;top: 570px; left: 752px; position: absolute; height: 26px; width: 99px" 
                        Text="Button" Visible="False" />
    
  
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
    <asp:Label ID="lblSelectLocation" runat="server" Font-Bold="True" 
        Font-Size="Medium" Style="top: 203px;
                            left: 44px; position: absolute; height: 19px; width: 184px" 
                            Text="Select the Location"></asp:Label>
    <asp:DropDownList ID="ddlLocation" runat="server" 
                    DataSourceID="ObjectDataSource1" DataTextField="Location" 
                    DataValueField="Location" 
                    style="z-index: 1; left: 259px; top: 194px; position: absolute" 
                    AutoPostBack="True" 
                    onselectedindexchanged="DropDownList1_SelectedIndexChanged" 
                    AppendDataBoundItems="True">
                    <asp:ListItem>--Select--</asp:ListItem>
                    <asp:ListItem Value="AllLocations">All Locations</asp:ListItem>
                </asp:DropDownList><br />
    <br />
    <br />
    <br />
    <br />
    
  <div style="overflow: auto; height: 251px; width: 424px; z-index: 1; left: 38px; top: 348px; position: absolute; right: 489px; margin-top: 0px;">
    <asp:GridView ID="gvQuickPool" runat="server" Style="top: 14px; left: 1px; position: absolute;
                    height: 185px; width: 399px" CellPadding="4" 
        onselectedindexchanged="GridView1_SelectedIndexChanged" BackColor="White" 
        BorderColor="#CC9966" BorderStyle="None" BorderWidth="1px">
                    <RowStyle BackColor="White" ForeColor="#330099" />
                    <Columns>
                        <asp:ButtonField ButtonType="Button" CommandName="Select" Text="Book This" />
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
