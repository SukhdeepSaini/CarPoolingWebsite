using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Net.Mail;
using Microsoft.Office.Interop.Outlook;

public partial class Forgot_Password : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        txtSecurityQues.Visible = false;
        txtSecurityAns.Visible = false;
        lblSecurityQues.Visible = false;
        lblSecurityAns.Visible = false;
        btnClick.Visible = false;

        txtSecurityQues.Enabled = false;
        txtSecurityAns.Enabled = false;

        rfvSecAns.Enabled = false;



    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        Pool obj = new Pool();
        String SecurityQues;
        int ret;
        ret = obj.GetSecurityQues(Convert.ToInt32(txtEmpId.Text), out SecurityQues);

        if (ret == 0)
        {
            Response.Write("<script>alert('You are Not Registered on our website')</script>");
            Server.Transfer("Forgot Password.aspx");
        }
        txtSecurityQues.Text = Convert.ToString(SecurityQues);
        txtEmpId.ReadOnly = true;
        txtSecurityQues.ReadOnly = true;
        btnClickMe.Visible = false;
        txtSecurityQues.Visible = true;
        txtSecurityAns.Visible = true;
        txtSecurityQues.Enabled = true;
        txtSecurityAns.Enabled = true;



        lblSecurityQues.Visible = true;
        lblSecurityAns.Visible = true;
        btnClick.Visible = true;
    }
    protected void Button2_Click(object sender, EventArgs e)
    {
        btnClickMe.Visible = false;
        txtSecurityQues.Visible = false;
        txtSecurityAns.Visible = false;
        lblSecurityQues.Visible = false;
        lblSecurityAns.Visible = false;

        btnClick.Visible = false;
        rfvSecAns.Enabled = true;
        Pool obj = new Pool();
        
        int ret1;
        ret1 = obj.CheckSecurityAns(Convert.ToInt32(txtEmpId.Text), txtSecurityAns.Text);
        if (ret1 == 0)
        {
            Response.Write("<script>alert('Your Answer Is Wrong')</script>");
            Server.Transfer("Forgot Password.aspx");
        }
        string Password;
        Random rand = new Random();
        Password = Convert.ToString(rand.Next(100000, 999999));
        
        obj.UpdatePassword(Convert.ToInt32(txtEmpId.Text), Password);
        string email;
        
        email = Convert.ToInt32(txtEmpId.Text) + "@infosys.com";

        
        Application app = new Application();

        MailItem mItem = (MailItem)app.CreateItem(OlItemType.olMailItem);

        mItem.Subject = "Your Password is Changed";

        mItem.Body = "Your Password is Reset and Your New Password is  " + Password;


        mItem.To = email;

        mItem.Send();

        Response.Write("<script>alert('Check Your Mail')</script>");
        Server.Transfer("Home.aspx");




    }
    protected void Button3_Click(object sender, EventArgs e)
    {

    }
}
