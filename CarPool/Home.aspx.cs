using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Net.Mail;
using Microsoft.Office.Interop.Outlook;

public partial class _Default : System.Web.UI.Page 
{
    protected void Page_Load(object sender, EventArgs e)
    {
        lnlbtnRegister.Visible = false;
        
        Pool obj = new Pool();
        int LP=0;
        int LT=0;
        int BH=0;
        obj.StatusCounter(out LT,out LP,out BH);
        LP = LP + BH;
        LT = LT + BH;
        lblLiftTaker.Text =Convert.ToString(LT);
        lblLiftProvider.Text = Convert.ToString(LP);
        obj.updateavailableseats();
        int ret;
        DataSet ds = obj.FrontGridview(out ret);


        GridView1.DataSource = ds;
        GridView1.DataBind();


        if (Session["LogIn"] != null)
        {

            lblHomeID.Text = Convert.ToString(Session["LogIn"]);
            
            lblUserName.Visible = false;
            lblPassword.Visible = false;

            txtUserName.Visible = false;
            txtPassword.Visible = false;
            btnLogIn.Visible = false;
            lbLogOut.Visible = true;
            Image1.Visible = false;
            hlSignup.Visible = false;
            hlForgot.Visible = false;
            if (Session["Status"].ToString() == "LP")
            {

                lnlbtnRegister.Visible = true;


            }
            else if (Session["Status"].ToString() == "BH")
            {
                lnlbtnRegister.Visible = true;

            }


            if (Session["Update"] != null)
            {
                lblUpdateStatus.Visible = false;
                ddlStatus.Visible = false;
            }


        }
        else
        {
            lblHomeID.Visible = false;
            lblHeadHome.Visible = false;
            lbLogOut.Visible = false;
            lblUpdateStatus.Visible = false;
            ddlStatus.Visible = false;



        }
    }
    protected void btnLogIn_Click(object sender, EventArgs e)
    {
        Pool obj = new Pool();
        int ret1;
        String Status;

        ret1 = obj.LogIn(Convert.ToInt32(txtUserName.Text), txtPassword.Text, out Status);

        if (ret1 == 1)
        {
            Session["LogIn"] = txtUserName.Text;
            Session["Status"] = Status;
            Response.Write("<script>alert('You are successfully LogIn')</script>");

            Pool obj1 = new Pool();
            int reset;
            obj1.Reset(Convert.ToInt32(Session["LogIn"]), out reset);
            if (reset == 0)
            {
                Response.Write("<script>alert('Your Have to Change Your Password First ')</script>");
                Server.Transfer("Reset.aspx");
            }
            Server.Transfer("Home.aspx");



        }
        else
        {
            Response.Write("<script>alert('Username or Password are not Correct')</script>");

            Server.Transfer("LogIn.aspx");
        }
    }
    protected void LinkButton1_Click(object sender, EventArgs e)
    {
        Session.Clear();
        Server.Transfer("Home.aspx");
    }
    protected void DropDownList1_SelectedIndexChanged(object sender, EventArgs e)
    {
        Pool obj = new Pool();
        int ret1;
        ret1 = obj.UpdateStatus(Convert.ToInt32(Session["LogIn"]), Convert.ToString(ddlStatus.SelectedValue));

        if (ret1 == 1)
        {
            Session["Status"] = Convert.ToString(ddlStatus.SelectedValue);
            Session["Update"] = 1;

            Response.Write("<script>alert('Now Your Status is Updated as " + ddlStatus.SelectedValue + "')</script>");

            Server.Transfer("Home.aspx");


        }
        else
        {
            Response.Write("<script>alert('Not Updated')</script>");
            Server.Transfer("Home.aspx");

        }
    }
    protected void LinkButton1_Click1(object sender, EventArgs e)
    {
        Response.Redirect("RegisterCar.aspx");
    }
}
