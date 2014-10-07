using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Report : System.Web.UI.Page
{
    
    protected void Page_Load(object sender, EventArgs e)
    {
        //Checks whether user session is created or not.
        if (Session["LogIn"] == null)
        {
            Response.Redirect("LogIn.aspx");
            

        }
        float Fare = 0;
        int DaysofBooking = 0;
        Pool obj = new Pool();
        //Populate All TextBoxes using Session of Previous Page.
        obj.GetFareDetails(Convert.ToInt32(Session["BookingId"]), out Fare, out DaysofBooking);
        txtFareBookingId.Text=Convert.ToString(Session["BookingId"]);
        txtFareEmpId.Text = Convert.ToString(Session["LogIn"]);
        txtFareStatus.Text=Convert.ToString(Session["FinalStatus"]);
        txtFareStoppage.Text = Convert.ToString(Session["FinalStoppage"]);
        txtFare.Text = Convert.ToString(Fare);
        txtDaysOfBooking.Text = Convert.ToString(DaysofBooking);
        Label17.Text = Convert.ToString(Session["LogIn"]);



      

    }
    protected void LinkButton1_Click(object sender, EventArgs e)
    {
        Session.Clear();
        Response.Redirect("Home.aspx");
    }

}
