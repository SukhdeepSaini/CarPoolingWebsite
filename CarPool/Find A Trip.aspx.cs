using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;

public partial class Find_A_Trip : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        txtInvisible.Text = System.DateTime.Now.ToShortDateString();
        txtInvisible.Visible = true;

        if (Session["LogIn"] == null)
        {
            Response.Redirect("LogIn.aspx");


        }
        else if (Session["Status"].ToString() == "LP")
        {
            Response.Write("<script>alert('Status: Lift Provider.No Permission To Open This Page')</script>");


            Server.Transfer("Home.aspx");
        }
        Label4.Text = Convert.ToString(Session["LogIn"]);




    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        DateTime date1;
        DateTime date2;
        DateTime date3;
        date1 = Convert.ToDateTime(txtStartDate.Text);
        date2 = Convert.ToDateTime(txtEndDate.Text);
        date3 = date1.AddDays(20);
        if (date2 > date3)
        {
            Response.Write("<script>alert('You cannot Book Any Car for More than 21Days')</script>");


            Server.Transfer("Find A Trip.aspx");
        }
        if (Convert.ToString(ddlFindATripLocation.SelectedValue) == "AllLocations")
        {
            Pool obj1 = new Pool();
            int ret1;
            DataSet ds1 = obj1.Gridalltrip(Convert.ToString(rblStatus.SelectedValue), Convert.ToDateTime(txtStartDate.Text), Convert.ToDateTime(txtEndDate.Text), out ret1);
            grdFindAllTrip.DataSource = ds1;
            grdFindAllTrip.DataBind();
            if (ret1 == 1)
            {
                Response.Write("<script>alert('No Car is Available')</script>");


                Server.Transfer("Find A Trip.aspx");
            }
        }
        else
        {
            Pool obj = new Pool();
            int ret;
            DataSet ds = obj.Gridmytrip(ddlFindATripLocation.SelectedValue, Convert.ToString(rblStatus.SelectedValue), Convert.ToDateTime(txtStartDate.Text), Convert.ToDateTime(txtEndDate.Text), out ret);
            grdFindAllTrip.DataSource = ds;
            grdFindAllTrip.DataBind();

            if (ret == 1)
            {
                Response.Write("<script>alert('No Car is Available')</script>");


                Server.Transfer("Find A Trip.aspx");
            }
        }
    }
    protected void LinkButton1_Click(object sender, EventArgs e)
    {
        Session.Clear();
        Response.Redirect("Home.aspx");
    }
    protected void Button2_Click(object sender, EventArgs e)
    {
        Calendar1.Visible = true;
    }
    protected void Button3_Click(object sender, EventArgs e)
    {
        Calendar2.Visible = true;
    }
    protected void Calendar1_SelectionChanged(object sender, EventArgs e)
    {
        txtStartDate.Text = Convert.ToString(Calendar1.SelectedDate.ToShortDateString());

        Calendar1.Visible = false;
    }
    protected void Calendar2_SelectionChanged(object sender, EventArgs e)
    {
        txtEndDate.Text = Convert.ToString(Calendar2.SelectedDate.ToShortDateString());
        Calendar2.Visible = false;
    }
    protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
    {
        Session["TripCarId"] = grdFindAllTrip.SelectedRow.Cells[1].Text;
        Session["TripStoppage"] = grdFindAllTrip.SelectedRow.Cells[2].Text;
        Session["ArrivalTime"] = grdFindAllTrip.SelectedRow.Cells[3].Text;
        Session["DateStartPool"] = txtStartDate.Text;
        Session["DateEndPool"] = txtEndDate.Text;
        Session["Status"] = rblStatus.SelectedValue;




        Session["PageStatus"] = 2;

        Response.Redirect("ReviewDetails.aspx");
    }
    protected void TextBox6_TextChanged(object sender, EventArgs e)
    {

    }
    protected void TextBox1_TextChanged(object sender, EventArgs e)
    {

    }
}
