<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Help.aspx.cs" Inherits="faq" %>


<!DOCTYPE html 
	PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" 
	"http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns='http://www.w3.org/1999/xhtml'>
<head>
<title>CoolPool.co.in</title>
<%--<base href='http://www.carpooling.co.in/public/' />--%>
<%--<meta http-equiv='Content-Type' content='text/html; charset=UTF-8' />
<meta http-equiv="X-UA-Compatible" content="IE=7" /> --%>
<meta name='Description' content="If you need help, the answer to your question is likely to be found on this page." />


<link rel="stylesheet" href="styles_global.css" title="stylesheet" type="text/css" />  
<link rel="stylesheet" href="styles.css" title="stylesheet" type="text/css" />  
<script type="text/javascript" src="http://ajax.googleapis.com/ajax/libs/jquery/1.3.2/jquery.min.js"></script>
<script type="text/javascript" src="./include/js/mootools12-min.js"></script>

<script type="text/javascript" src="./include/js/core-min.js"></script>





<script type="text/javascript">
<!--
  // ADD TIP FUNCTION
  window.addEvent('load', function()
  {
    var Tips1 = new Tips($$('.Tips1'));
  });
//-->
</script>

<style type='text/css'>    
    .style2
    {
        width: 225px;
    }
</style>
<style type='text/css'></style>

</head>
<body>
<script language="JavaScript1.2">



if (document.all||document.getElementById)
document.body.style.background="url('') opacity:0.3 filter:alpha(opacity=40) white center no-repeat fixed"

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
    <a href="Map.aspx" class='top_menu_item'>
      City Map   </a> </div>
  </div>
<div class='top_menu_link_container_end'>
  
    <div class='top_menu_link'>
    
     &nbsp;   </div>
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

    

<img src="help48.gif" border='0' class='icon_big'>
<div class='page_header'>Frequently Asked Questions</div>
<div>If you need help, the answer to your question is likely to be found on this page.</div>
<br />
<br />


<script type="text/javascript">
<!-- 
  function faq_show(id) 
  {
    if($(id).style.display == 'block') {
      $(id).style.display = 'none';
    } 
    else {
      $(id).style.display = 'block';
      $('ajaxframe').src = 'Help.aspx?faq_id='+id;
    }
  }

</script>

      <div class='header'>Your Account</div>
          <div class='faq_questions'>
      <a href="javascript:void(0);" onClick="faq_show('1');">I can&#039;t login, or I forgot my username or password.</a><br>
      <div class='faq' <%--style='display: none;' id='1'--%>>If you can&#39;t login, check to 
          make sure that your &quot;caps lock&quot; key is off. Your username and password are CaSe 
          SeNsItIvE. If you still cannot login, you can use Forgot My Password option.</div>
      </div>
         
          <div class='faq_questions'>
      <a href="javascript:void(0);" onClick="faq_show('9');">How can I update my profile?</a><br>
      <div class='faq' <%--style='display: none;' id='9'--%>>To update your profile, you must visit the <a href="Myprofile.aspx">
          My Profile </a> &nbsp;page.</div>
      </div>
          <div class='faq_questions'>
      <a href="javascript:void(0);" onClick="faq_show('10');">How can I update my status viz LT,LP,BH?</a><br>
      <div class='faq' <%--style='display: none;' id='10'--%>>You can update your status onblur Home Page and onblur My Profile Page.</div>
      </div>
          <div class='faq_questions'>
      <a href="javascript:void(0);" onClick="faq_show('11');">How can I report an error or other problem with the site?</a><br>
      <div class='faq' <%--style='display: none;' id='11'--%>>To report an error or problem with the site, you can contact us at our Id-402318@infosys.com.402312@infosys.com,402364@infosys.com.401986@infosys.com</div>
      </div>
        <br>
        <div class='header'>Adding Vehicle or Checking Booking</div>
          <div class='faq_questions'>
      <a href="javascript:void(0);" onClick="faq_show('12');">How can I a</a><a 
                  href="javascript:void(0);">dd a New Vehicle to my Existing List of Pooled 
              Vehicles.</a><br>
      <div class='faq' <%--style='display: none;' id='12'--%>>You can Register your New 
          vehicle either through Home Page or My Wheels Page.</div>
      </div>
          <div class='faq_questions'>
      <a href="javascript:void(0);" onClick="faq_show('13');">How can I C</a><a 
                  href="javascript:void(0);">heck My Previous Bookings?</a><br>
      <div class='faq' <%--style='display: none;' id='13'--%>>You can Check Your Car 
          Booking through My Wheels Page or Your Booking for any Car through My Trip Page.</div>
      </div>
        <br>
        <div class='header'>Privacy and Quick Pool</div>
          <div class='faq_questions'>
      <a href="javascript:void(0);" onClick="faq_show('14');">Is my information kept private?</a><br>
      <div class='faq' <%--style='display: none;' id='14'--%>>Absolutely. We do not share any personally identifying information about you to any third party.</div>
      </div>
          <div class='faq_questions'>
      <a href="javascript:void(0);" onclick="faq_show('15');">How can I C</a><a 
                  href="javascript:void(0);">hange the Stoppages of My car?</a><br>
      <div class='faq' <%--style='display: none;' id='15'--%>>You can Change your 
          Stoppages from Update Car Details Options on My Wheels Page only if there is no 
          Current Booking for that Particular Stoppage.</div>
      </div>
          <div class='faq_questions'>
                <a href="javascript:void(0);" onclick="faq_show('15');"> Can I Pool or Book Car for Current Day Only?</a><div class='faq' <%--style='display: none;' id='16'--%>>Yes,You can Pool or Book a Car from Quick Pool Page.</div>
      </div>
        <br>
  
    
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





</body>
</html>
