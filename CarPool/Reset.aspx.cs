using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Reset : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        Pool obj1 = new Pool();
        int reset;

        //Check Whether User is Authorised to View this Page or Not.

        obj1.Reset(Convert.ToInt32(Session["LogIn"]), out reset);
        if (reset == 1)
        {
            Response.Write("<script>alert('Your are Not Authorised Person to Open this Page')</script>");
            Server.Transfer("Home.aspx");
        }
        if (reset == 2)
        {
            Response.Write("<script>alert('Your are Not Authorised Person to Open this Page')</script>");
            Server.Transfer("Home.aspx");
        }

    }
    protected void Button2_Click(object sender, EventArgs e)
    {
        int empid1 = Convert.ToInt32(Session["LogIn"]);
        Pool obj = new Pool();

        //Update the Password in DataBase

        obj.UpdateReset(empid1, Convert.ToString(txtPassword.Text));
        Response.Write("<script>alert('Your Password is Successfully Changed')</script>");
        Server.Transfer("Home.aspx");
    }
}
