using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Myprofile : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {


        if (Session["LogIn"] == null)
        {
            Response.Redirect("LogIn.aspx");
            LinkButton1.Visible = false;

        }
        Label9.Text = Convert.ToString(Session["LogIn"]);
        LinkButton1.Visible = true;
        txtPassw.Visible = false;
        Pool obj = new Pool();
        if (!Page.IsPostBack)
        {
            string Password, Status;
            long ContactNo;
            obj.ShowProfile(Convert.ToInt32(Session["LogIn"]), out Password, out ContactNo, out Status);
            txtProfileEmployeeId.Text = Convert.ToString(Session["LogIn"]);
            txtProfileUserName.Text = Convert.ToString(Session["LogIn"]);
            txtProfilePassword.Text = Password;
            txtProfileContactNo.Text = Convert.ToString(ContactNo);
            string email;
            email = txtProfileEmployeeId.Text + "@infosys.com";
            txtEmailId.Text = email;
            rblProfileStatus.Text = Status;
        }




    }




    protected void Button1_Click(object sender, EventArgs e)
    {
        Pool obj = new Pool();
        int ret1;
        ret1 = obj.Update(Convert.ToInt32(txtProfileEmployeeId.Text), txtPassw.Text, Convert.ToInt64(txtProfileContactNo.Text), Convert.ToString(rblProfileStatus.SelectedValue));

        if (ret1 == 1)
        {
            Session["Status"] = Convert.ToString(rblProfileStatus.SelectedValue);
            Response.Write("<script>alert('Successfully Updated')</script>");
            Server.Transfer("Home.aspx");

        }
        else
        {
            Response.Write("<script>alert('Not Updated')</script>");
            Server.Transfer("Myprofile.aspx");

        }

    }
    protected void Button2_Click(object sender, EventArgs e)
    {
        txtPassw.Visible = true;
        btnProfileUpdate.Visible = true;
        txtProfilePassword.Visible = false;


        txtProfileContactNo.ReadOnly = false;
        txtProfileContactNo.Text = " ";

        rblProfileStatus.SelectedValue = "";
        
        btnProfileEdit.Visible = false;



    }
    protected void LinkButton1_Click(object sender, EventArgs e)
    {
        Session.Clear();
        Server.Transfer("Home.aspx");
    }
}
