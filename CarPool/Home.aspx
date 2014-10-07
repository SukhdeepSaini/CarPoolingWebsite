<%@ Page Language="C#" AutoEventWireup="true"  CodeFile="Home.aspx.cs" Inherits="_Default" %>

<!DOCTYPE html 
	PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" 
	"http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns='http://www.w3.org/1999/xhtml'>
<head runat="server">
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
    .style1
    {
        width: 198px;
    }
    .style2
    {
        width: 225px;
    }
</style>

</head>
<body >
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
    <img src="logocarpool.png" border='0'  /></a>
  </td>
 <td align='left' valign='bottom'>
 <marquee  scrollamount="5" 
direction="right" loop="true" style="width: 700px; " scrollamount="30" 
        scrolldelay="60" onMouseOver="this.stop();" onMouseOut="this.start();";
onMouseout="hideddrivetip()" 
        id="MARQUEE1" style="text-align: left; "  class="scrolling" >
        <asp:Label ID="Label5" runat="server" Text="Car Pooling-Good For Your Pocket and the Environment"  ForeColor="#CC0000" Font-Size="Large"></asp:Label>
        
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

    







<div style='float: left; width: 200px; height: 397px;'>

        <div class='header1' >Member Login
        </div>
    <div >
    
      <table cellpadding='0' cellspacing='0' align='center'>
      <tr>
        <td class="style1">
        <asp:Label ID="lblUserName"
                            runat="server" Text="UserName" 
                            
                            
                            
                
                
                style="top: 162px; left: 65px; position: absolute; height: 21px; width: 53px"></asp:Label>
          <asp:TextBox ID="txtUserName" runat="server" 
                                         
                            
                            
                
                
                
                
                
                
                
                
                
                style="  height: 18px; width: 167px; top: 190px; left: 60px; position: absolute;"></asp:TextBox>
        </td>
      </tr>
      <tr>
        <td style='padding-top: 6px;' class="style1">
          <asp:TextBox ID="txtPassword" runat="server" 
                            
                            
                            style="  height: 18px; width: 169px; top: 254px; left: 60px; position: absolute;" 
                            TextMode="Password"></asp:TextBox>
                            <asp:RequiredFieldValidator ID="rfvUserName" runat="server" 
                            ControlToValidate="txtUserName" ErrorMessage="Enter UserName" 
                            
                            
                            
                
                
                style="z-index: 1; top: 200px; position: absolute; height: 15px; left: 57px" 
                ></asp:RequiredFieldValidator>
                            <asp:RequiredFieldValidator ID="rfvPassword" runat="server" 
                            ControlToValidate="txtPassword" ErrorMessage="Enter Password" 
                            
                            
                            
                
                
                style="z-index: 1; top: 284px; position: absolute; height: 15px; left: 57px" 
                ></asp:RequiredFieldValidator>
                          <asp:LinkButton ID="lnlbtnRegister" runat="server" Font-Bold="True" 
                            Font-Size="Medium" ForeColor="#666699" onclick="LinkButton1_Click1" 
                            
                            
                            
                
                
                
                
                style="top: 211px; left: 64px; position: absolute; height: 15px; width: 163px">Register Your Car</asp:LinkButton>
               &nbsp;<asp:HyperLink ID="hlForgot" runat="server" NavigateUrl="~/Forgot Password.aspx" 
                            
                            style="top: 299px; left: 138px; position: absolute; height: 19px; width: 140px" 
                            ForeColor="#CC0000">Forgot Your Password</asp:HyperLink>
                            <asp:HyperLink ID="hlSignup" runat="server" NavigateUrl="~/Register.aspx" 
                            
                            style="top: 299px; left: 68px; position: absolute; height: 19px; width: 79px" 
                            ForeColor="#CC0000">Sign Up</asp:HyperLink>
                            <asp:Label ID="lblHomeID" runat="server" 
                            style="top: 161px; left: 168px; position: absolute; height: 18px; width: 51px" 
                            Text="Label" ForeColor="#666699"></asp:Label>
                            <asp:LinkButton ID="lbLogOut" runat="server" ForeColor="Red" 
                            onclick="LinkButton1_Click" 
                            
                            
                            
                            
                            
                
                
                
                
                
                style="top: 143px; left: 162px; position: absolute; height: 22px; width: 60px" 
                CausesValidation="False">Log Out</asp:LinkButton>
                            <asp:Button ID="btnLogIn" runat="server" Text="Log In"           
                
                
                
                
                style=" cursor:pointer;cursor:hand; height: 26px; width: 56px; top: 326px; left: 70px; position: absolute;" 
                onclick="btnLogIn_Click" />
             
            <asp:Image ID="Image1" runat="server" ImageUrl="~/help16.gif" 
                style="top: 301px; left: 117px; position: absolute; height: 14px; width: 14px" />
             
         <asp:Label ID="lblPassword" runat="server" Text="Password" 
                            
                            
                            
                
                style="top: 223px; left: 71px; position: absolute; height: 15px; width: 77px"></asp:Label>
                
        <img src="carpool1.gif" border='0' 
                style="width: 187px; height: 228px; margin-left: 3px" />
        </td>
      </tr>
          
      </table>
      
    
      
      
    </div>
    

    
      
    
  
     
   
   
    
  
</div>

<div style='float: left; width: 453px; padding: 0px 10px 0px 10px;'>

    <div style='padding: 5px 10px 0px 0px;'>
    <div class='page_header'>Welcome to the Coolpooling Network</div>
    This is a website which will facilitate the employees to efficiently pool their 
                            cars and commute to office.This website will allow the interested users to 
                            register for car pooling by providing appropriate details. ! <br /><br />        The user who wants a lift has to register for the site, 
                            Select for the source and destination of the journey and find a suitable car for 
                            him/her. After the selection of the car user will check for availability of 
                            seats based on which his request for journey would be accepted. The user will 
                            also be able to see all his belongings and there will be an option to cancel his 
                            booking. 
                            <br />
                            <br />
                            <br />
                              <div class='page_header'>WHAT IS IN IT FOR ME?</div>
                                
                                <li></li>Enable Convenient travel        
        <br />
        <li>Brodens Your Social Network</li>
        <li>Increase Productivity and Morale</li>
        <li>Reduces the Cost Involved in Repetitive or&nbsp; long distance Driving by 
            Sharing Cars.</li>
        <li>Bring Down Levels of Driving Stress.</li>
        <li>Reduces the number of Cars on the Road and there<br />
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp; by help to reduce Pollution.
            <br /></li>   
            <br /><br />
            <div class='page_header'>
                Common Etiquettes quettes</div>
        
        <li>Arrange Time Schedule and Pickup Points. </li>
        <li>Agree upon a route that is suitable for all. </li>
        <li>
            Donot opt Out of the team without notifying the Car Owner. </li>
        <li>Donot use the Car Sharing Medium to run personnel erands. 
            <br />
            <br />
            <br />
            
            <asp:Label ID="lblHeadHome" runat="server" 
                            style="top: 163px; left: 72px; position: absolute; height: 18px; width: 130px" 
                            Text="You are LogIn as" ForeColor="#666699"></asp:Label>
        </li>
    </div>

    
  
    <script type="text/javascript">

   


        //Specify the slider's width (in pixels)
        var sliderwidth = "450px"
        //Specify the slider's height
        var sliderheight = "60px"
        //Specify the slider's slide speed (larger is faster 1-10)
        var slidespeed = 3
        //configure background color:
        slidebgcolor = "#EAEAEA"

        //Specify the slider's images
        var leftrightslide = new Array()
        var finalslide = ''
     
        leftrightslide[0] = '<img src="1.jpg"  border=1 >'
        leftrightslide[1] = '<img src="2.jpg"  border=1>'
        leftrightslide[2] = '<img src="3.jpg" border=1>'
        leftrightslide[3] = '<img src="4.jpg" border=1>'
        leftrightslide[4] = '<img src="5.jpg" border=1>'
        leftrightslide[5] = '<img src="6.jpg" border=1>'
        leftrightslide[6] = '<img src="7.jpg" border=1>'
        leftrightslide[7] = '<img src="8.jpg" border=1>'
        leftrightslide[8] = '<img src="9.jpg" border=1>'
        leftrightslide[9] = '<img src="10.jpg" border=1>'
      
        leftrightslide[10] = '<img src="12.jpg" border=1>'
        leftrightslide[11] = '<img src="13.jpg" border=1>'
        
        leftrightslide[12] = '<img src="15.jpg" border=1>'

        //Specify gap between each image (use HTML):
        var imagegap = " "

        //Specify pixels gap between each slideshow rotation (use integer):
        var slideshowgap = 5


        ////NO NEED TO EDIT BELOW THIS LINE////////////

        var copyspeed = slidespeed
        leftrightslide = '<nobr>' + leftrightslide.join(imagegap) + '</nobr>'
        var iedom = document.all || document.getElementById
        if (iedom)
            document.write('<span id="temp" style="visibility:hidden;position:absolute;top:0px;left:-9000px">' + leftrightslide + '</span>')
        var actualwidth = ''
        var cross_slide, ns_slide

        function fillup() {
            if (iedom) {
                cross_slide = document.getElementById ? document.getElementById("test2") : document.all.test2
                cross_slide2 = document.getElementById ? document.getElementById("test3") : document.all.test3
                cross_slide.innerHTML = cross_slide2.innerHTML = leftrightslide
                actualwidth = document.all ? cross_slide.offsetWidth : document.getElementById("temp").offsetWidth
                cross_slide2.style.left = actualwidth + slideshowgap + "px"
            }
            else if (document.layers) {
                ns_slide = document.ns_slidemenu.document.ns_slidemenu2
                ns_slide2 = document.ns_slidemenu.document.ns_slidemenu3
                ns_slide.document.write(leftrightslide)
                ns_slide.document.close()
                actualwidth = ns_slide.document.width
                ns_slide2.left = actualwidth + slideshowgap
                ns_slide2.document.write(leftrightslide)
                ns_slide2.document.close()
            }
            lefttime = setInterval("slideleft()", 30)
        }
        window.onload = fillup

        function slideleft() {
            if (iedom) {
                if (parseInt(cross_slide.style.left) > (actualwidth * (-1) + 8))
                    cross_slide.style.left = parseInt(cross_slide.style.left) - copyspeed + "px"
                else
                    cross_slide.style.left = parseInt(cross_slide2.style.left) + actualwidth + slideshowgap + "px"

                if (parseInt(cross_slide2.style.left) > (actualwidth * (-1) + 8))
                    cross_slide2.style.left = parseInt(cross_slide2.style.left) - copyspeed + "px"
                else
                    cross_slide2.style.left = parseInt(cross_slide.style.left) + actualwidth + slideshowgap + "px"

            }
            else if (document.layers) {
                if (ns_slide.left > (actualwidth * (-1) + 8))
                    ns_slide.left -= copyspeed
                else
                    ns_slide.left = ns_slide2.left + actualwidth + slideshowgap

                if (ns_slide2.left > (actualwidth * (-1) + 8))
                    ns_slide2.left -= copyspeed
                else
                    ns_slide2.left = ns_slide.left + actualwidth + slideshowgap
            }
        }


        if (iedom || document.layers) {
            with (document) {
                document.write('<table border="0" cellspacing="0" cellpadding="0"><td>')
                if (iedom) {
                    write('<div style="position:relative;width:' + sliderwidth + ';height:' + sliderheight + ';overflow:hidden">')
                    write('<div style="position:absolute;width:' + sliderwidth + ';height:' + sliderheight + ';background-color:' + slidebgcolor + '" onMouseover="copyspeed=0" onMouseout="copyspeed=slidespeed">')
                    write('<div id="test2" style="position:absolute;left:0px;top:0px"></div>')
                    write('<div id="test3" style="position:absolute;left:-1000px;top:0px"></div>')
                    write('</div></div>')
                }
                else if (document.layers) {
                    write('<ilayer width=' + sliderwidth + ' height=' + sliderheight + ' name="ns_slidemenu" bgColor=' + slidebgcolor + '>')
                    write('<layer name="ns_slidemenu2" left=0 top=0 onMouseover="copyspeed=0" onMouseout="copyspeed=slidespeed"></layer>')
                    write('<layer name="ns_slidemenu3" left=0 top=0 onMouseover="copyspeed=0" onMouseout="copyspeed=slidespeed"></layer>')
                    write('</ilayer>')
                }
                document.write('</td></table>')
            }
        }
</script>


  
</div>










<div style='float: left; width: 200px; height: 194px;'>

    <div class='header'>Today's Trips</div>
      <marquee  scrollamount="5" 
direction="up" loop="true" style="width: 208px; height: 109px" scrollamount="30" 
        scrolldelay="90" onMouseOver="this.stop();" onMouseOut="this.start();" 
        id="MARQUEE1" style="text-align: left; "  class="scrolling" >
  <asp:GridView ID="GridView1" runat="server" 
       
        style=" height: 94px;  top: 161px; left: 700px; width: 192px;">
                                
                            
                            </asp:GridView></marquee>
                            <asp:Label ID="lblUpdateStatus" runat="server" 
                        style="top: 500px; left: 706px; position: absolute; height: 18px; width: 132px; " 
                        Text="Update Your Status"></asp:Label>
                            <asp:DropDownList ID="ddlStatus" runat="server" AutoPostBack="True" 
                        onselectedindexchanged="DropDownList1_SelectedIndexChanged" 
                        
                        style="top: 497px; left: 824px; position: absolute; height: 22px; width: 93px; right: 34px;" 
                        AppendDataBoundItems="True">
                        <asp:ListItem Value="0">--Select--</asp:ListItem>
                        <asp:ListItem Value="LP">Lift Provider</asp:ListItem>
                        <asp:ListItem Value="LT">Lift Taker</asp:ListItem>
                        <asp:ListItem Value="BH">Both</asp:ListItem>
                    </asp:DropDownList>
     
</br></br></br></br></br>
       
  
</div>



<div class='header2'  >Current Status

    <asp:Label ID="lblLiftShowTaker" runat="server" Text="Lift Taker" 
        
        
        
        
        
        
        
        style="top: 378px; left: 740px; position: absolute; height: 18px; width: 57px;"></asp:Label>
         <asp:Label ID="lblShowProvider" runat="server" Text="Lift Provider" 
        
        
        
        
        
        
        
        style="top: 421px; left: 740px; position: absolute; height: 16px; width: 71px"></asp:Label>
        <asp:Label ID="lblLiftProvider" runat="server" Text="Lift Taker" 
        
        
        
        
        
        
        style="top: 422px; left: 824px; position: absolute; height: 16px; width: 57px"></asp:Label>
          <asp:Label ID="lblLiftTaker" runat="server" Text="Lift Taker" 
        
        
        
        
        
        
        
        style="top: 379px; left: 825px; position: absolute; height: 18px; width: 57px"></asp:Label>
        </div>







<div style='clear: both;'></div>


   


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



	<script type="text/javascript">




</form>
</body>
</html>
