<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Register.aspx.cs" Inherits="Register" %>
<%@ Register Assembly="AjaxControlToolkit" Namespace="AjaxControlToolkit" TagPrefix="asp"%>

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
        <asp:TextBox ID="txtInvisible" runat="server" 
                            
        
        
         style="top: -103px; left: 593px; position: absolute; height: 22px; width: 128px"></asp:TextBox>
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
    

<div class='content'>
<br />
  <br />
      <img src="signup48.gif" border='0' class='icon_big' />
  <div class='page_header'>Create Your Account<br />
      </div>
  <div>Welcome to the CarPooling! To create your account, please provide the following information.<br />
  <br /></div>
  <br />
  <br />


   
        <asp:CustomValidator ID="cvUserName" runat="server" ControlToValidate="txtPassw"
                            
        ErrorMessage="Password must Contain atleast 6 characters" 
        ClientValidationFunction="CheckUserID" 
        OnServerValidate="cvUserName_ServerValidate" 
        
        
        style="top: 362px; left: 269px; position: absolute; height: 15px; width: 229px;"></asp:CustomValidator>
<asp:CustomValidator ID="cvNumber" runat="server" ControlToValidate="txtContact"
                            
        ErrorMessage="Contact Number Must be of 10 Digits" 
        ClientValidationFunction="CheckContactID" 
       
        
        
        
        style="top: 532px; left: 273px; position: absolute; height: 15px; width: 229px;"></asp:CustomValidator>
</Script>

    </div>

    
  
    </div>

    
  
</div>











<div style='clear: both;'>
    <br />
         
                        <asp:Label ID="lblProfileempId" runat="server" 
        Font-Bold="True" Font-Size="Medium" 
                            style="top: 246px; left: 87px; position: absolute; height: 22px; width: 134px; right: 730px;" 
                            Text="Employee Id"></asp:Label>
                        <asp:TextBox ID="txtEmployeeId" runat="server" 
                            
                            
                            
                            
                            
                            
                            
        
        style="top: 243px; left: 296px; position: absolute; height: 22px; width: 128px; bottom: 332px;" 
        ReadOnly="True"></asp:TextBox>
                        <asp:TextBox ID="txtPassw" runat="server" 
                            style="top: 330px; left: 299px; position: absolute; height: 22px; width: 128px" 
                            TextMode="Password"></asp:TextBox>
                            <asp:ScriptManager ID="ScriptManager1" runat="server">
    </asp:ScriptManager>
                            <asp:PasswordStrength ID="ps" runat="server" 
        PreferredPasswordLength="10" MinimumNumericCharacters="0" 
        MinimumSymbolCharacters="0" MinimumLowerCaseCharacters="0" 
        MinimumUpperCaseCharacters="0" StrengthIndicatorType="Text" 
        PrefixText="Strength" DisplayPosition="BelowLeft" TargetControlID="txtPassw"></asp:PasswordStrength>
                         <asp:FilteredTextBoxExtender ID="ftbe" runat="server"
    TargetControlID="txtContact"         
    FilterType="Numbers" FilterMode="ValidChars"
    />
    <asp:TextBox ID="txtConfirmPassw" runat="server" 
                            style="top:425px; left: 304px; position: absolute; height: 22px; width: 128px" 
                            TextMode="Password"></asp:TextBox>
                          
                         
                            <asp:Label ID="lblProfilePassword" runat="server" 
        Font-Bold="True" Font-Size="Medium" 
                            style="top:332px; left: 86px; position: absolute; height: 20px; width: 134px; right: 731px;" 
                            Text="Password"></asp:Label>
    <asp:TextBox ID="txtContact" runat="server" 
                            
                            
                            
                            
                            
        
        
        style="top: 499px; left: 308px; position: absolute; height: 21px; width: 128px"></asp:TextBox>
        <asp:Label ID="Label10" runat="server" ForeColor="#FF3300" 
        style="top: 503px; left: 277px; position: absolute; height: 16px; width: 24px" 
        Text="+91"></asp:Label>
        <asp:Label ID="lblConfirmPassword" runat="server" Font-Bold="True" Font-Size="Medium" 
                            style="top:427px; left: 77px; position: absolute; height: 16px; width: 157px; right: 717px;" 
                            Text="Confirm Password"></asp:Label>
                            <asp:Label ID="lblContact" runat="server" 
        Font-Bold="True" Font-Size="Medium" 
                            style="top:507px; left: 81px; position: absolute; height: 16px; width: 134px" 
                            Text="Contact No"></asp:Label>
                            <asp:Label ID="lblStatus" runat="server" 
        Font-Bold="True" Font-Size="Medium" 
                            style="top:244px; left: 483px; position: absolute; height: 16px; width: 134px" 
                            Text="Status"></asp:Label>
                       <asp:RadioButtonList ID="rblStatus" runat="server" 
                    style="top: 235px; left: 667px; position: absolute; height: 18px; width: 231px" 
                            RepeatDirection="Horizontal">
                    <asp:ListItem Value="LP">Lift Provider</asp:ListItem>
                    <asp:ListItem Value="LT">Lift Taker</asp:ListItem>
                           <asp:ListItem Value="BH">Both</asp:ListItem>
                </asp:RadioButtonList>
                        <asp:Button ID="btnRegister" runat="server" onclick="Button1_Click1" 
                            style="cursor:pointer;cursor:hand;top: 620px; left: 475px; position: absolute; height: 26px; width: 93px" 
                            Text="Register Me" />
    <asp:CompareValidator ID="cvCheckNum" runat="server" 
        ControlToCompare="txtInvisible" ErrorMessage="Please Enter the Right Number" 
        
        style="top: 576px; left: 686px; position: absolute; height: 16px; width: 155px" 
        ControlToValidate="txtNumber"></asp:CompareValidator>
    <asp:Label ID="lblRandom" runat="server" 
        
        style="top: 547px; left: 690px; position: absolute; height: 20px; width: 53px" 
        BackColor="#333300" Font-Bold="True" ForeColor="Red"></asp:Label>
    <br />
      <asp:Label ID="Label1" runat="server" Font-Bold="True" Font-Size="Large" 
                    style="top: 135px; left: 424px; position: absolute; height: 21px; width: 106px; right: 421px;" 
                    Text="Register"></asp:Label>
                    <asp:RequiredFieldValidator ID="rfvStatus" runat="server" 
                            ErrorMessage="Please Choose A ContactNo." 
                            
                            style="z-index: 1; left: 695px; top: 280px; position: absolute; width: 173px" 
                            ControlToValidate="rblStatus"></asp:RequiredFieldValidator>
                            <asp:RequiredFieldValidator ID="rfvAnswer" runat="server" 
                            ErrorMessage="Please Enter Security Answer" 
                            
                            style="z-index: 1; left: 681px; top: 468px; position: absolute; width: 173px" 
                            ControlToValidate="txtAnswer"></asp:RequiredFieldValidator>
                        <asp:RequiredFieldValidator ID="rfvContact" runat="server" 
                            ErrorMessage="Please Choose A ContactNo." 
                            
                            style="z-index: 1; top: 548px; position: absolute; width: 150px; left: 303px; height: 18px;" 
                            ControlToValidate="txtContact"></asp:RequiredFieldValidator>
                        <asp:RequiredFieldValidator ID="rfvProfilePassword" runat="server" 
                            ErrorMessage="Please Choose A Password" 
                            
                            style="z-index: 1; left: 271px; top: 374px; position: absolute; width: 164px; bottom: 257px;" 
                            ControlToValidate="txtPassw"></asp:RequiredFieldValidator>
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
                            ErrorMessage="Please Choose A Password" 
                            
                            style="z-index: 1; left: 302px; top: 463px; position: absolute; width: 135px" 
                            ControlToValidate="txtConfirmPassw"></asp:RequiredFieldValidator>
        <asp:CompareValidator ID="cvSecurityQues" runat="server" 
                            ErrorMessage="Please Select a Security Question" Operator="NotEqual" 
                            style="z-index: 1; left: 680px; top: 372px; position: absolute; width: 185px;" 
                            ValueToCompare="--Select--" 
        ControlToValidate="ddlSecurityQuestion"></asp:CompareValidator>
                        <asp:DropDownList ID="ddlSecurityQuestion" runat="server" 
                            
                            style="top: 333px; left: 678px; position: absolute; height: 69px; width: 184px" 
                            onselectedindexchanged="DropDownList1_SelectedIndexChanged" 
                            AppendDataBoundItems="True">
                            <asp:ListItem Value="--Select--">--Select--</asp:ListItem>
                            <asp:ListItem>What is Your Pets Name</asp:ListItem>
                            <asp:ListItem>What is Your First School Name</asp:ListItem>
                            <asp:ListItem>What is Your First Vehicle</asp:ListItem>
                            <asp:ListItem>What is Your Favourite Hobby</asp:ListItem>
                            <asp:ListItem>What is Your Favourite Sports</asp:ListItem>
                            <asp:ListItem>What is Your Favourite Teacher Name</asp:ListItem>
                            <asp:ListItem>What is name of Hospital Where You Born</asp:ListItem>
                            <asp:ListItem>What is Your Favourite Sports Person</asp:ListItem>
                        </asp:DropDownList>
                        <asp:Label ID="lblSecurityQues" runat="server" 
        Font-Bold="True" Font-Size="Medium" 
                            style="top: 337px; left: 477px; position: absolute; height: 21px; width: 156px" 
                            Text="Security Question"></asp:Label>
                            <asp:Label ID="lblSecurityAns" runat="server" 
        Font-Bold="True" Font-Size="Medium" 
                            style="top: 423px; left: 474px; position: absolute; height: 15px; width: 141px" 
                            Text="Security Answer"></asp:Label>
                            <asp:Label ID="lblShowNumber" runat="server" 
        Font-Bold="True" Font-Size="Medium" 
                            style="top: 509px; left: 470px; position: absolute; height: 15px; width: 207px" 
                            Text="Enter the Shown Number"></asp:Label>
                        <asp:TextBox ID="txtAnswer" runat="server" 
                            
        
        style="top: 416px; left: 682px; position: absolute; height: 22px; width: 128px"></asp:TextBox>
        <asp:TextBox ID="txtNumber" runat="server" 
                            
        
        
        style="top: 505px; left: 686px; position: absolute; height: 22px; width: 128px"></asp:TextBox>
    <asp:LoginName ID="LoginName1" runat="server" Visible="False" />
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
    <asp:CompareValidator ID="CvConfirmPassword" runat="server" 
        ControlToCompare="txtPassw" ControlToValidate="txtConfirmPassw" 
        ErrorMessage="Password Doesnot Matches" 
        
        style="top: 463px; left: 443px; position: absolute; height: 16px; width: 144px"></asp:CompareValidator>
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


                            <asp:RequiredFieldValidator ID="rfvNumber" runat="server" 
                            ErrorMessage="Please Enter the Number" 
                            
                            style="z-index: 1; left: 771px; top: 544px; position: absolute; width: 145px; height: 19px; bottom: 197px;" 
                            ControlToValidate="txtNumber"></asp:RequiredFieldValidator>
                        

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
 <script language="javascript">
     function CheckUserID(source, args) {
         if (args.Value.length < 6)
             args.IsValid = false;
     }		
</script>
<script language="javascript">
    function CheckContactID(source, args) {
        if (args.Value.length !=10 )
            args.IsValid = false;
    }		
</script>
</body>
</html>



