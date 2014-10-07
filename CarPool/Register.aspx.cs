using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Net.Mail;
using Microsoft.Office.Interop.Outlook;

public partial class Register : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        
        Session.Add("Name", HttpContext.Current.User.Identity.Name.Substring(11));
        txtEmployeeId.Text=Session["Name"].ToString();
        //Create the Random Number For checkIn Script
        Random rand = new Random();
        lblRandom.Text=Convert.ToString(rand.Next(100000, 999999));
        txtInvisible.Text = lblRandom.Text;

       

    }
    protected void Button1_Click1(object sender, EventArgs e)
    {
        Pool obj = new Pool();
        int ret1;
        string email;
        email = txtEmployeeId.Text + "@infosys.com";

        ret1 = obj.Register(Convert.ToInt32(txtEmployeeId.Text), txtPassw.Text, Convert.ToDouble(txtContact.Text), email, Convert.ToString(rblStatus.SelectedValue), Convert.ToString(ddlSecurityQuestion.SelectedItem), txtAnswer.Text);
        if (ret1 == 1)
        {


            Application app = new Application();

            MailItem mItem = (MailItem)app.CreateItem(OlItemType.olMailItem);

            mItem.Subject = "Successfully Registered";

            mItem.Body = "Thanks For Joining Our website ";

            mItem.To = email;

            mItem.Send();
            Response.Write("<script>alert('You are successfully registered')</script>");
            Server.Transfer("Home.aspx");


        }
        else
        {
            Response.Write("<script>alert('You are Already registered')</script>");
            Server.Transfer("Home.aspx");

        }

    }
    protected void DropDownList1_SelectedIndexChanged(object sender, EventArgs e)
    {

    }



    
    protected void cvUserName_ServerValidate(object source, ServerValidateEventArgs args)
    {
       
    }
}
