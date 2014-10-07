using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;

public partial class ShowBooking : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        //Checks whether user session is created or not.
        if (Session["LogIn"] == null)
        {
            Response.Redirect("LogIn.aspx");

        }

        lblId.Text = Convert.ToString(Session["LogIn"]);

        Pool obj = new Pool();
        int status;

        //Populate the Gridview.

        DataSet ds = obj.GetBookings(Convert.ToString(Session["CarId"]),out status);
        grdShowBooking.DataSource = ds;
        grdShowBooking.DataBind();
       
        // Check Whether is Any Booking is Active Against this Car or Not..

        if (status == 0)
        {
            Response.Write("<script>alert('No Booking is Done against this car')</script>");


            Server.Transfer("MyWheels.aspx");
        }
    }
    protected void LinkButton1_Click(object sender, EventArgs e)
    {
        Session.Clear();
        Response.Redirect("Home.aspx");
    }
    protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
    {

    }
}
