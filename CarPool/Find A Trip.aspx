<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Find A Trip.aspx.cs" Inherits="Find_A_Trip" %>

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
<script type="text/javascript" src="http://ajax.googleapis.com/ajax/libs/jquery/1.3.2/jquery.min.js"></script>

<link rel="stylesheet" type="text/css" href="ddimgtooltip.css" />

<style type="text/css">



#dhtmlpointer{
position:absolute;
left: -300px;
z-index: 101;
visibility: hidden;
}

</style>
<script type="text/javascript" src="mootools12-min.js"></script>







<style type='text/css'>    
    .style2
    {
        width: 225px;
    }
</style>

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
<asp:Label ID="lblQuickPoolHead" runat="server" Font-Bold="True" 
                    Font-Size="Large" Style="top: 137px;
                    left: 408px; position: absolute; height: 16px; width: 138px; bottom: 447px;" 
                    Text="Find A Trip"></asp:Label>

  
    </div>

    
  
</div>











<div style='clear: both;'>
<div style="overflow: auto; height: 256px; width: 508px; z-index: 1; left: 434px; top: 341px; position: absolute;">
<asp:GridView ID="grdFindAllTrip" runat="server" CellPadding="4" 
                            
                            
            style="top: 18px; left: 2px; position: absolute; height: 197px; width: 483px; bottom: 19px;" 
            onselectedindexchanged="GridView1_SelectedIndexChanged" 
        BackColor="White" BorderColor="#CC9966" BorderStyle="None" 
        BorderWidth="1px" AutoGenerateColumns="False">
                            <RowStyle BackColor="White" ForeColor="#330099" />
                            <Columns>
                                <asp:ButtonField ButtonType="Button" CommandName="Select" Text="Book This" />
                                <asp:BoundField DataField="Car_Registration_No" 
                                    HeaderText="Registration Number" />
                                <asp:BoundField DataField="Stopage_Name" HeaderText="Stoppage Name" />
                                <asp:BoundField DataField="Arrival_Time" HeaderText="Arrival Time" />
                                <asp:BoundField DataField="Status2" HeaderText="Status" />
                            </Columns>
                            <FooterStyle BackColor="#FFFFCC" ForeColor="#330099" />
                            <PagerStyle BackColor="#FFFFCC" ForeColor="#330099" HorizontalAlign="Center" />
                            <SelectedRowStyle BackColor="#FFCC66" Font-Bold="True" ForeColor="#663399" />
                            <HeaderStyle BackColor="#990000" Font-Bold="True" ForeColor="#FFFFCC" />
                        </asp:GridView></div>
                        <asp:RadioButtonList ID="rblStatus" runat="server" 
                    
                
                style="top: 328px; left: 87px; position: absolute; height: 18px; width: 232px" 
                RepeatDirection="Horizontal">
                    <asp:ListItem Value="TO">To Office</asp:ListItem>
                    <asp:ListItem Value="FO">From Office</asp:ListItem>
                    <asp:ListItem Value="BH">Both</asp:ListItem>
                </asp:RadioButtonList>
                <asp:Label ID="Label7" runat="server" ForeColor="Red" 
        style="top: 354px; left: 99px; position: absolute; height: 13px; width: 25px" 
        Text="(To)"></asp:Label>
        <asp:Label ID="Label1" runat="server" ForeColor="Red" 
        style="top: 354px; left: 184px; position: absolute; height: 17px; width: 25px" 
        Text="(FO)"></asp:Label>
        <asp:Label ID="Label2" runat="server" ForeColor="Red" 
        style="top: 352px; left: 275px; position: absolute; height: 17px; width: 25px" 
        Text="(BH)"></asp:Label>
                <asp:DropDownList ID="ddlFindATripLocation" runat="server" 
                    
                    
                    
            
            style="top: 274px; position: absolute; height: 40px; width: 164px; " 
            DataSourceID="ObjectDataSource1" DataTextField="Location" 
            DataValueField="Location" AppendDataBoundItems="True" 
        AutoPostBack="True">
                    <asp:ListItem>--Select--</asp:ListItem>
                    <asp:ListItem Value="AllLocations">All Locations</asp:ListItem>
                </asp:DropDownList>
                <asp:TextBox ID="txtStartDate" runat="server" 
                            
                            
                    
                        style="top: 393px; left: 219px; position: absolute; height: 24px; width: 128px; bottom: 306px;" 
                        ReadOnly="True" ontextchanged="TextBox6_TextChanged"></asp:TextBox>
                        <asp:TextBox ID="txtEndDate" runat="server" 
                            
                            
                    
                        style="top: 472px; left: 222px; position: absolute; height: 23px; width: 128px" 
                        ReadOnly="True" ontextchanged="TextBox1_TextChanged"></asp:TextBox>
    <br />
                <asp:Label ID="Label3" runat="server" 
                    style="top: 142px; left: 621px; position: absolute; height: 15px; width: 140px; right: 190px" 
                    Text="You are Log In as" ForeColor="#FF3300"></asp:Label>
                <asp:Label ID="Label4" runat="server" 
                    style="top: 142px; left: 753px; position: absolute; height: 18px; width: 40px" 
                    Text="Label" ForeColor="Red"></asp:Label>
                <asp:LinkButton ID="LinkButton1" runat="server" onclick="LinkButton1_Click" 
                    
                    
        style="top: 143px; left: 833px; position: absolute; width: 44px; height: 15px;" 
        ForeColor="Red" CausesValidation="False">Log Out</asp:LinkButton>
                    
                <asp:Calendar ID="Calendar1" runat="server" 
            onselectionchanged="Calendar1_SelectionChanged" Visible="False" 
                    
        
        style="top: 385px; left: 422px; position: absolute; height: 156px; width: 214px"></asp:Calendar>
                </asp:Calendar>
                    
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
                            ControlToValidate="rblStatus" ErrorMessage="Please Select the Status" 
                            
        style="z-index: 1; left: 350px; top: 339px; position: absolute"></asp:RequiredFieldValidator>
            
    <br />
    <asp:Calendar ID="Calendar2" runat="server" 
                            
                            style="top: 465px; left: 422px; position: absolute; height: 156px; width: 209px" 
                            onselectionchanged="Calendar2_SelectionChanged" 
        Visible="False">
                        </asp:Calendar>
    <asp:Label ID="lblFindTripLocation" runat="server" Font-Bold="True" Font-Size="Medium" 
                            style="top: 281px; left: 80px; position: absolute; height: 22px; width: 170px" 
                            Text="Select the Location"></asp:Label>
                            <asp:Label ID="lblFATDateStartPool" runat="server" 
        Font-Bold="True" Font-Size="Medium" 
                            style="top: 394px; left: 47px; position: absolute; height: 16px; width: 134px" 
                            Text="Date Start Pool"></asp:Label>
                            <asp:Label ID="lblEndPool" runat="server" 
        Font-Bold="True" Font-Size="Medium" 
                            style="top: 467px; left: 46px; position: absolute; height: 16px; width: 134px" 
                            Text="Date End Pool"></asp:Label>
    <br />
    <br />
    <br />
    <asp:ObjectDataSource ID="ObjectDataSource1" runat="server" 
                            OldValuesParameterFormatString="original_{0}" SelectMethod="GetLocation" 
                            TypeName="Pool"></asp:ObjectDataSource>
                        <asp:Button ID="btnFindTrip" runat="server" onclick="Button1_Click" 
                            style="cursor:pointer;cursor:hand;top: 584px; left: 77px; position: absolute; height: 26px; width: 153px" 
                            Text="Find My Trip" />
                            <asp:Button ID="btnStratDate" runat="server" onclick="Button2_Click" 
                            style="top: 390px; left: 373px; position: absolute; height: 26px; width: 35px; bottom: 266px;" 
                            Text=">>" CausesValidation="False" />
                            <asp:Button ID="btnEndDate" runat="server" onclick="Button3_Click" 
                            style="top: 466px; left: 370px; position: absolute; height: 23px; width: 34px" 
                            Text=">>" CausesValidation="False" />
                    
                        <asp:CompareValidator ID="cvStartDate" runat="server" 
                            ErrorMessage="Date Start must be&gt;=CurrentDate" Operator="GreaterThanEqual" 
                            style="z-index: 1; left: 420px; top: 398px; position: absolute; width: 183px;" 
                            ControlToCompare="txtInvisible" 
        ControlToValidate="txtStartDate" Type="Date"></asp:CompareValidator>
                        <asp:TextBox ID="txtInvisible" runat="server" 
        
        style="top: -69px; left: -86px; position: absolute; height: 14px; width: 75px"></asp:TextBox>
                    
                        <asp:CompareValidator ID="CompareValidator2" runat="server" 
                            ControlToCompare="txtStartDate" ControlToValidate="txtEndDate" 
                            ErrorMessage="DateEndMustBe&gt;=DateStart" Operator="GreaterThanEqual" 
                            style="z-index: 1; left: 200px; top: 525px; position: absolute; bottom: 109px" 
                            Type="Date"></asp:CompareValidator>
                        <asp:RequiredFieldValidator ID="rfvFATStartDate" runat="server" 
                            ControlToValidate="txtStartDate" ErrorMessage="PleaseSelectStartDate" 
                            
        style="z-index: 1; left: 221px; top: 434px; position: absolute"></asp:RequiredFieldValidator>
                        <asp:RequiredFieldValidator ID="rfvEndDate" runat="server" 
                            ErrorMessage="PleaseSelectEndDate" 
                            style="z-index: 1; left: 229px; top: 510px; position: absolute" 
                            ControlToValidate="txtEndDate"></asp:RequiredFieldValidator>
                    
                    <asp:CompareValidator ID="CompareValidator3" runat="server" 
                    ControlToValidate="ddlFindATripLocation" 
                    ErrorMessage="Please Select A Location" Operator="NotEqual" 
                    style="z-index: 1; left: 316px; top: 309px; position: absolute; height: 19px;" 
                    ValueToCompare="--Select--"></asp:CompareValidator>
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
    `<br />
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

