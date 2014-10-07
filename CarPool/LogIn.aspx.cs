using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class LogIn : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        
        if (!Page.IsPostBack)
        {
            
            txtLogInPassword.Text = "";

        }
        
    }
    protected void Button1_Click1(object sender, EventArgs e)
    {
        Pool obj = new Pool();
        int ret1;
        String Status;


        ret1 = obj.LogIn(Convert.ToInt32(txtLogInUserName.Text), txtLogInPassword.Text, out Status);

        if (ret1 == 1)
        {
            Session["LogIn"] = txtLogInUserName.Text;
            Session["Status"] = Status;

            Response.Write("<script>alert('You are successfully LogIn')</script>");

            Pool obj1 = new Pool();
            int reset;
            obj1.Reset(Convert.ToInt32(Session["LogIn"]), out reset);
            if (reset == 0)
            {
                Response.Write("<script>alert('Your Have to Change Your Password First')</script>");
                Server.Transfer("Reset.aspx");
            }

            Server.Transfer("Home.aspx");



        }
        else
        {
            Response.Write("<script>alert('Log In Credentials are Wrong')</script>");

            Server.Transfer("LogIn.aspx");
        }
    }
}
