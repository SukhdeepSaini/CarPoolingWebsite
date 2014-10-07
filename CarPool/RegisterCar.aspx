<%@ Page Language="C#" AutoEventWireup="true" CodeFile="RegisterCar.aspx.cs" Inherits="RegisterCar" %>
<%@ Register Assembly="AjaxControlToolkit" Namespace="AjaxControlToolkit" TagPrefix="asp" %>

<!DOCTYPE html 
	PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" 
	"http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns='http://www.w3.org/1999/xhtml'>
<head >
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

	
	<form id="form1" runat="server">
    <asp:ScriptManager ID="ScriptManager1" runat="server">
    </asp:ScriptManager>
     <asp:FilteredTextBoxExtender ID="ftbe" runat="server"
    TargetControlID="txtMaxSeats"         
    FilterType="Numbers" FilterMode="ValidChars"
    />
    <asp:FilteredTextBoxExtender ID="FilteredTextBoxExtender1" runat="server"
    TargetControlID="txtRegCarAvailableSeats"         
    FilterType="Numbers" FilterMode="ValidChars"
    />
<script language="JavaScript1.2">



    if (document.all||document.getElementById)
document.body.style.background="url('watermark1.jpg') opacity:0.3 filter:alpha(opacity=40) white center no-repeat fixed"

</script>
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
     <asp:RequiredFieldValidator ID="rfvSeats" runat="server" 
                    ControlToValidate="txtRegCarAvailableSeats" 
                    ErrorMessage="Please enter the Available Seats" 
                    
        
        style="top: 452px; left: 620px; position: absolute; height: 15px; width: 173px"></asp:RequiredFieldValidator>
                    <asp:Label ID="Label1" runat="server" Font-Bold="True" Font-Size="Large" 
                    style="top: 134px; left: 378px; position: absolute; height: 17px; width: 191px" 
                    Text="Register Your Car"></asp:Label>
                <asp:ObjectDataSource ID="ObjectDataSource1" runat="server" 
                    OldValuesParameterFormatString="original_{0}" SelectMethod="GetLocation" 
                    TypeName="Pool"></asp:ObjectDataSource>
                    <asp:TextBox ID="txtDateEnd" runat="server" 
                            
                            
                    
                        style="top: 592px; left: 467px; position: absolute; height: 24px; width: 128px" 
                        ReadOnly="True"></asp:TextBox>
                   
                         <asp:RadioButtonList ID="rblRegCarStatus" runat="server" 
                    
                                style="top: 664px; left: 465px; position: absolute; height: 38px; width: 225px; bottom: 353px;" 
                                RepeatDirection="Horizontal" 
                        
        onselectedindexchanged="RadioButtonList1_SelectedIndexChanged">
                    <asp:ListItem Value="TO">To Office</asp:ListItem>
                    <asp:ListItem Value="FO">From Office</asp:ListItem>
                           <asp:ListItem Value="BH">Both</asp:ListItem>
                </asp:RadioButtonList>   
                            <asp:Label ID="Label17" runat="server" 
                    style="top: 128px; left: 607px; position: absolute; height: 15px; width: 108px" 
                    Text="You are Login as" ForeColor="Red"></asp:Label>
                <asp:Label ID="Label18" runat="server" 
                    style="top: 129px; left: 725px; position: absolute; height: 15px; width: 49px" 
                    Text="Label" ForeColor="Red"></asp:Label>
                    <asp:LinkButton ID="LinkButton1" runat="server" onclick="LinkButton1_Click" 
                            
                        
        
        style="top: 131px; left: 791px; position: absolute; width: 60px; height: 15px;" 
        ForeColor="Red" CausesValidation="False">Log Out</asp:LinkButton>
                            
                        <asp:DropDownList ID="DropDownList3" runat="server" 
                            
                                
                        style="top: 886px; left: 463px; position: absolute; height: 22px; width: 85px" 
                        DataSourceID="ObjectDataSource1" DataTextField="Location" 
                        DataValueField="Location" 
                        onselectedindexchanged="DropDownList3_SelectedIndexChanged" 
                        AppendDataBoundItems="True" AutoPostBack="True" 
        Visible="False">
                            <asp:ListItem Value="None">-Select--</asp:ListItem>
                        </asp:DropDownList>
                            
                            <asp:Label ID="lblMessage" runat="server" 
                    style="top: 1074px; left: 570px; position: absolute; height: 19px; width: 276px" 
                    Text="To Change the Stoppage Deselect In reverse Order" 
        ForeColor="Red" ></asp:Label>
                            <asp:Label ID="lblDepartureTime" runat="server" 
        Font-Bold="True" Font-Size="Medium" 
                            style="top:969px; left: 227px; position: absolute; height: 20px; width: 134px; right: 590px;" 
                            Text="Departure Time"></asp:Label>
                           
                            
                            <asp:TextBox ID="txtDateStartRegCar" runat="server" 
                            
                            
                    
                        style="top: 516px; left: 465px; position: absolute; height: 24px; width: 128px" 
                        ReadOnly="True"></asp:TextBox>
                          <asp:RequiredFieldValidator ID="rfvCarRegId" runat="server" 
                            ErrorMessage="PleaseEnterTheCarId" 
                            style="z-index: 1; left: 621px; top: 240px; position: absolute" 
                            ControlToValidate="txtCarRegId"></asp:RequiredFieldValidator>
                        <asp:RequiredFieldValidator ID="rfvCarName" runat="server" 
                            ErrorMessage="PleaseEnterTheNameOfCar" 
                            style="z-index: 1; left: 620px; top: 314px; position: absolute" 
                            ControlToValidate="txtCarName"></asp:RequiredFieldValidator>
    <br />
    <br />
    <asp:RangeValidator ID="rvavailableSeats" runat="server" 
        ControlToValidate="txtRegCarAvailableSeats" 
        ErrorMessage="Maximum Seats can be 12" MaximumValue="12" 
        MinimumValue="1" 
        style="top: 479px; left: 469px; position: absolute; height: 17px; width: 138px; right: 344px;" 
        Type="Integer"></asp:RangeValidator>
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
     <asp:DropDownList ID="ddlStoppageName1" runat="server" 
                            
                            style="top: 752px; left: 456px; position: absolute; height: 22px; width: 88px; right: 407px;" 
                            DataSourceID="ObjectDataSource1" DataTextField="Location" 
                            DataValueField="Location" AppendDataBoundItems="True" 
                            
        onselectedindexchanged="ddlStoppageName1_SelectedIndexChanged" 
        AutoPostBack="True">
                            <asp:ListItem Value="--None">---Select--</asp:ListItem>
                        </asp:DropDownList>
                           
                            <asp:DropDownList ID="ddlStoppageName2" runat="server" 
                            
                            
                            style="top: 825px; left: 459px; position: absolute; width: 90px; right: 394px;" 
                            DataSourceID="ObjectDataSource1" DataTextField="Location" 
                            DataValueField="Location" AppendDataBoundItems="True" 
                            
        onselectedindexchanged="ddlStoppageName2_SelectedIndexChanged" 
        AutoPostBack="True" Visible="False">
                                <asp:ListItem Value="-None">--Select--</asp:ListItem>
                        </asp:DropDownList>
                        <asp:Label ID="lblRegCarEmpId" runat="server" 
        Font-Bold="True" Font-Size="Medium" 
                            style="top: 183px; left: 257px; position: absolute; height: 16px; width: 134px" 
                            Text="Employee Id"></asp:Label>
                        <asp:TextBox ID="txtRegCarEmpId" runat="server" 
                            
                            
                            
                            
                            
                            
                            
                            style="top: 179px; left: 459px; position: absolute; height: 22px; width: 128px; bottom: 321px;" 
                            ReadOnly="True" 
        ontextchanged="txtRegCarEmpId_TextChanged"></asp:TextBox>
                        <asp:TextBox ID="txtCarRegId" runat="server" 
                            
                            
                            
                            
                            
                            
                            
        style="top: 240px; left: 461px; position: absolute; height: 22px; width: 128px"></asp:TextBox>
                            <asp:Label ID="lblCarRegId" runat="server" 
        Font-Bold="True" Font-Size="Medium" 
                            style="top:249px; left: 237px; position: absolute; height: 16px; width: 157px; right: 557px;" 
                            Text="Car Registration Id"></asp:Label>
                            <asp:TextBox ID="txtRegCarAvailableSeats" runat="server" 
                            
                            
                            
                            
                            
                            
        style="top: 447px; left: 464px; position: absolute; height: 23px; width: 130px"></asp:TextBox>
                            <asp:CompareValidator ID="cvAvailableSeats" runat="server" 
                            ControlToCompare="txtMaxSeats" ControlToValidate="txtRegCarAvailableSeats" 
                            ErrorMessage="Available Seats must be&lt;=MaxNoOfSeats" 
                            Operator="LessThanEqual" 
                            style="z-index: 1; left: 641px; top: 459px; position: absolute; width: 233px" 
                            Type="Integer"></asp:CompareValidator>
                            <asp:Label ID="lblRegCarName" runat="server" 
        Font-Bold="True" Font-Size="Medium" 
                            style="top:318px; left: 249px; position: absolute; height: 16px; width: 134px" 
                            Text="Car Name"></asp:Label>
                            <asp:Label ID="lblMaxSeats" runat="server" 
        Font-Bold="True" Font-Size="Medium" 
                            style="top:381px; left: 229px; position: absolute; height: 18px; width: 144px" 
                            Text="Max No. of seats"></asp:Label>
                            <asp:Label ID="lblRegCarAvailableSeats" runat="server" 
        Font-Bold="True" Font-Size="Medium" 
                            style="top:451px; left: 231px; position: absolute; height: 16px; width: 134px" 
                            Text="Available Seats"></asp:Label>
                            <asp:Label ID="lblRegCarDateStart" runat="server" 
        Font-Bold="True" Font-Size="Medium" 
                            style="top:530px; left: 229px; position: absolute; height: 16px; width: 134px" 
                            Text="Date Start Pool"></asp:Label>
                            <asp:Label ID="lblRegCarEndDate" runat="server" 
        Font-Bold="True" Font-Size="Medium" 
                            style="top:600px; left: 228px; position: absolute; height: 18px; width: 134px" 
                            Text="Date End Pool"></asp:Label>
                            <asp:TextBox ID="txtMaxSeats" runat="server"  style="top: 380px; left: 454px; position: absolute; height: 25px; width: 128px" 
        ontextchanged="txtMaxSeats_TextChanged"></asp:TextBox>
                           <asp:Label ID="lblRegCarStatus" runat="server" 
        Font-Bold="True" Font-Size="Medium" 
                            style="top:685px; left: 226px; position: absolute; height: 18px; width: 134px" 
                            Text="Status"></asp:Label>
                            <asp:Label ID="lblStoppageName1" runat="server" 
        Font-Bold="True" Font-Size="Medium" 
                            style="top:756px; left: 216px; position: absolute; height: 18px; width: 149px" 
                            Text="Stoppage 1 Name"></asp:Label><br /><br /><br /><br /><br /><br /><br />
    <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" 
        ControlToValidate="rblRegCarStatus" ErrorMessage="Select the Status" 
        style="top: 681px; left: 723px; position: absolute; height: 16px; width: 107px"></asp:RequiredFieldValidator>
    <br />
                            <asp:Label ID="lblStoppageName2" runat="server" 
        Font-Bold="True" Font-Size="Medium" 
                            style="top:827px; left: 216px; position: absolute; height: 20px; width: 152px; right: 583px;" 
                            Text="Stoppage 2 Name" Visible="False"></asp:Label>
                            <asp:Label ID="lblStoppageName3" runat="server" 
        Font-Bold="True" Font-Size="Medium" 
                            style="top:887px; left: 218px; position: absolute; height: 18px; width: 167px" 
                            Text="Stoppage 3 Name" Visible="False"></asp:Label>
                            <asp:Label ID="lblMorningArrivalTime1" runat="server" 
        Font-Bold="True" Font-Size="Medium" 
                            style="top:755px; left: 590px; position: absolute; height: 22px; width: 198px" 
                            Text="Morning Arrival Time "></asp:Label>
                            <asp:Label ID="lblMorningArrivalTime2" runat="server" 
        Font-Bold="True" Font-Size="Medium" 
                            style="top:827px; left: 590px; position: absolute; height: 15px; width: 182px; right: 179px;" 
                            Text="Morning Arrival Time" Visible="False"></asp:Label>
                            <asp:Label ID="MorningArrivalTime3" runat="server" 
        Font-Bold="True" Font-Size="Medium" 
                            style="top:894px; left: 592px; position: absolute; height: 17px; width: 178px" 
                            Text="Morning Arrival Time" Visible="False"></asp:Label>
                                                      
                          <asp:TextBox ID="txtMorningArrivalTime1" runat="server" 
                            
                            
                    
        
        style="top: 748px; left: 801px; position: absolute; height: 25px; width: 100px"></asp:TextBox>  
                            
                        
                          <asp:RegularExpressionValidator ID="RegularExpressionValidator1" 
                            runat="server" ControlToValidate="txtMorningArrivalTime1" 
                            ErrorMessage="Enter Time in Correct Format" 
                            style="top: 798px; left: 784px; position: absolute; height: 16px; width: 163px" 
                            
        ValidationExpression="([5-9]):([0-5][0-9]) (AM)"></asp:RegularExpressionValidator>
                            
                        <asp:RegularExpressionValidator ID="RegularExpressionValidator2" 
                            runat="server" ControlToValidate="txtMorningArrivalTime2" 
                            ErrorMessage="Enter Time in Correct Format" 
                            style="top: 857px; left: 778px; position: absolute; height: 16px; width: 163px" 
                            
        ValidationExpression="([5-9]):([0-5][0-9]) (AM)"></asp:RegularExpressionValidator>
                         <asp:RegularExpressionValidator ID="RegularExpressionValidator3" 
                            runat="server" ControlToValidate="txtMorningArrivalTime3" 
                            ErrorMessage="Enter Time in Correct Format" 
                            style="top: 946px; left: 789px; position: absolute; height: 16px; width: 163px" 
                            
        ValidationExpression="([5-9]):([0-5][0-9]) (AM)"></asp:RegularExpressionValidator>
                          <asp:TextBox ID="txtMorningArrivalTime2" runat="server" 
                            
                            
                    
        
        style="left: 802px; position: absolute; height: 25px; width: 100px; top: 822px;" 
        Visible="False"></asp:TextBox>  
                            
                        <asp:TextBox ID="TextBox10" runat="server" 
                            
                            
                    style="top: 975px; left: 462px; position: absolute; height: 21px; width: 122px" 
                            ReadOnly="True"></asp:TextBox>    
                    <asp:TextBox ID="txtMorningArrivalTime3" runat="server" 
                            
                            
                    
        
        style="top: 899px; left: 804px; position: absolute; height: 25px; width: 100px" 
        Visible="False"></asp:TextBox>
                            <asp:TextBox ID="txtCarName" runat="server" 
                            
                            
                            
        
        
        style="top: 313px; left: 461px; position: absolute; height: 22px; width: 128px"></asp:TextBox>
                            <asp:RequiredFieldValidator ID="rfvDateStart" runat="server" 
                            ControlToValidate="txtDateStartRegCar" 
                            ErrorMessage="Please Enter the start date for pool" 
                            
                            
        
        style="z-index: 1; left: 653px; top: 521px; position: absolute; width: 192px; height: 40px"></asp:RequiredFieldValidator>
                            
                            <asp:CompareValidator ID="cvStartDate" runat="server" 
                            ErrorMessage="Date Start must be&gt;=CurrentDate" Operator="GreaterThanEqual" 
                            style="z-index: 1; left: 460px; top: 561px; position: absolute" 
                            ControlToCompare="txtInvisible" ControlToValidate="txtDateStartRegCar" 
                            Type="Date"></asp:CompareValidator>
                        <asp:RequiredFieldValidator ID="rfvDateEndPool" runat="server" 
                            ControlToValidate="txtDateEnd" ErrorMessage="PleaseEnterTheDateEndPool" 
                            
                            
        style="z-index: 1; left: 463px; top: 633px; position: absolute; right: 437px;"></asp:RequiredFieldValidator>
                        <asp:CompareValidator ID="cvDateEndPool" runat="server" 
                            ControlToCompare="txtDateStartRegCar" ControlToValidate="txtDateEnd" 
                            ErrorMessage="DateEndPoolMustBe&gt;=DateStartPool" Operator="GreaterThanEqual" 
                            style="z-index: 1; left: 653px; top: 608px; position: absolute; height: 32px;" 
                            Type="Date"></asp:CompareValidator>
                        <asp:CompareValidator ID="CompareValidator1" runat="server" 
                            ControlToValidate="ddlStoppageName1" 
                            ErrorMessage="PleaseSelectTheFirstStoppage" Operator="NotEqual" 
                            style="z-index: 1; left: 454px; top: 789px; position: absolute; width: 183px" 
                            ValueToCompare="--None"></asp:CompareValidator>
                        <asp:RequiredFieldValidator ID="rfvMorningTime1" runat="server" 
                            ControlToValidate="txtMorningArrivalTime1" 
                            ErrorMessage="PleaseSpecifyTheMorningArrivalTimeForFirstStoppage" 
                            
                            
                            
        style="z-index: 1; left: 583px; top: 795px; position: absolute; width: 235px; height: 20px; right: 133px;"></asp:RequiredFieldValidator>
                        <asp:RequiredFieldValidator ID="rfvMorningtime2" runat="server" 
                            ControlToValidate="txtMorningArrivalTime2" ErrorMessage="Enter the Morning Arrival Time" 
                            
        
        style="z-index: 1; left: 747px; top: 845px; position: absolute; width: 165px;" 
        Visible="False"></asp:RequiredFieldValidator>
        <asp:RequiredFieldValidator ID="rfvMorningtime3" runat="server" 
                            ControlToValidate="txtMorningArrivalTime3" ErrorMessage="Enter the Morning Arrival Time" 
                            
        
        style="z-index: 1; left: 749px; top: 926px; position: absolute; width: 165px;" 
        Visible="False"></asp:RequiredFieldValidator>
                        <asp:CompareValidator ID="cvCheckStoppage2" runat="server" 
                            ControlToCompare="ddlStoppageName1" ControlToValidate="ddlStoppageName2" 
                            ErrorMessage="StoppagesCan'tBeRepeated" Operator="NotEqual" 
                            
        
        style="z-index: 1; left: 451px; position: absolute; height: 23px; top: 855px;"></asp:CompareValidator>
                        <asp:CompareValidator ID="cvCheckThirdStoppage" runat="server" 
                            ControlToCompare="ddlStoppageName1" ControlToValidate="DropDownList3" 
                            ErrorMessage="StoppagesCan'tBeRepeated" Operator="NotEqual" 
                            
        style="z-index: 1; left: 468px; top: 920px; position: absolute"></asp:CompareValidator>
                        <asp:CompareValidator ID="cvCheckStoppage3New" runat="server" 
                            ControlToCompare="ddlStoppageName2" ControlToValidate="DropDownList3" 
                            ErrorMessage="StoppagesCan'tBeSame" Operator="NotEqual" 
                            
                            
        style="z-index: 1; left: 472px; top: 941px; position: absolute; right: 455px;"></asp:CompareValidator>
                            </div>
                </div>
               
                
                <asp:RequiredFieldValidator ID="rfvMaxSeats" runat="server" 
                    ControlToValidate="txtMaxSeats" 
                    ErrorMessage="EnterTheMaximunNo.OFSeatsInthecar" 
                    
        style="z-index: 1; left: 663px; top: 384px; position: absolute"></asp:RequiredFieldValidator>
               
                
                <asp:Button ID="btnRegister" runat="server" 
                    style="cursor:pointer;cursor:hand;top: 1070px; left: 469px; position: absolute; height: 26px; " 
                    Text="Register" onclick="Button1_Click" />
               <asp:Button ID="btnDateStart" runat="server" 
                    style="top: 514px; left: 605px; position: absolute; height: 24px; width: 32px" 
                    Text="&gt;&gt;" onclick="Button2_Click" 
        CausesValidation="False" />
                    <asp:Button ID="btnDateEndDate" runat="server" 
                    style="top: 590px; left: 610px; position: absolute; height: 22px; width: 32px" 
                    Text="&gt;&gt;" onclick="Button3_Click" 
        CausesValidation="False" />
                
                <asp:Calendar ID="cldDateStart" runat="server" 
                    
                    style="top: 514px; left: 653px; position: absolute; height: 156px; width: 209px" 
                    onselectionchanged="Calendar1_SelectionChanged" 
        Visible="False">
                </asp:Calendar>
                <asp:Calendar ID="cldDateEnd" runat="server" 
                    
                    style="top: 590px; left: 650px; position: absolute; height: 156px; width: 209px; right: 92px;" 
                    onselectionchanged="Calendar2_SelectionChanged" 
        Visible="False">
                </asp:Calendar>
                <asp:Label ID="lblFormat" runat="server" 
                    style="top: 703px; left: 788px; position: absolute; height: 18px; width: 124px" 
                    Text="HH:MM AM" ForeColor="Red"></asp:Label>
                    <asp:Label ID="Label2" runat="server" 
                    style="top: 726px; left: 741px; position: absolute; height: 18px; width: 171px" 
                    Text="Morning Time 5:00 AM to 10:00 AM" ForeColor="Red"></asp:Label>
                <asp:TextBox ID="txtInvisible" runat="server" 
                    style="top: -61px; left: -82px; position: absolute; height: 22px; width: 128px"></asp:TextBox>
                      <asp:CompareValidator ID="CompareValidator2" runat="server" 
            ControlToCompare="txtMorningArrivalTime2" ControlToValidate="txtMorningArrivalTime1" 
            ErrorMessage="Time of 2 Stoppage can't be Same" Operator="NotEqual" 
            
            
            
            
        style="z-index: 1; left: 754px; top: 775px; position: absolute; height: 17px; width: 169px"></asp:CompareValidator>
            <asp:CompareValidator ID="CompareValidator3" runat="server" 
            ControlToCompare="txtMorningArrivalTime3" ControlToValidate="txtMorningArrivalTime1" 
            ErrorMessage="Time of 2 Stoppage can't be Same" Operator="NotEqual" 
            
            
            
        style="z-index: 1; left: 765px; top: 962px; position: absolute; height: 17px; width: 169px"></asp:CompareValidator>
            <asp:CompareValidator ID="CompareValidator4" runat="server" 
            ControlToCompare="txtMorningArrivalTime3" ControlToValidate="txtMorningArrivalTime2" 
            ErrorMessage="Time of 2 Stoppage can't be Same" Operator="NotEqual" 
            
            
            
            
        style="z-index: 1; left: 772px; top: 875px; position: absolute; height: 15px; width: 169px"></asp:CompareValidator>
    <br />
    <br />
    <br />
    <br /> <br /> <br /> <br /> <br /> <br />
    <br />
    <br />
    <br />
    <br /><br />
    <br />
    <br /><br />
    <br />
    <br /><br />
    <br />
    <br />
    <br />
    <br />
    <br />
    <br /><br /><br /><br /><br /><br /><br /><br /><br /><br /><br /><br /><br /><br /><br />
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



