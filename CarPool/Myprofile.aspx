<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Myprofile.aspx.cs" Inherits="Myprofile" %>
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
document.body.style.background="url('watermark1.jpg') opacity:0.3 filter:alpha(opacity=40) right bottom no-repeat fixed"

</script>
	<form id="form1" runat="server">
	 <asp:ScriptManager ID="ScriptManager1" runat="server">
    </asp:ScriptManager>
    
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
      <asp:Label ID="lblMyProfile" runat="server" Font-Bold="True" Font-Size="Large" 
                    style="top: 138px; left: 414px; position: absolute; height: 17px; width: 172px" 
                    Text="My Profile"></asp:Label>
    <br />
    <asp:Label ID="lblEmployeeId" runat="server" Font-Bold="True" Font-Size="Medium" 
                            style="top: 230px; left: 255px; position: absolute; height: 18px; width: 134px; right: 562px;" 
                            Text="Employee Id"></asp:Label>
                             <asp:LinkButton ID="LinkButton1" runat="server" onclick="LinkButton1_Click" 
                            
        style="top: 143px; left: 768px; position: absolute; height: 15px; width: 60px" 
        ForeColor="#FF5050" CausesValidation="False">Log Out</asp:LinkButton>
        <asp:Label ID="Label10" runat="server" ForeColor="#FF3300" 
        style="top: 421px; left: 412px; position: absolute; height: 21px; width: 24px" 
        Text="+91"></asp:Label>
                        <asp:TextBox ID="txtProfileEmployeeId" runat="server" 
                            
                            
                            
                            
                            style="top: 229px; left: 449px; position: absolute; height: 22px; width: 128px; bottom: 271px;" 
                            ReadOnly="True"></asp:TextBox>
                    <asp:Label ID="lblProfileUserName" runat="server" 
        Font-Bold="True" Font-Size="Medium" 
                            style="top: 292px; left: 253px; position: absolute; height: 16px; width: 134px" 
                            Text="Username"></asp:Label>
                        <asp:TextBox ID="txtProfileUserName" runat="server" 
                            
                            
                            
                            style="top: 287px; left: 450px; position: absolute; height: 22px; width: 128px" 
                            ReadOnly="True"></asp:TextBox>
                            <asp:Label ID="lblPassword" runat="server" 
        Font-Bold="True" Font-Size="Medium" 
                            style="top:353px; left: 256px; position: absolute; height: 16px; width: 134px" 
                            Text="Password"></asp:Label>
                        <asp:TextBox ID="txtProfilePassword" runat="server" 
                            
                            
                            
                            
                            style="top: 354px; left: 450px; position: absolute; height: 21px; width: 128px" 
                            ReadOnly="True"></asp:TextBox>
                            <asp:CustomValidator ID="cvUserName" runat="server" ControlToValidate="txtPassw"
                            
        ErrorMessage="Password must Contain atleast 6 characters" 
        ClientValidationFunction="CheckUserID" 
        
        
        
        
        
        style="top: 383px; left: 450px; position: absolute; height: 15px; width: 229px;"></asp:CustomValidator>
                              <asp:TextBox ID="txtProfileContactNo" runat="server" 
                            
                            
                            
                            
                            
                            
                            style="top: 416px; left: 451px; position: absolute; height: 25px; width: 133px" 
                            ReadOnly="True"></asp:TextBox>
   
                            <asp:FilteredTextBoxExtender ID="ftbe" runat="server"
    TargetControlID="txtProfileContactNo"         
    FilterType="Numbers" FilterMode="ValidChars"
    />
                            <asp:CustomValidator ID="CustomValidator1" 
        runat="server" ControlToValidate="txtProfileContactNo"
                            
        ErrorMessage="Contact Number Must be of 10 Digits" 
        ClientValidationFunction="CheckContactID" 
       
        
        
        
        style="top: 457px; left: 456px; position: absolute; height: 15px; width: 229px;"></asp:CustomValidator>
                            <asp:TextBox ID="txtPassw" runat="server" 
                            
                            
                            
                            
                            
                            style="top: 353px; left: 453px; position: absolute; height: 21px; width: 128px" 
                            TextMode="Password"></asp:TextBox>
                            <asp:Label ID="lblProfileContactNo" runat="server" 
        Font-Bold="True" Font-Size="Medium" 
                            style="top:417px; left: 251px; position: absolute; height: 16px; width: 134px" 
                            Text="Contact No"></asp:Label>
                            <asp:Label ID="lblEmailId" runat="server" 
        Font-Bold="True" Font-Size="Medium" 
                            style="top:487px; left: 251px; position: absolute; height: 16px; width: 134px" 
                            Text="Email Id"></asp:Label>
                        <asp:TextBox ID="txtEmailId" runat="server" 
                            
                            
                            
                            
                            
                            
                            
                            style="top: 490px; left: 451px; position: absolute; height: 20px; width: 128px; bottom: 359px;" 
                            ReadOnly="True"></asp:TextBox>
                            <asp:Label ID="lblStatus" runat="server" 
        Font-Bold="True" Font-Size="Medium" 
                            style="top:558px; left: 252px; position: absolute; height: 16px; width: 134px" 
                            Text="Status"></asp:Label>
                             <asp:Label ID="Label8" runat="server" 
                    style="top: 143px; left: 584px; position: absolute; height: 16px; width: 108px" 
                    Text="You are Login as" ForeColor="Red"></asp:Label>
                <asp:Label ID="Label9" runat="server" 
                    style="top: 144px; left: 702px; position: absolute; height: 15px; width: 49px" 
                    Text="Label" ForeColor="Red"></asp:Label>
                       <asp:RadioButtonList ID="rblProfileStatus" runat="server" 
                    style="top: 552px; left: 445px; position: absolute; height: 18px; width: 241px; right: 265px;" 
                            RepeatDirection="Horizontal">
                           <asp:ListItem Value="LT">Lift Taker</asp:ListItem>
                    <asp:ListItem Value="LP">Lift Provider</asp:ListItem>
                    <asp:ListItem Value="BH">Both</asp:ListItem>
                </asp:RadioButtonList>
                        <asp:Button ID="btnProfileUpdate" runat="server" onclick="Button1_Click" 
                            style="cursor:pointer;cursor:hand;top: 642px; left: 461px; position: absolute; height: 26px; width: 56px" 
                            Text="Update" Visible="False" />
                        <asp:Button ID="btnProfileEdit" runat="server" onclick="Button2_Click" 
                            style="cursor:pointer;cursor:hand;top: 344px; left: 794px; position: absolute; height: 25px; width: 119px" 
                            Text="Edit" CausesValidation="False" />
                        <asp:RequiredFieldValidator ID="rfvProfileContactNo" runat="server" 
                            ControlToValidate="txtProfileContactNo" ErrorMessage="PleaseSpecifyAContactNo." 
                            
        style="z-index: 1; left: 598px; top: 420px; position: absolute"></asp:RequiredFieldValidator>
                        <asp:RequiredFieldValidator ID="rfvProfileStatus" runat="server" 
                            ControlToValidate="rblProfileStatus" ErrorMessage="Plesae Choose a Status " 
                            
        style="z-index: 1; left: 601px; top: 491px; position: absolute; width: 149px"></asp:RequiredFieldValidator>
    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
        ControlToValidate="txtPassw" ErrorMessage="Choose a passowrd" 
        
        style="top: 363px; left: 606px; position: absolute; height: 13px; width: 94px"></asp:RequiredFieldValidator>
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
  <a href="TermsofServices.aspx" class='copyright'>Terms of Service</a> &nbsp;-&nbsp;
  <a href= "ContactUs.aspx"class='copyright'>Contact Us</a>
  
      </div>



</td>
</tr>
</table>



	



</form>
 <script language="javascript">
     function CheckUserID(source, args) {
         if (args.Value.length < 6)
             args.IsValid = false;
     }		
</script>
<script language="javascript">
    function CheckContactID(source, args) {
        if (args.Value.length != 10)
            args.IsValid = false;
    }		
</script>
</body>
</html>


