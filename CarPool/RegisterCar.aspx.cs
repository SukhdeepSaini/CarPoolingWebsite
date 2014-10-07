using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Net.Mail;
using Microsoft.Office.Interop.Outlook;

public partial class RegisterCar : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        //Checks whether user session is created or not.
        if (Session["LogIn"] == null)
        {
            Response.Redirect("LogIn.aspx");


        }
        
        txtInvisible.Text = System.DateTime.Now.ToShortDateString();
        //Check whether Car is Registered from Quick Pool Page or Not.
        if (Convert.ToInt32(Session["Quick"]) == 1)
        {
            txtDateStartRegCar.Text = System.DateTime.Now.ToShortDateString();
            txtDateEnd.Text = System.DateTime.Now.ToShortDateString();
            txtDateStartRegCar.ReadOnly = true;
            txtDateEnd.ReadOnly = true;

            rblRegCarStatus.SelectedValue = "FO";
            rblRegCarStatus.Enabled = false;
            btnDateEndDate.Visible = false;
            btnDateStart.Visible = false;
            lblMorningArrivalTime1.Visible = false;
            lblMorningArrivalTime2.Visible = false;
            MorningArrivalTime3.Visible = false;
            txtMorningArrivalTime2.Visible = false;
            txtMorningArrivalTime3.Visible = false;
            txtMorningArrivalTime1.Text = "06:00:00 AM";
            txtMorningArrivalTime1.Visible = false;
            lblFormat.Visible = false;
            Session["Quick"] = 0;
        }
        
        txtRegCarEmpId.Text = Convert.ToString(Session["LogIn"]);
        TextBox10.Text = "05:30:00 PM";
        Label18.Text = Convert.ToString(Session["LogIn"]);




    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        Pool obj = new Pool();
        int ret1;

        txtMorningArrivalTime2.Text = "00:00:00 AM";
        txtMorningArrivalTime3.Text = "08:00:00 AM";

        //Insert the Details of Car in Databse.

        ret1 = obj.RegisterCar(Convert.ToString(txtCarRegId.Text), Convert.ToInt32(txtRegCarEmpId.Text), Convert.ToString(txtCarName.Text), Convert.ToInt32(txtMaxSeats.Text), Convert.ToDateTime(txtDateStartRegCar.Text), Convert.ToDateTime(txtDateEnd.Text), Convert.ToString(rblRegCarStatus.SelectedValue), Convert.ToInt32(txtRegCarAvailableSeats.Text), Convert.ToString(ddlStoppageName1.SelectedItem), Convert.ToString(ddlStoppageName2.SelectedItem), Convert.ToString(DropDownList3.SelectedItem), Convert.ToDateTime(txtMorningArrivalTime1.Text), Convert.ToDateTime(txtMorningArrivalTime2.Text), Convert.ToDateTime(txtMorningArrivalTime3.Text), Convert.ToDateTime(TextBox10.Text));
      
        // Send the Confirmation Mail to the User and Check Whether Car is already Registered or Not.

        if (ret1 == 1)
        {
            string email;
            email = Convert.ToString(Session["LogIn"]) + "@infosys.com";

            Application app = new Application();

            MailItem mItem = (MailItem)app.CreateItem(OlItemType.olMailItem);

            mItem.Subject = "Thanks for Register Your Car";

            mItem.Body = "Your Car is scuccessfully Registered";


            mItem.To = email;

            mItem.Send();

            Response.Write("<script>alert('You are successfully Register Your Car')</script>");

            Server.Transfer("Home.aspx");



        }
            //Display that Car is Already Registered
        else
        {
            Response.Write("<script>alert('Car is Already Registered')</script>");

            Server.Transfer("Home.aspx");
        }
    }
    protected void Button2_Click(object sender, EventArgs e)
    {
        cldDateStart.Visible = true;

    }
    protected void Button3_Click(object sender, EventArgs e)
    {
        cldDateEnd.Visible = true;
    }
    protected void RadioButtonList1_SelectedIndexChanged(object sender, EventArgs e)
    {

    }
    protected void LinkButton1_Click(object sender, EventArgs e)
    {
        Session.Clear();
        Response.Redirect("Home.aspx");
    }
    protected void Calendar1_SelectionChanged(object sender, EventArgs e)
    {
        txtDateStartRegCar.Text = cldDateStart.SelectedDate.ToShortDateString();
        cldDateStart.Visible = false;
    }
    protected void Calendar2_SelectionChanged(object sender, EventArgs e)
    {

        txtDateEnd.Text = cldDateEnd.SelectedDate.ToShortDateString();
        cldDateEnd.Visible = false;
    }
    protected void txtRegCarEmpId_TextChanged(object sender, EventArgs e)
    {

    }
    protected void ddlStoppageName1_SelectedIndexChanged(object sender, EventArgs e)
    {
        ddlStoppageName2.Visible = true;
        lblStoppageName2.Visible = true;
        if (ddlStoppageName1.SelectedValue == "--None")
        {
            ddlStoppageName2.Visible = false;
            lblStoppageName2.Visible = false;
        }
    }
    protected void ddlStoppageName2_SelectedIndexChanged(object sender, EventArgs e)
    {
        lblMorningArrivalTime2.Visible = true;
        txtMorningArrivalTime2.Visible = true;
        DropDownList3.Visible = true;
        rfvMorningtime2.Visible = true;
        lblStoppageName3.Visible = true;
        if (ddlStoppageName2.SelectedValue == "-None")
        {
            lblMorningArrivalTime2.Visible = false;
            txtMorningArrivalTime2.Visible = false;
            DropDownList3.Visible = false;
            lblStoppageName3.Visible = false;
        }

        if (DropDownList3.SelectedValue != "None")
        {

        }
    }
    protected void DropDownList3_SelectedIndexChanged(object sender, EventArgs e)
    {
        MorningArrivalTime3.Visible = true;
        txtMorningArrivalTime3.Visible = true;
        rfvMorningtime3.Visible = true;

        if (DropDownList3.SelectedValue == "None")
        {
            MorningArrivalTime3.Visible = false;
            txtMorningArrivalTime3.Visible = false;
            ddlStoppageName2.Enabled = true;
            ddlStoppageName1.Enabled = true;
        }
        if (DropDownList3.SelectedValue != "None")
        {
            ddlStoppageName2.Enabled = false;
            ddlStoppageName1.Enabled = false;
        }

    }
    protected void TextBox11_TextChanged(object sender, EventArgs e)
    {

    }
    protected void txtInvisible_TextChanged(object sender, EventArgs e)
    {

    }
    protected void txtMorningArrivalTime1_TextChanged(object sender, EventArgs e)
    {

    }
    protected void txtMaxSeats_TextChanged(object sender, EventArgs e)
    {

    }
    protected void btnUp_Click(object sender, EventArgs e)
    {
        txtMaxSeats.ReadOnly = true;
    }
    protected void btnDown_Click(object sender, EventArgs e)
    {
        txtMaxSeats.ReadOnly = true;
    }
}
