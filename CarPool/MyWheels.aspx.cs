using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;

public partial class MyWheels : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        //Checks whether user session is created or not.

        if (Session["LogIn"] == null)
        {
            Response.Redirect("LogIn.aspx");

        }
        //Check whether user is registered as Lift Provider or Both and accordingly car registration option is provided.
        else if (Session["Status"].ToString() == "LT")
        {
            Response.Write("<script>alert('Status: Lift Taker.No Car Registered by You')</script>");


            Server.Transfer("Home.aspx");
        }
        Label5.Text = Convert.ToString(Session["LogIn"]);
        Pool obj = new Pool();
        int status;

        // Populate the Gridview

        DataSet ds = obj.GridmyWheels(Convert.ToInt32(Session["LogIn"]), out status);
        GridView1.DataSource = ds;
        GridView1.DataBind();

        // Check Whether Car Exist against UserId or Not.

        if (status == 1)
        {
            Response.Write("<script>alert('No Car is Registered By You')</script>");


            Server.Transfer("Home.aspx");
        }

    }
    protected void LinkButton1_Click(object sender, EventArgs e)
    {
        //Clear the user session on LogOut

        Session.Clear();
        Response.Redirect("Home.aspx");
    }

    protected void GridView1_SelectedIndexChanged1(object sender, EventArgs e)
    {
        //Retrieve the CarId by User.

        Session["CarId"] = GridView1.SelectedRow.Cells[1].Text;
        Response.Redirect("ShowBooking.aspx");
    }
    protected void LinkButton1_Click1(object sender, EventArgs e)
    {
        Response.Redirect("RegisterCar.aspx");
    }
    protected void LinkButton3_Click1(object sender, EventArgs e)
    {
        Response.Redirect("UpdateCar.aspx");
    }
}
