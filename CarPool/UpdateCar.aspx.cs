using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class UpdateCar : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
     
        cvStartDate.Visible = false;
        if (Session["LogIn"] == null)
        {
            Response.Redirect("LogIn.aspx");


        }
        cvStartDate.Visible = false;
        txtInvisible.Text = System.DateTime.Now.ToShortDateString();
        lblLogIn2.Text = Convert.ToString(Session["LogIn"]);
       
        txtRegCarEmpId.Text = Convert.ToString(Session["LogIn"]);
        txtInvisible.Text = System.DateTime.Now.ToShortDateString();
        btnUpdate.Visible = false;
        
        
        
        rfvMorningTime3.Visible = false;
      
                 

    }
    protected void Button2_Click(object sender, EventArgs e)
    {
        lblInstruction.Visible = true;
        Pool Obj = new Pool();
        int count1;
        int count2;
        int count3;

      
     
        
        cvStoppage1.Visible = true;
        cvStoppageName2.Visible = true;
        cvStoppageName3.Visible = true;           
        txtRegCarAvailableSeats.ReadOnly = false;
        
        txtStatus.ReadOnly =true;
        btnDateStart.Visible = true;
        btnDateEndDate.Visible = true;
       
        CompareValidator1.Visible = true;
        CompareValidator2.Visible = true;
        CompareValidator3.Visible = true;

        Obj.CheckStoppageBooking(Convert.ToString(DropDownList4.SelectedValue), out count1, out count2, out count3);
        if (count1 == 0)
        {
            ddlStoppageName1.Visible = true;



            txtMorningArrivalTime1.ReadOnly = false;
            
        }
        if (count2 == 0)
        {
            ddlStoppageName2.Visible = true;
            txtMorningArrivalTime2.ReadOnly = false;
            
        }
        if (count3 == 0)
        {

            txtMorningArrivalTime3.ReadOnly = false;
            ddlStoppage3.Visible = true;
            txtMorningArrivalTime3.ReadOnly = false;
            
        }

        if (txtStoppageName2.Text == "--Select--")
        {
            
           


        }
        
        if (txtStoppageName3.Text == "-Select--")
        {

           
        }
      
        btnUpdate.Visible = true;
        btnEdit.Visible = false;
        Calendar1.Visible = false;
        Calendar2.Visible = false;
        
        btnUpdate.Visible = true;
        rblRegCarStatus.Visible = true;
    }
    protected void DropDownList4_SelectedIndexChanged(object sender, EventArgs e)
    {

        txtMorningArrivalTime1.ReadOnly = true;
        txtMorningArrivalTime2.ReadOnly = true;
        txtMorningArrivalTime3.ReadOnly = true;
       
        lblValidCar.Visible = false;
        btnEdit.Visible=true;
        Pool Obj = new Pool();
        string Car_Name;
        int Seats;
        if (DropDownList4.SelectedValue == "--Select--")
        {
            Response.Write("<script>alert('Please Select A Valid Car')</script>");
            
            Server.Transfer("UpdateCar.aspx");
        }

        int Available_seats;
        DateTime Date_Start_Pool;
        DateTime Date_End_Pool;

        string Status;
        string Stopage1_Name;
        string Stopage2_Name;
        string Stopage3_Name;
        DateTime Morning_Arrival_Time1;
        DateTime Morning_Arrival_Time2;
        DateTime Morning_Arrival_Time3;
        DateTime Departure_Time;
        Obj.ShowCarDetails(Convert.ToString(DropDownList4.SelectedValue), out Car_Name, out Seats, out Available_seats, out Date_Start_Pool, out Date_End_Pool, out Status, out Stopage1_Name, out Stopage2_Name, out Stopage3_Name, out Morning_Arrival_Time1, out Morning_Arrival_Time2, out Morning_Arrival_Time3, out Departure_Time);
        
        txtCarName.Text = Car_Name;
        txtMaxSeats.Text = Convert.ToString(Seats);
        txtMaxSeats.ReadOnly = true;
        txtRegCarAvailableSeats.Text = Convert.ToString(Available_seats);
        txtRegCarAvailableSeats.ReadOnly = true;
        txtDateStartRegCar.Text = Date_Start_Pool.ToShortDateString();
        txtMorningArrivalTime1.Text = Morning_Arrival_Time1.ToShortTimeString();
        txtMorningArrivalTime2.Text = Morning_Arrival_Time2.ToShortTimeString();
        txtMorningArrivalTime3.Text = Morning_Arrival_Time3.ToShortTimeString();
        TextBox11.Text = Date_Start_Pool.ToShortDateString();
        TextBox12.Text = Date_End_Pool.ToShortDateString();
        txtDateEnd.Text = Date_End_Pool.ToShortDateString();
        txtStoppageName.Text = Stopage1_Name;
        txtStoppageName2.Text = Stopage2_Name;
        
        if (txtStoppageName2.Text == "--Select--")
        {
            txtMorningArrivalTime2.Text = "";
            txtMorningArrivalTime3.Visible = false;
          
            lblStoppageName3.Visible = false;
            txtStoppageName3.Visible = false;
            MorningArrivalTime3.Visible = false;
            ddlStoppage3.Visible = false;
                        
        }
     
        txtStoppageName3.Text = Stopage3_Name;
        if (txtStoppageName3.Text == "-Select--")
        {
           
            txtMorningArrivalTime3.Text = "";
         
        }
        TextBox10.Text = Departure_Time.ToShortTimeString();

        txtStatus.Text = Status;
       


    }
    protected void btnDateStart_Click(object sender, EventArgs e)
    {
        
        int count1;
        int count2;
        int count3;
        Pool Obj = new Pool();
        Obj.CheckStoppageBooking(Convert.ToString(DropDownList4.SelectedValue), out count1, out count2, out count3);
        if (count1 == 0)
        {
            ddlStoppageName1.Visible = true;



            txtMorningArrivalTime1.ReadOnly = false;

        }
        if (count2 == 0)
        {
            ddlStoppageName2.Visible = true;
            txtMorningArrivalTime2.ReadOnly = false;

        }
        if (count3 == 0)
        {

            txtMorningArrivalTime3.ReadOnly = false;
            ddlStoppage3.Visible = true;
            txtMorningArrivalTime3.ReadOnly = false;

        }
        txtMorningArrivalTime1.ReadOnly = false;
        txtMorningArrivalTime2.ReadOnly = false;
        txtMorningArrivalTime3.ReadOnly = false;
        CompareValidator4.Visible = true;
        cvStartDate.Visible = true;
        btnUpdate.Visible = true;
        Calendar1.Visible = true;

    }
    protected void btnDateEndDate_Click(object sender, EventArgs e)
    {
        int count1;
        int count2;
        int count3;
        Pool Obj = new Pool();
        Obj.CheckStoppageBooking(Convert.ToString(DropDownList4.SelectedValue), out count1, out count2, out count3);
        if (count1 == 0)
        {
            ddlStoppageName1.Visible = true;



            txtMorningArrivalTime1.ReadOnly = false;

        }
        if (count2 == 0)
        {
            ddlStoppageName2.Visible = true;
            txtMorningArrivalTime2.ReadOnly = false;

        }
        if (count3 == 0)
        {

            txtMorningArrivalTime3.ReadOnly = false;
            ddlStoppage3.Visible = true;
            txtMorningArrivalTime3.ReadOnly = false;

        }
        btnUpdate.Visible = true;
        Calendar2.Visible = true;

    }
    protected void ddlStoppageName1_SelectedIndexChanged(object sender, EventArgs e)
    {

        int count1;
        int count2;
        int count3;
        Pool Obj = new Pool();
        Obj.CheckStoppageBooking(Convert.ToString(DropDownList4.SelectedValue), out count1, out count2, out count3);
        if (count1 == 0)
        {
            ddlStoppageName1.Visible = true;



            txtMorningArrivalTime1.ReadOnly = false;

        }
        if (count2 == 0)
        {
            ddlStoppageName2.Visible = true;
            txtMorningArrivalTime2.ReadOnly = false;

        }
        if (count3 == 0)
        {

            txtMorningArrivalTime3.ReadOnly = false;
            ddlStoppage3.Visible = true;
            txtMorningArrivalTime3.ReadOnly = false;

        }
        txtStoppageName.Text = Convert.ToString(ddlStoppageName1.SelectedItem);
        btnUpdate.Visible = true;
        rfvMorningTime1.Visible = true;
        btnUpdate.Visible = true;
     
     

               

    }
    protected void ddlStoppageName2_SelectedIndexChanged(object sender, EventArgs e)
    {
       
        int count1;
        int count2;
        int count3;
        Pool Obj = new Pool();
        Obj.CheckStoppageBooking(Convert.ToString(DropDownList4.SelectedValue), out count1, out count2, out count3);
        if (count1 == 0)
        {
            ddlStoppageName1.Visible = true;



            txtMorningArrivalTime1.ReadOnly = false;

        }
        if (count2 == 0)
        {
            ddlStoppageName2.Visible = true;
            txtMorningArrivalTime2.ReadOnly = false;

        }
        if (count3 == 0)
        {

            
            ddlStoppage3.Visible = true;
            txtMorningArrivalTime3.ReadOnly = false;

        }
        txtStoppageName2.Text = Convert.ToString(ddlStoppageName2.SelectedItem);
        rfvMorningTime2.Visible = true;
        btnUpdate.Visible = true;
      
        txtMorningArrivalTime3.Visible = true;
      
        lblStoppageName3.Visible = true;
        txtStoppageName3.Visible = true;
        MorningArrivalTime3.Visible = true;
        
        if (ddlStoppageName2.SelectedValue == "-None")
        {
            rfvMorningTime2.Visible = false;
            txtMorningArrivalTime3.Visible = false;
            ddlStoppage3.Visible = false;
            lblStoppageName3.Visible = false;
            txtStoppageName3.Visible = false;
            MorningArrivalTime3.Visible = false;
            txtMorningArrivalTime2.Text = "";
            

           
        }
 
       

    }
    
    protected void Button1_Click(object sender, EventArgs e)
    {

        string Car_Registration_Id;
        DateTime Date_Start_Pool;
        DateTime Date_End_Pool;
        string Status;
        string Stopage1_Name;
        string Stopage2_Name;
        string Stopage3_Name;
        DateTime Morning_Arrival_Time1;
        DateTime Morning_Arrival_Time2;
        DateTime Morning_Arrival_Time3;
        DateTime Departure_Time;
        if (txtStoppageName2.Text == "--Select--")
        {
            txtMorningArrivalTime2.Text = "06:00:00 AM";
        }

        if (txtStoppageName3.Text == "-Select--")
        {
            txtMorningArrivalTime3.Text = "08:00:00 AM";
        }
        Car_Registration_Id = Convert.ToString(DropDownList4.SelectedValue);
        Date_Start_Pool = Convert.ToDateTime(txtDateStartRegCar.Text);
        Date_End_Pool = Convert.ToDateTime(txtDateEnd.Text);
        Status = Convert.ToString(txtStatus.Text);
        Stopage1_Name = txtStoppageName.Text;
        

        Stopage2_Name = txtStoppageName2.Text;
       
        Stopage3_Name = txtStoppageName3.Text;
        Morning_Arrival_Time1 = Convert.ToDateTime(txtMorningArrivalTime1.Text);
        Morning_Arrival_Time2 = Convert.ToDateTime(txtMorningArrivalTime2.Text);
        Morning_Arrival_Time3 = Convert.ToDateTime(txtMorningArrivalTime3.Text);
        Departure_Time = Convert.ToDateTime(TextBox10.Text);
        Pool Obj = new Pool();
        Obj.UpdateCarDetails(Car_Registration_Id, Date_Start_Pool, Date_End_Pool, Status, Stopage1_Name, Stopage2_Name, Stopage3_Name, Morning_Arrival_Time1, Morning_Arrival_Time2, Morning_Arrival_Time3, Departure_Time);
        Response.Write("<script>alert('You Succesfully Updated Your Car Details')</script>");


        Server.Transfer("Home.aspx");
    }
    protected void Calendar1_SelectionChanged(object sender, EventArgs e)
    {
        int count1;
        int count2;
        int count3;
        Pool Obj = new Pool();
        Obj.CheckStoppageBooking(Convert.ToString(DropDownList4.SelectedValue), out count1, out count2, out count3);
        if (count1 == 0)
        {
            ddlStoppageName1.Visible = true;



            txtMorningArrivalTime1.ReadOnly = false;

        }
        if (count2 == 0)
        {
            ddlStoppageName2.Visible = true;
            txtMorningArrivalTime2.ReadOnly = false;

        }
        if (count3 == 0)
        {

            txtMorningArrivalTime3.ReadOnly = false;
            ddlStoppage3.Visible = true;
            txtMorningArrivalTime3.ReadOnly = false;

        }
        
        cvStartDate.Visible = true;
        btnUpdate.Visible = true;
        txtDateStartRegCar.Text = Calendar1.SelectedDate.ToShortDateString();
        Calendar1.Visible = false;
    }
    protected void Calendar2_SelectionChanged(object sender, EventArgs e)
    {
        int count1;
        int count2;
        int count3;
        Pool Obj = new Pool();
        Obj.CheckStoppageBooking(Convert.ToString(DropDownList4.SelectedValue), out count1, out count2, out count3);
        if (count1 == 0)
        {
            ddlStoppageName1.Visible = true;



            txtMorningArrivalTime1.ReadOnly = false;

        }
        if (count2 == 0)
        {
            ddlStoppageName2.Visible = true;
            txtMorningArrivalTime2.ReadOnly = false;

        }
        if (count3 == 0)
        {

            txtMorningArrivalTime3.ReadOnly = false;
            ddlStoppage3.Visible = true;
            txtMorningArrivalTime3.ReadOnly = false;

        }
      
        btnUpdate.Visible = true;
        txtDateEnd.Text = Calendar2.SelectedDate.ToShortDateString();
        Calendar2.Visible = false;
    }

    protected void LinkButton1_Click(object sender, EventArgs e)
    {
        Session.Clear();
        Response.Redirect("Home.aspx");
    }
    protected void rblRegCarStatus_SelectedIndexChanged(object sender, EventArgs e)
    {
        int count1;
        int count2;
        int count3;
        Pool Obj = new Pool();
        Obj.CheckStoppageBooking(Convert.ToString(DropDownList4.SelectedValue), out count1, out count2, out count3);
        if (count1 == 0)
        {
            ddlStoppageName1.Visible = true;



            txtMorningArrivalTime1.ReadOnly = false;

        }
        if (count2 == 0)
        {
            ddlStoppageName2.Visible = true;
            txtMorningArrivalTime2.ReadOnly = false;

        }
        if (count3 == 0)
        {

            txtMorningArrivalTime3.ReadOnly = false;
            ddlStoppage3.Visible = true;
            txtMorningArrivalTime3.ReadOnly = false;

        }
       
        txtStatus.Text = rblRegCarStatus.SelectedValue;
        btnUpdate.Visible = true;
        rfvMorningTime3.Visible = true;

        if (txtStoppageName3.Text == "None")
        {
            
            txtMorningArrivalTime3.Text = "";

            rfvMorningTime3.Visible = false;
        }
    
    }
    protected void DropDownList5_SelectedIndexChanged1(object sender, EventArgs e)
    {
        int count1;
        int count2;
        int count3;
        Pool Obj = new Pool();
        Obj.CheckStoppageBooking(Convert.ToString(DropDownList4.SelectedValue), out count1, out count2, out count3);
        if (count1 == 0)
        {
            ddlStoppageName1.Visible = true;



            txtMorningArrivalTime1.ReadOnly = false;

        }
        if (count2 == 0)
        {
            ddlStoppageName2.Visible = true;
            txtMorningArrivalTime2.ReadOnly = false;

        }
        if (count3 == 0)
        {

            txtMorningArrivalTime3.ReadOnly = false;
            ddlStoppage3.Visible = true;
            txtMorningArrivalTime3.ReadOnly = false;

        }
        txtStoppageName3.Text = Convert.ToString(ddlStoppage3.SelectedItem);
        rfvMorningTime3.Enabled = true;
        btnUpdate.Visible = true;
        rfvMorningTime3.Visible = true;
        ddlStoppageName2.Enabled = false;
        ddlStoppageName1.Enabled = false;
        if (ddlStoppage3.SelectedValue == "None")
        {
            
            txtMorningArrivalTime3.Text = "";
            rfvMorningTime3.Visible = false;

        }
      

        if (txtStoppageName3.Text == "-Select--")
        {

           
            ddlStoppageName2.Enabled = true;
            ddlStoppageName1.Enabled = true;
        }
    }
}
