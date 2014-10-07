using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Net.Mail;
using Microsoft.Office.Interop.Outlook;

public partial class ContactUs : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void Button1_Click1(object sender, EventArgs e)
    {
     
            string email;
            email = "402318@infosys.com";

            Application app = new Application();

            MailItem mItem = (MailItem)app.CreateItem(OlItemType.olMailItem);

            mItem.Subject = "Feedback By User";
            mItem.CC = "402312@infosys.com;402364@infosys.com;401986@infosys.com";



            mItem.Body = txtFeedBack.Text;


            mItem.To = email;

            mItem.Send();
            Response.Write("<script>alert('Thanks For Sending the Response')</script>");

            Server.Transfer("Home.aspx");
    
           
        
       
    }
}
