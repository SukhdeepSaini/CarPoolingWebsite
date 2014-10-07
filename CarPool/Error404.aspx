<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Error404.aspx.cs" Inherits="Error404" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title> Error occured ... File not found.</title>
    <style type="text/css">
    .style7778
     {
         background-color:#f3f3f3;
            height: 565px;
        }
     </style>
</head>
<body>
    <form id="form1" runat="server">
    <div class="style7778">
    
        <asp:Image ID="imgError" runat="server" ImageUrl="Capture3.JPG" 
            
            
            style="z-index: 1; left: 9px; top: 5px; position: relative; height: 399px" />
        <br />    
    <br />
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:Label ID="lblGoBack" runat="server" Text="To go to home page .. Click " 
            Font-Bold="True" Font-Italic="True" ForeColor="#666666"></asp:Label>
        <asp:LinkButton ID="lnlHome" runat="server" Font-Bold="True" 
            Font-Underline="True" PostBackUrl="~/Home.aspx" Font-Italic="True">here</asp:LinkButton>
    <br />
            <asp:LinkButton ID="LinkButton2" runat="server" Font-Bold="True" 
            Font-Underline="False" PostBackUrl="~/About Us.aspx" Font-Italic="True" 
            
            
            style="z-index: 1; left: 780px; top: 559px; position: absolute; width: 135px">Car Pool Designers</asp:LinkButton>
    
        <asp:Label ID="Label2" runat="server" Font-Bold="True" Font-Italic="True" 
            style="z-index: 1; left: 780px; top: 529px; position: absolute; height: 19px; width: 105px" 
            Text="Developed by :-"></asp:Label>
    
    </div>
    </form>
</body>
</html>
