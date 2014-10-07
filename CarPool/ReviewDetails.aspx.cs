using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Net.Mail;
using Microsoft.Office.Interop.Outlook;

public partial class ReviewDetails : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        //Checks whether user session is created or not.

        if (Session["LogIn"] == null)
        {
            Response.Redirect("LogIn.aspx");
            
        }

        txtDateEnd.ReadOnly = true;
        txtDateStart.ReadOnly = true;
        txtReviewArrivalTime.ReadOnly = true;
        txtReviewCarId.ReadOnly = true;
        txtReviewStoppageName.ReadOnly = true;
        txtStatus.ReadOnly = true;
        Label17.Text=Convert.ToString(Session["LogIn"]);

        // Check Whether Car is Registered from QuickPool or Not.

        if (Convert.ToInt32(Session["PageStatus"]) == 1)
        {

            txtReviewCarId.Text = Convert.ToString(Session["QuickCarId"]);
            txtReviewStoppageName.Text = Convert.ToString(Session["QuickStoppage"]);
            txtStatus.Text = "FO";
            txtReviewArrivalTime.Text = "-NA-";
            txtDateStart.Text = Convert.ToString(System.DateTime.Now.ToLongDateString());
            txtDateEnd.Text = Convert.ToString(System.DateTime.Now.ToLongDateString());



        }

        

        else if (Convert.ToInt32(Session["PageStatus"]) == 2)
        {
            txtReviewCarId.Text = Convert.ToString(Session["TripCarId"]);
            txtReviewStoppageName.Text = Convert.ToString(Session["TripStoppage"]);
            txtStatus.Text = Convert.ToString(Session["Status"]);
            txtReviewArrivalTime.Text = Convert.ToString(Session["ArrivalTime"]);
            txtDateStart.Text = Convert.ToString(Session["DateStartPool"]);
            txtDateEnd.Text = Convert.ToString(Session["DateEndPool"]);
        }

    }
    protected void TextBox2_TextChanged(object sender, EventArgs e)
    {

    }
    protected void TextBox5_TextChanged(object sender, EventArgs e)
    {

    }
    protected void LinkButton1_Click(object sender, EventArgs e)
    {
        //Clear the LogIn Session

        Session.Clear();
        Response.Redirect("Home.aspx");
    }
    protected void btnBooking_Click(object sender, EventArgs e)
    {


        Pool obj = new Pool();
        int empid;
        int empid2 = Convert.ToInt32(Session["LogIn"]);

        //Check That User Can't Book his Own Car.

        obj.CheckEmpId(Convert.ToString(txtReviewCarId.Text), out empid);
        if (empid == empid2)
        {
            Response.Write("<script>alert('You Cannot Book your Own car')</script>");
            Server.Transfer("Home.aspx");

        }
        int ret;
        int BookingId = 0;
        Session["FinalStatus"] = Convert.ToString(txtStatus.Text);
        Session["FinalStoppage"] = Convert.ToString(txtReviewStoppageName.Text);

        //Check That User Can't Book Same or any Other Car if they already have Active Booking 

        ret=obj.Booking(Convert.ToString(txtReviewCarId.Text), Convert.ToString(txtReviewStoppageName.Text), Convert.ToInt32(Session["LogIn"]), Convert.ToString(txtStatus.Text), Convert.ToDateTime(txtDateStart.Text), Convert.ToDateTime(txtDateEnd.Text), out BookingId);
        if (BookingId == 0)
        {
            Response.Write("<script>alert('You Already have Active Booking so Please Cancel Your Previous Booking')</script>");
            Server.Transfer("Home.aspx");
        }
        
        Session["BookingId"] = BookingId;
        string CC;
        CC = Convert.ToString(empid) + "@infosys.com";
        string email;

        // Sending the Email to User or CC to Car Owner.

        email = Convert.ToString(Session["LogIn"]) + "@infosys.com";

        Application app = new Application();

        MailItem mItem = (MailItem)app.CreateItem(OlItemType.olMailItem);

        mItem.Subject = "Booking is Done";
        mItem.CC = CC;

        mItem.Body = "Booking is Done for Car Id :  '"+txtReviewCarId.Text+"'  and Booking Id is'" + Session["BookingId"] + "'";


        mItem.To = email;

        mItem.Send();

        //Generate the Booking Id......

        Response.Write("<script>alert('Payment Successful!!Booking Id is  " + BookingId + "')</script>");
        Server.Transfer("Report.aspx");

    }
    protected void lblCancel_Click(object sender, EventArgs e)
    {
        Response.Redirect("Home.aspx");
    }
}
