using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;

public partial class MyTrip : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
     
        if (Session["LogIn"] == null)
        {
            Response.Redirect("LogIn.aspx");

        }
        else if (Session["Status"].ToString() == "LP")
        {
            Response.Write("<script>alert('Status: Lift Provider.No Permission To Open This Page')</script>");


            Server.Transfer("Home.aspx");
        }

        Pool obj = new Pool();
        int ret;
        ret = obj.CountNumberofBooking(Convert.ToInt32(Session["LogIn"]));
        if (ret == -1)
        {
            Response.Write("<script>alert('error')</script>");


            Server.Transfer("Home.aspx");
        }
        if (ret == 0)
        {
            Response.Write("<script>alert('No Booking is Done by You')</script>");


            Server.Transfer("Home.aspx");
        }
        lblId.Text = Convert.ToString(Session["LogIn"]);
        lblShowLogOut.Visible = true;
    }
    protected void lblShowLogOut_Click(object sender, EventArgs e)
    {
        Session.Clear();

        Response.Redirect("Home.aspx");
    }
    protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
    {

    }
    protected void Button1_Click(object sender, EventArgs e)
    {
       
        Pool obj = new Pool();
        int status;
        DataSet ds = obj.ActiveBooking(Convert.ToInt32(Session["LogIn"]), out status);
        grdActivBooking.DataSource = ds;
        grdActivBooking.DataBind();
        if (status == 0)
        {
            Response.Write("<script>alert('No Current Booking For You')</script>");


            Server.Transfer("MyTrip.aspx");
        }
      
        grdMyBooking.Visible = false;
       
       
    }
  
  
    protected void GridView2_SelectedIndexChanged(object sender, EventArgs e)
    {
        Pool obj = new Pool();

        obj.CancelBooking(Convert.ToInt32(grdActivBooking.SelectedRow.Cells[1].Text), Convert.ToString(grdActivBooking.SelectedRow.Cells[2].Text));
        Response.Redirect("Home.aspx");
    }
}