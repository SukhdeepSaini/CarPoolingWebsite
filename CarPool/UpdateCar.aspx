<%@ Page Language="C#" AutoEventWireup="true" CodeFile="UpdateCar.aspx.cs" Inherits="UpdateCar" %>
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
document.body.style.background="url('watermark1.jpg') opacity:0.3 filter:alpha(opacity=40) white right no-repeat fixed"

</script>
	<form id="form1" runat="server">
	 <asp:ScriptManager ID="ScriptManager1" runat="server">
    </asp:ScriptManager>
    <asp:ConfirmButtonExtender ID="cbe" runat="server"
    TargetControlID="btnUpdate"
    ConfirmText="Are you sure you want to Update?"
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
        
       <red> Car Pooling-Good For Your Pocket and the Environment</red>
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
</table>








<table cellpadding='0' cellspacing='0' align='center' style='width: 100%;'>
<tr>


<td valign='top'>

<div class='content'>

    







<div style='float: left; width: 453px; padding: 0px 10px 0px 10px;'>

    <div style='padding: 5px 10px 0px 0px; width: 877px;'>
  <div class='portal_spacer'>
    
      <asp:CompareValidator ID="cvStoppageName3" runat="server" 
          ErrorMessage="Stoppages Can't be repeated" 
          
          style="z-index: 1; left: 347px; top: 793px; position: absolute; right: 348px; height: 27px;" 
          ControlToCompare="txtStoppageName3" ControlToValidate="txtStoppageName2" 
          Operator="NotEqual"></asp:CompareValidator>
    
    </div>

    
  
        <asp:CompareValidator ID="cvStoppage1" runat="server" 
            ControlToCompare="txtStoppageName2" ControlToValidate="txtStoppageName" 
            ErrorMessage="stoppages can't be repeated" Operator="NotEqual" 
            
            style="z-index: 1; left: 370px; top: 699px; position: absolute; height: 17px; width: 145px"></asp:CompareValidator>
        <asp:CompareValidator ID="cvStoppageName2" runat="server" 
            ControlToCompare="txtStoppageName3" ControlToValidate="txtStoppageName" 
            ErrorMessage="Stoppages can't be repeated" Operator="NotEqual" 
            
            style="z-index: 1; left: 513px; top: 697px; position: absolute; height: 16px; width: 153px"></asp:CompareValidator>
       
    
  
        <asp:RequiredFieldValidator ID="rfvMorningTime2" runat="server" 
            ControlToValidate="txtMorningArrivalTime2" 
            ErrorMessage="PleaseProvide the time" 
            
            
            
            
            style="z-index: 1; left: 759px; top: 759px; position: absolute; height: 14px; width: 150px; margin-bottom: 0px"></asp:RequiredFieldValidator>
       
     <asp:RegularExpressionValidator ID="RegularExpressionValidator2" 
                            runat="server" ControlToValidate="txtMorningArrivalTime2" 
                            ErrorMessage="Enter Time in Correct Format" 
                            style="top: 795px; left: 747px; position: absolute; height: 16px; width: 163px" 
                            
        ValidationExpression="^\d{1,2}[:]\d{2}([:]\d{2})?( [A][M]?)?$"></asp:RegularExpressionValidator>
                         <asp:RegularExpressionValidator ID="RegularExpressionValidator3" 
                            runat="server" ControlToValidate="txtMorningArrivalTime3" 
                            ErrorMessage="Enter Time in Correct Format" 
                            style="top: 886px; left: 759px; position: absolute; height: 16px; width: 163px" 
                            
        ValidationExpression="^\d{1,2}[:]\d{2}([:]\d{2})?( [A][M]?)?$"></asp:RegularExpressionValidator>
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
    <asp:Label ID="lblUpdate" runat="server" Font-Bold="True" Font-Size="Large" 
                    style="top: 140px; left: 342px; position: absolute; height: 17px; width: 245px" 
                    Text="Update Your Car"></asp:Label>
                <asp:ObjectDataSource ID="ObjectDataSource1" runat="server" 
                    OldValuesParameterFormatString="original_{0}" SelectMethod="GetLocation" 
                    TypeName="Pool"></asp:ObjectDataSource>

<asp:TextBox ID="txtStatus" runat="server" 
                            
                            
                    
                        style="top: 568px; left: 436px; position: absolute; height: 24px; width: 128px" 
                        ReadOnly="True"></asp:TextBox>
                        <asp:TextBox ID="txtDateEnd" runat="server" 
                            
                            
                    
                        style="top: 519px; left: 433px; position: absolute; height: 24px; width: 128px" 
                        ReadOnly="True"></asp:TextBox>
                   
                         <asp:RadioButtonList ID="rblRegCarStatus" runat="server"                    
                                style="top: 566px; left: 614px; position: absolute; height: 45px; width: 232px; bottom: 218px;" 
                                RepeatDirection="Horizontal" Visible="False" 
        AutoPostBack="True" 
        onselectedindexchanged="rblRegCarStatus_SelectedIndexChanged">
                    <asp:ListItem Value="TO">To Office</asp:ListItem>
                    <asp:ListItem Value="FO">From Office</asp:ListItem>
                           <asp:ListItem Value="BH">Both</asp:ListItem>
                </asp:RadioButtonList>   
                            <asp:Label ID="lblLogin" runat="server" 
                    style="top: 141px; left: 626px; position: absolute; height: 16px; width: 108px" 
                    Text="You are Login as" ForeColor="Red"></asp:Label>
                    <asp:Label ID="lblInstruction" runat="server" 
                    style="top: 1019px; left: 564px; position: absolute; height: 19px; width: 276px" 
                    Text="To Change the Stoppage Deselect In reverse Order" 
        ForeColor="Red" Visible="False"></asp:Label>
                    <asp:Label ID="lblValidCar" runat="server" 
                    style="top: 237px; left: 593px; position: absolute; " 
                    Text="Please Select A Valid Car" ForeColor="Red"></asp:Label>
                <asp:Label ID="lblLogIn2" runat="server" 
                    style="top: 143px; left: 745px; position: absolute; height: 15px; width: 49px; right: 157px;" 
                    Text="Label" ForeColor="Red"></asp:Label>
                    <asp:LinkButton ID="lnkLogOut" runat="server" 
                            
                        
        style="top: 143px; left: 814px; position: absolute; width: 60px; height: 15px;" 
        ForeColor="Red" CausesValidation="False" onclick="LinkButton1_Click">Log Out</asp:LinkButton>
<%--        <asp:LinkButton ID="LinkButton2" runat="server" 
                            
                        
        style="top: 636px; left: 895px; position: absolute; width: 60px; height: 17px;" 
        ForeColor="#003399" CausesValidation="False" onclick="LinkButton2_Click" 
        Visible="False">Edit Time</asp:LinkButton>
                            <asp:LinkButton ID="LinkButton3" runat="server" 
                            
                        
        style="top: 736px; left: 897px; position: absolute; width: 60px; height: 17px;" 
        ForeColor="#003399" CausesValidation="False" onclick="LinkButton3_Click" 
        Visible="False">Edit Time</asp:LinkButton>
        <asp:LinkButton ID="LinkButton4" runat="server" 
                            
                        
        style="top: 814px; left: 898px; position: absolute; width: 60px; height: 17px;" 
        ForeColor="#003399" CausesValidation="False" onclick="LinkButton4_Click" 
        Visible="False">Edit Time</asp:LinkButton>--%>
                            
                            <asp:Label ID="lblDepartureTime" runat="server" 
        Font-Bold="True" Font-Size="Medium" 
                            style="top:919px; left: 170px; position: absolute; height: 28px; width: 239px; right: 542px;" 
                            Text="Departure Time"></asp:Label>
                           
                            
                            <asp:TextBox ID="txtDateStartRegCar" runat="server" 
                            
                            
                    
                        style="top: 462px; left: 437px; position: absolute; height: 24px; width: 128px" 
                        ReadOnly="True"></asp:TextBox>
<asp:TextBox ID="TextBox1" runat="server" 
                    style="top: -61px; left: -82px; position: absolute; height: 22px; width: 128px"></asp:TextBox>
    <asp:TextBox ID="TextBox11" runat="server" 
        
        style="top: -132px; left: 342px; position: absolute; height: 22px; width: 128px"></asp:TextBox>
    <asp:TextBox ID="TextBox12" runat="server" 
        
        style="top: -138px; left: 104px; position: absolute; height: 22px; width: 128px"></asp:TextBox>

 <asp:DropDownList ID="ddlStoppageName1" runat="server" 
                            
                            style="top: 674px; left: 441px; position: absolute; width: 93px; bottom: 339px;" 
                            DataSourceID="ObjectDataSource1" DataTextField="Location" 
                            DataValueField="Location" AppendDataBoundItems="True" Visible="False" 
                            
        onselectedindexchanged="ddlStoppageName1_SelectedIndexChanged" 
        AutoPostBack="True">
                        </asp:DropDownList>
                           
                            <asp:CompareValidator ID="CompareValidator4" 
        runat="server" ControlToCompare="TextBox11" 
        ControlToValidate="txtDateStartRegCar" 
        ErrorMessage="You Can't Increase DateStart Pool" Operator="LessThanEqual" 
        style="top: 491px; left: 593px; position: absolute; height: 13px; width: 169px" 
        Type="Date"></asp:CompareValidator>
        <asp:CompareValidator ID="CompareValidator5" 
        runat="server" ControlToCompare="TextBox12" 
        ControlToValidate="txtDateEnd" 
        ErrorMessage="You Can't Reduce DateEnd Pool" Operator="GreaterThanEqual" 
        style="top: 523px; left: 625px; position: absolute; height: 13px; width: 169px" 
        Type="Date"></asp:CompareValidator>
                           
                            <asp:TextBox ID="txtStoppageName" runat="server" 
                            
                            
                            
                            
                            style="z-index: 1; left: 434px; top: 630px; position: absolute; height: 25px" 
                            ReadOnly="True"></asp:TextBox>
                           
                            <asp:DropDownList ID="ddlStoppageName2" runat="server" 
                            
                            
                            style="top: 766px; left: 444px; position: absolute; width: 94px; bottom: 326px;" 
                            DataSourceID="ObjectDataSource1" DataTextField="Location" 
                            DataValueField="Location" AppendDataBoundItems="True" Visible="False" 
                            
        onselectedindexchanged="ddlStoppageName2_SelectedIndexChanged" 
        AutoPostBack="True">
                                <asp:ListItem Value="-None">--Select--</asp:ListItem>
                        </asp:DropDownList>

<asp:Label ID="lblRegCarEmpId" runat="server" Font-Bold="True" Font-Size="Medium" 
                            style="top: 190px; left: 207px; position: absolute; height: 15px; width: 281px" 
                            Text="Employee Id"></asp:Label>
                        <asp:TextBox ID="txtRegCarEmpId" runat="server" 
                            
                            
                            
                            
                            
                            
                            
                            style="top: 181px; left: 445px; position: absolute; height: 22px; width: 128px; bottom: 319px;" 
                            ReadOnly="True" ></asp:TextBox>
                            <asp:Label ID="lblCarRegId" runat="server" 
        Font-Bold="True" Font-Size="Medium" 
                            style="top:241px; left: 211px; position: absolute; height: 17px; width: 292px; right: 448px;" 
                            Text="Car Registration Id"></asp:Label>
                            <asp:TextBox ID="txtRegCarAvailableSeats" runat="server" 
                            
                            
                            
                            
                            
                            
                            style="top: 403px; left: 437px; position: absolute; height: 23px; width: 130px" 
                            ReadOnly="True"></asp:TextBox>
                            <asp:RequiredFieldValidator ID="rfvDateStart" runat="server" 
                            ControlToValidate="txtDateStartRegCar" ErrorMessage="Please Select A Date" 
                            
        
        
        style="z-index: 1; left: 491px; top: 491px; position: absolute; height: 15px; width: 164px; "></asp:RequiredFieldValidator>
                            <asp:Label ID="lblRegCarName" runat="server" 
        Font-Bold="True" Font-Size="Medium" 
                            style="top:298px; left: 211px; position: absolute; height: 16px; width: 271px" 
                            Text="Car Name"></asp:Label>
                            <asp:Label ID="lblMaxSeats" runat="server" 
        Font-Bold="True" Font-Size="Medium" 
                            style="top:348px; left: 206px; position: absolute; height: 16px; width: 160px" 
                            Text="Max No. of seats"></asp:Label>
                            <asp:Label ID="lblRegCarAvailableSeats" runat="server" 
        Font-Bold="True" Font-Size="Medium" 
                            style="top:405px; left: 204px; position: absolute; height: 16px; width: 235px" 
                            Text="Available Seats"></asp:Label>
                            <asp:Label ID="lblRegCarDateStart" runat="server" 
        Font-Bold="True" Font-Size="Medium" 
                            style="top:459px; left: 192px; position: absolute; height: 16px; width: 234px" 
                            Text="Date Start Pool"></asp:Label>
                            <asp:Label ID="lblRegCarEndDate" runat="server" 
        Font-Bold="True" Font-Size="Medium" 
                            style="top:520px; left: 189px; position: absolute; height: 16px; width: 197px" 
                            Text="Date End Pool"></asp:Label>
                            <asp:TextBox ID="txtMaxSeats" runat="server" 
                            
                            
                            
                            
                            
                            style="top: 348px; left: 439px; position: absolute; height: 25px; width: 128px" 
                            ReadOnly="True"></asp:TextBox>
                           
                            
                            
                            
                            <asp:Label ID="lblRegCarStatus" runat="server" 
        Font-Bold="True" Font-Size="Medium" 
                            style="top:579px; left: 202px; position: absolute; height: 18px; width: 134px" 
                            Text="Status"></asp:Label>
                            <asp:Label ID="lblStoppageName1" runat="server" 
        Font-Bold="True" Font-Size="Medium" 
                            style="top:630px; left: 188px; position: absolute; height: 29px; width: 246px" 
                            Text="Stoppage 1 Name"></asp:Label>
                            <asp:Label ID="lblStoppageName2" runat="server" 
        Font-Bold="True" Font-Size="Medium" 
                            style="top:720px; left: 183px; position: absolute; height: 18px; width: 244px; right: 524px;" 
                            Text="Stoppage 2 Name"></asp:Label>
                            <asp:Label ID="lblStoppageName3" runat="server" 
        Font-Bold="True" Font-Size="Medium" 
                            style="top:812px; left: 177px; position: absolute; height: 20px; width: 249px" 
                            Text="Stoppage 3 Name"></asp:Label>
                            <asp:Label ID="lblMorningArrivalTime1" runat="server" 
        Font-Bold="True" Font-Size="Medium" 
                            style="top:636px; left: 604px; position: absolute; height: 20px; width: 294px" 
                            Text="Morning Arrival Time "></asp:Label>
                            <asp:Label ID="lblMorningArrivalTime2" runat="server" 
        Font-Bold="True" Font-Size="Medium" 
                            style="top:732px; left: 605px; position: absolute; height: 18px; width: 246px; right: 100px;" 
                            Text="Morning Arrival Time"></asp:Label>
                            <asp:Label ID="MorningArrivalTime3" runat="server" 
        Font-Bold="True" Font-Size="Medium" 
                            style="top:813px; left: 603px; position: absolute; height: 17px; width: 258px" 
                            Text="Morning Arrival Time"></asp:Label>
                                 <asp:Label ID="Label2" runat="server" 
                    style="top: 598px; left: 791px; position: absolute; height: 19px; width: 124px" 
                    Text="HH:MM AM" ForeColor="Red"></asp:Label>    
                     <asp:Label ID="Label5" runat="server" 
                    style="top: 612px; left: 724px; position: absolute; height: 18px; width: 198px" 
                    Text="Morning Time 5:00 AM to 10:00 AM" ForeColor="Red"></asp:Label>                 
                          <asp:TextBox ID="txtMorningArrivalTime1" runat="server" 
                            
                            
                    
        
        
        
        style="top: 631px; left: 790px; position: absolute; height: 25px; width: 100px" 
        ReadOnly="True"></asp:TextBox>  
                            
                        
                          <asp:TextBox ID="txtMorningArrivalTime2" runat="server" 
                            
                            
                    
        
        
        
        style="top: 728px; left: 789px; position: absolute; height: 25px; width: 100px" 
        ReadOnly="True"></asp:TextBox>  
                            
                        <asp:TextBox ID="TextBox10" runat="server" 
                            
                            
                    style="top: 924px; left: 424px; position: absolute; height: 21px; width: 122px" 
                            ReadOnly="True"></asp:TextBox>    
                    <asp:TextBox ID="txtMorningArrivalTime3" runat="server" 
                            
                            
                    
        
        
        
        style="top: 811px; left: 791px; position: absolute; height: 25px; width: 100px" 
        ReadOnly="True"></asp:TextBox>
                            <asp:TextBox ID="txtCarName" runat="server" 
                            
                            
                            
                            style="top: 297px; left: 440px; position: absolute; height: 21px; width: 128px" 
                            ReadOnly="True"></asp:TextBox>
                       
                            
                           
                        <asp:TextBox ID="txtStoppageName3" runat="server" 
                            
        style="z-index: 1; left: 427px; top: 820px; position: absolute" 
        ReadOnly="True"></asp:TextBox>
                        
                            <asp:DropDownList ID="DropDownList4" runat="server" 
                            AppendDataBoundItems="True" AutoPostBack="True" 
                            DataSourceID="ObjectDataSource2" DataTextField="Car_Registration_Id" 
                            DataValueField="Car_Registration_Id" 
                            onselectedindexchanged="DropDownList4_SelectedIndexChanged" 
                            
                            
        
        
        
        
        
        style="z-index: 1; left: 442px; top: 240px; position: absolute; width: 123px; bottom: 274px; height: 21px;">
                                <asp:ListItem>--Select--</asp:ListItem>
                        </asp:DropDownList>
                            
                            <asp:CompareValidator ID="cvStartDate" runat="server" 
                            ErrorMessage="Date Start must be&gt;=CurrentDate" Operator="GreaterThanEqual" 
                            style="z-index: 1; left: 393px; top: 492px; position: absolute" 
                            ControlToCompare="txtInvisible" ControlToValidate="txtDateStartRegCar" 
                            Type="Date"></asp:CompareValidator>
                            <asp:DropDownList ID="ddlStoppage3" runat="server" 
        AutoPostBack="True" DataSourceID="ObjectDataSource1" DataTextField="Location" 
        DataValueField="Location" 
        onselectedindexchanged="DropDownList5_SelectedIndexChanged1" 
        Visible="False" AppendDataBoundItems="True">
                                <asp:ListItem Value="None">-Select--</asp:ListItem>
    </asp:DropDownList>
                            </div>
                </div>
               
                
                <asp:Calendar ID="Calendar2" runat="server" 
                    
                    
                    
                    style="top: 532px; left: 629px; position: absolute; height: 156px; width: 209px; right: 113px;" 
                    Visible="False" onselectionchanged="Calendar2_SelectionChanged" 
                    >
                </asp:Calendar>
               
                
                <asp:CompareValidator ID="cvNone" runat="server" 
        ControlToValidate="TextBox13" ErrorMessage="CompareValidator" 
        style="top: 795px; left: 511px; position: absolute; height: 13px; width: 151px" 
        ValueToCompare="-Select--" Visible="False"></asp:CompareValidator>
               
                
                <asp:Button ID="btnUpdate" runat="server" 
                    style="top: 1012px; left: 453px; position: absolute; height: 29px; width: 80px" 
                    Text="Update" onclick="Button1_Click" />
               <asp:Button ID="btnDateStart" runat="server" 
                    style="top: 463px; left: 587px; position: absolute; width: 32px" 
                    Text="&gt;&gt;"  CausesValidation="False" 
                    Visible="False" onclick="btnDateStart_Click" />
                    <asp:Button ID="btnDateEndDate" runat="server" 
                    style="top: 519px; left: 589px; position: absolute; height: 22px; width: 32px" 
                    Text="&gt;&gt;"  CausesValidation="False" 
                    Visible="False" onclick="btnDateEndDate_Click" />
                
                <asp:Calendar ID="Calendar1" runat="server" 
                    
                    
                    
                    style="top: 460px; left: 626px; position: absolute; height: 156px; width: 209px; bottom: 333px;" 
                    Visible="False" onselectionchanged="Calendar1_SelectionChanged" 
                    >
                </asp:Calendar>
                
                <asp:TextBox ID="txtInvisible" runat="server" 
                    style="top: -61px; left: -82px; position: absolute; height: 22px; width: 128px"></asp:TextBox>
                
                
                
                <asp:TextBox ID="txtStoppageName2" runat="server" 
                    
                    
                    
                    
                    style="z-index: 1; left: 429px; top: 726px; position: absolute; height: 22px" 
                    ReadOnly="True"></asp:TextBox>
                <asp:RequiredFieldValidator ID="rfvMorningTime3" runat="server" 
                    ControlToValidate="txtMorningArrivalTime3" 
                    ErrorMessage="Please Provide The Morning Arrival Time" 
                    
                    
        
        style="z-index: 1; left: 726px; top: 867px; position: absolute; width: 230px" 
        Visible="False"></asp:RequiredFieldValidator>
                <asp:Button ID="btnEdit" runat="server" onclick="Button2_Click" 
                    style="top: 1022px; left: 300px; position: absolute; width: 92px; height: 26px;" 
                    Text="Edit" CausesValidation="False" Visible="False" />
                <asp:ObjectDataSource ID="ObjectDataSource2" runat="server" 
                    OldValuesParameterFormatString="original_{0}" SelectMethod="GetCar" 
                    TypeName="Pool">
                    <SelectParameters>
                        <asp:SessionParameter DefaultValue="2" Name="Emp_id" SessionField="LogIn" 
                            Type="Int32" />
                    </SelectParameters>
                </asp:ObjectDataSource>
                
                
                
                <asp:RequiredFieldValidator ID="rfvDateEnd" runat="server" 
                    ControlToValidate="txtDateEnd" ErrorMessage="Please Select A Date" 
                    
        
        style="z-index: 1; left: 502px; top: 556px; position: absolute; height: 15px;"></asp:RequiredFieldValidator>
                <asp:CompareValidator ID="cvDateEndPool" runat="server" 
                            ControlToCompare="txtDateStartRegCar" ControlToValidate="txtDateEnd" 
                            ErrorMessage="DateEndPoolMustBe&gt;=DateStartPool" Operator="GreaterThanEqual" 
                            style="z-index: 1; left: 399px; top: 543px; position: absolute; height: 32px;" 
                            Type="Date"></asp:CompareValidator>
                <asp:RequiredFieldValidator ID="rfvMorningTime1" runat="server" 
                    ControlToValidate="txtMorningArrivalTime1" 
                    ErrorMessage="Please provide the morning arrival time" 
                    
        
        
        style="z-index: 1; left: 730px; top: 670px; position: absolute; width: 208px"></asp:RequiredFieldValidator>
                
                    
            <asp:CompareValidator ID="CompareValidator2" runat="server" 
            ControlToCompare="txtMorningArrivalTime1" ControlToValidate="txtMorningArrivalTime2" 
            ErrorMessage="Time of 2 Stoppage can't be Same" Operator="NotEqual" 
            
            
            
            
        
        style="z-index: 1; left: 744px; top: 686px; position: absolute; height: 17px; width: 169px"></asp:CompareValidator>
            <asp:CompareValidator ID="CompareValidator3" runat="server" 
            ControlToCompare="txtMorningArrivalTime1" ControlToValidate="txtMorningArrivalTime3" 
            ErrorMessage="Time of 2 Stoppage can't be Same" Operator="NotEqual" 
            
            
            
        
        style="z-index: 1; left: 730px; top: 847px; position: absolute; height: 17px; width: 169px"></asp:CompareValidator>
            <asp:CompareValidator ID="CompareValidator1" runat="server" 
            ControlToCompare="txtMorningArrivalTime2" ControlToValidate="txtMorningArrivalTime3" 
            ErrorMessage="Time of 2 Stoppage can't be Same" Operator="NotEqual" 
            
            
            
            
        
        style="z-index: 1; left: 761px; top: 778px; position: absolute; height: 15px; width: 169px"></asp:CompareValidator>
                <asp:RegularExpressionValidator ID="RegularExpressionValidator1" 
                            runat="server" ControlToValidate="txtMorningArrivalTime1" 
                            ErrorMessage="Enter Time in Correct Format" 
                            style="top: 705px; left: 742px; position: absolute; height: 16px; width: 163px" 
                            
        ValidationExpression="^\d{1,2}[:]\d{2}([:]\d{2})?( [A][M]?)?$"></asp:RegularExpressionValidator>    
                    
        
                            
                    
                    
                    
        
                    

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
    <br /> <br />
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
    <br /> <br />
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


