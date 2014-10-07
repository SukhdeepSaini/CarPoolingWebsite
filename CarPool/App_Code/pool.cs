using System;
using System.Data;
using System.Configuration;
using System.Linq;
using System.Web;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.HtmlControls;
using System.Web.UI.WebControls;
using System.Web.UI.WebControls.WebParts;
using System.Xml.Linq;
using System.Data.SqlClient;
using System.Collections;
using System.ComponentModel;


[DataObject(true)]
public class Pool
{
    private SqlConnection cnpool;

    public Pool()
    {
        cnpool = new SqlConnection();
        cnpool = new SqlConnection(ConfigurationManager.ConnectionStrings["ConnectionString"].ToString());
    }




    /************************************************************************
        Function Name   : GetMyTrip
        Input Parameters: Emp_Id
        Return values   : IEnumerable
        Description     : This function will get the details of the Booking for 
                          the booking for the particular user .
        *************************************************************************/

    public IEnumerable GetMyTrip(int Emp_Id)
    {
        SqlCommand cmdpool = new SqlCommand("SELECT Booking_Id ,Car_Registration_Id,Stoppage_Name,Date_Start_Booking,Date_End_Booking FROM tbl_Booking WHERE Emp_Id = '" + Emp_Id + "'", cnpool);
        cnpool.Open();
        return cmdpool.ExecuteReader(CommandBehavior.CloseConnection);
     }


    /************************************************************************
    Function Name   : GetLocation
    Input Parameters: None
    Return values   : IEnumerable
    Description     : This function will get the details For all the location
                      in the location table.   
    *************************************************************************/

    public IEnumerable GetLocation()
    {
        SqlCommand cmdpool = new SqlCommand("SELECT Location,Locattion_Id FROM tbl_Location ", cnpool);
        cnpool.Open();
        return cmdpool.ExecuteReader(CommandBehavior.CloseConnection);
    }

 /************************************************************************
 Function Name   : GetCar
 Input Parameters: Emp_id
 Return values   : IEnumerable
 Description     : This function will give the registration ID of the car 
                   registered by the particular user.   
 *************************************************************************/

    public IEnumerable GetCar(int Emp_id)
    {

        SqlCommand cmdpool = new SqlCommand("SELECT Car_Registration_Id FROM tbl_wheels WHERE Emp_id = '" + Emp_id + "'", cnpool);
        cnpool.Open();
        return cmdpool.ExecuteReader(CommandBehavior.CloseConnection);
    }



   /************************************************************************
Function Name   : CountNumberofBooking
Input Parameters: Emp_id
Return values   : ret 
Description     : This function will return the number of booking's done by 
                  the particular user.
*************************************************************************/

    public int CountNumberofBooking(int Emp_Id)
    {
        int ret=-1;
        SqlCommand cmdpool = new SqlCommand("SELECT Count(*) FROM tbl_Booking WHERE Emp_Id = '" + Emp_Id + "'", cnpool);
        try
        {
            cnpool.Open();
            ret = Convert.ToInt32(cmdpool.ExecuteScalar());
            return ret;
        }
        catch
        {
            return ret;
        }


        
        finally
        {
        cnpool.Close();
        }
        
    }


/************************************************************************
    Function Name                       : GetFareDetails
    Input Parameters                    : Booking_Id
    Return values/ Output Parameters    : Fare,DaysofBooking
    Description                         : This function will get the fare and days of booking for the 
                                          particular booking ID
*************************************************************************/

    public void GetFareDetails(int Booking_Id, out float Fare, out int DaysofBooking)
    {


        SqlCommand cmdpool1 = new SqlCommand("SELECT Fare FROM tbl_FareDetails WHERE Booking_Id = '" + Booking_Id + "'", cnpool);
        SqlCommand cmdpool2 = new SqlCommand("SELECT Days_Of_Booking FROM tbl_FareDetails WHERE Booking_Id = '" + Booking_Id + "'", cnpool);

        cnpool.Open();

        // Note: DataReader implements IEnumarable interface

        Fare = Convert.ToInt32(cmdpool1.ExecuteScalar());
        DaysofBooking = Convert.ToInt32(cmdpool2.ExecuteScalar());
        cnpool.Close();

    }


    /************************************************************************
Function Name   : CheckEmpId
Input Parameters: CarRegistrationId
Return values/ Output Parameters : empid
Description     : This function will get the UserID who has registered that 
                  particular Car
*************************************************************************/

    public void CheckEmpId(string CarRegistrationId,out int empid)
    {

        empid = 0;
        SqlCommand cmdpool1 = new SqlCommand("select Emp_id from tbl_wheels where Car_Registration_Id= '" + CarRegistrationId + "'", cnpool);
       
        cnpool.Open();

        // Note: DataReader implements IEnumarable interface

        empid = Convert.ToInt32(cmdpool1.ExecuteScalar());
        
        cnpool.Close();

    }


    /************************************************************************
Function Name   : CancelBooking
Input Parameters: Booking_Id,Car_Registration_Id
Return values/ Output Parameters : None
Description     : This function will Update the details of the particular  
                  booking for which the booking has been canceled.
*************************************************************************/

    public void CancelBooking(int Booking_Id,string Car_Registration_Id)
    {


        SqlCommand cmdpool1 = new SqlCommand("Update tbl_Booking set StatusBooking=0 WHERE Booking_Id = '" + Booking_Id + "'", cnpool);
        SqlCommand cmdpool2 = new SqlCommand("Update tbl_wheels set Available_seats=Available_seats+1 WHERE Car_Registration_Id='"+@Car_Registration_Id+"'", cnpool);
        SqlCommand cmdpool3 = new SqlCommand("Update tbl_QuickPool set Available_seats=Available_seats+1 WHERE Car_Registration_Id='" + @Car_Registration_Id + "'", cnpool);

        cnpool.Open();

        // Note: DataReader implements IEnumarable interface

        cmdpool1.ExecuteNonQuery();
        cmdpool2.ExecuteNonQuery();
        cmdpool3.ExecuteNonQuery();
      
        
        cnpool.Close();

    }


    /************************************************************************
Function Name   : StatusCounter
Input Parameters: None
Return values/ Output Parameters : LT,LP,BH
Description     : This function will count the number of users who are   
                  lift taker, lift provider or both
*************************************************************************/

    public void StatusCounter(out int LT, out int LP, out int BH)
    {

        LT = 0;
        LP = 0;
        BH = 0;
        SqlCommand cmdpool1 = new SqlCommand("select Count (*) from tbl_registration where Status='LT'", cnpool);
        SqlCommand cmdpool2 = new SqlCommand("select Count (*) from tbl_registration where Status='LP'", cnpool);
        SqlCommand cmdpool3 = new SqlCommand("select Count (*) from tbl_registration where Status='BH'", cnpool);

        cnpool.Open();

        // Note: DataReader implements IEnumarable interface

        LT = Convert.ToInt32(cmdpool1.ExecuteScalar());
        LP = Convert.ToInt32(cmdpool2.ExecuteScalar());
        BH = Convert.ToInt32(cmdpool3.ExecuteScalar());
        cnpool.Close();

    }



    /************************************************************************
Function Name   : UpdatePassword
Input Parameters: Emp_Id,Password
Return values/ Output Parameters : None
Description     : This function will update the password for the particular
                   user.  
*************************************************************************/

    public void UpdatePassword(int Emp_Id, string Password)
    {


        SqlCommand cmdpool1 = new SqlCommand("Update tbl_Registration set Reset=0,Password='" + Password + "' WHERE Emp_Id = '" + Emp_Id + "'", cnpool);


        cnpool.Open();
        cmdpool1.ExecuteNonQuery();
        cnpool.Close();

    }


    /************************************************************************
Function Name   : UpdateReset
Input Parameters: Emp_Id,Password
Return values/ Output Parameters : None
Description     : This function will update the password for the particular
                  user.  
*************************************************************************/
    public void UpdateReset(int Emp_Id, string Password)
    {


        SqlCommand cmdpool1 = new SqlCommand("Update tbl_Registration set Reset=1,Password='" + Password + "' WHERE Emp_Id = '" + Emp_Id + "'", cnpool);


        cnpool.Open();
        cmdpool1.ExecuteNonQuery();
        cnpool.Close();

    }

    /************************************************************************
Function Name   : Reset
Input Parameters: Emp_Id
Return values/ Output Parameters : Reset
Description     : This function will check that the status of the user for the 
                   login.  
*************************************************************************/

    public void Reset(int Emp_Id, out int Reset)
    {

        Reset=2;
        SqlCommand cmdpool = new SqlCommand();
        cmdpool.Connection = cnpool;
        cmdpool.CommandText = "usp_CheckReset";
        cmdpool.CommandType = CommandType.StoredProcedure;


        cmdpool.Parameters.AddWithValue("@emp_id", Emp_Id);

        SqlParameter ParaOut2 = new SqlParameter("@Reset1 ", SqlDbType.Int);
        ParaOut2.Value = Reset;
        ParaOut2.Direction = ParameterDirection.Output;
        cmdpool.Parameters.Add(ParaOut2);


        cnpool.Open();
        cmdpool.ExecuteNonQuery();
        cnpool.Close();
        Reset = Convert.ToInt32(ParaOut2.Value);
        


    }


    /************************************************************************
Function Name   : updateavailableseats
Input Parameters: None
Return values/ Output Parameters : None
Description     : This function will update the seats for particular day of car
                  in the quickpool option of the car.   
*************************************************************************/

    public void updateavailableseats()
    {
        SqlCommand cmdpool = new SqlCommand();
        cmdpool.Connection = cnpool;
        cmdpool.CommandText = "usp_UpdateAvailableSeats";
        cmdpool.CommandType = CommandType.StoredProcedure;

        cnpool.Open();
        cmdpool.ExecuteNonQuery();
        cnpool.Close();

    }


    /************************************************************************
Function Name   : updateLastUpdate
Input Parameters: None
Return values/ Output Parameters : None
Description     : This function will update the status show the data that whether  
                  a new stoppage is added in quickpool page or not.
     * *************************************************************************/

    public void updateLastUpdate()
    {
        SqlCommand cmdpool = new SqlCommand();
        cmdpool.Connection = cnpool;
        cmdpool.CommandText = "usp_UpdateQuickpool";
        cmdpool.CommandType = CommandType.StoredProcedure;

        cnpool.Open();
        cmdpool.ExecuteNonQuery();
        cnpool.Close();

    }


    /************************************************************************
Function Name   : Gridview
Input Parameters: Location
Return values/ Output Parameters : Status
Description     : This function will show the cars avaliable for pooling depending upon
                  the particular location selected.       
 *************************************************************************/

    public DataSet Gridview(string Location, out int Status)
    {
        Status = 0;
        SqlCommand cmdpool = new SqlCommand();
        cmdpool.Connection = cnpool;
        cmdpool.CommandText = "usp_showcar";
        cmdpool.CommandType = CommandType.StoredProcedure;


        cmdpool.Parameters.AddWithValue("@Location", Location);

        SqlParameter ParaOut2 = new SqlParameter("@Status ", SqlDbType.Int);
        ParaOut2.Value = Status;
        ParaOut2.Direction = ParameterDirection.Output;
        cmdpool.Parameters.Add(ParaOut2);

        SqlDataAdapter sda = new SqlDataAdapter(cmdpool);
        DataSet ds = new DataSet();
        sda.Fill(ds);

        Status = Convert.ToInt32(ParaOut2.Value);
        return ds;



    }

    /************************************************************************
Function Name   : ActiveBooking
Input Parameters: empid
Return values/ Output Parameters : Status
Description     : This function will tell that whether the booking's made for the 
                  car are active or not. 
*************************************************************************/

    public DataSet ActiveBooking(int empid, out int Status)
    {
        Status = 0;
        SqlCommand cmdpool = new SqlCommand();
        cmdpool.Connection = cnpool;
        cmdpool.CommandText = "usp_ActiveBooking";
        cmdpool.CommandType = CommandType.StoredProcedure;


        cmdpool.Parameters.AddWithValue("@empid", empid);

        SqlParameter ParaOut2 = new SqlParameter("@Status ", SqlDbType.Int);
        ParaOut2.Value = Status;
        ParaOut2.Direction = ParameterDirection.Output;
        cmdpool.Parameters.Add(ParaOut2);

        SqlDataAdapter sda = new SqlDataAdapter(cmdpool);
        DataSet ds = new DataSet();
        sda.Fill(ds);

        Status = Convert.ToInt32(ParaOut2.Value);
        return ds;



    }



    /************************************************************************
Function Name   : GetBookings
Input Parameters: Car_Registration_Id
Return values/ Output Parameters : Status
Description     : This function will get the details of booking for that particular
                  car after car is booked. 
*************************************************************************/
    public DataSet GetBookings(string Car_Registration_Id, out int Status)
    {
        Status = 0;
        SqlCommand cmdpool = new SqlCommand();
        cmdpool.Connection = cnpool;
        cmdpool.CommandText = "usp_GetBookings";
        cmdpool.CommandType = CommandType.StoredProcedure;


        cmdpool.Parameters.AddWithValue("@Car_Registration_Id", Car_Registration_Id);

        SqlParameter ParaOut2 = new SqlParameter("@Status ", SqlDbType.Int);
        ParaOut2.Value = Status;
        ParaOut2.Direction = ParameterDirection.Output;
        cmdpool.Parameters.Add(ParaOut2);

        SqlDataAdapter sda = new SqlDataAdapter(cmdpool);
        DataSet ds = new DataSet();
        sda.Fill(ds);

        Status = Convert.ToInt32(ParaOut2.Value);
        return ds;



    }


    /************************************************************************
Function Name   : allGridview
Input Parameters: None
Return values/ Output Parameters : Status
Description     : This function will get the details of car of all the locations
                  present in the database.
*************************************************************************/

    public DataSet allGridview(out int Status)
    {
        Status = 0;
        SqlCommand cmdpool = new SqlCommand();
        cmdpool.Connection = cnpool;
        cmdpool.CommandText = "usp_showallcar";
        cmdpool.CommandType = CommandType.StoredProcedure;


       

        SqlParameter ParaOut2 = new SqlParameter("@Status ", SqlDbType.Int);
        ParaOut2.Value = Status;
        ParaOut2.Direction = ParameterDirection.Output;
        cmdpool.Parameters.Add(ParaOut2);

        SqlDataAdapter sda = new SqlDataAdapter(cmdpool);
        DataSet ds = new DataSet();
        sda.Fill(ds);

        Status = Convert.ToInt32(ParaOut2.Value);
        return ds;
        

    }


    /************************************************************************
Function Name   : Gridalltrip
Input Parameters: Status, Date_Start_Pool,Date_End_Pool
Return values/ Output Parameters : ret
Description     : This function will Show all Trip on Find A trip Page
              
*************************************************************************/
    public DataSet Gridalltrip( string Status, DateTime Date_Start_Pool, DateTime Date_End_Pool, out int ret)
    {

        SqlCommand cmdpool = new SqlCommand();
        cmdpool.Connection = cnpool;
        cmdpool.CommandText = "usp_alltrip";
        cmdpool.CommandType = CommandType.StoredProcedure;

       
        cmdpool.Parameters.AddWithValue("@status", Status);
        cmdpool.Parameters.AddWithValue("@DateStartBooking", Date_Start_Pool);
        cmdpool.Parameters.AddWithValue("@DateEndBooking", Date_End_Pool);

        SqlParameter ParaOut2 = new SqlParameter("@Status2 ", SqlDbType.Int);
        ParaOut2.Value = Status;
        ParaOut2.Direction = ParameterDirection.Output;
        cmdpool.Parameters.Add(ParaOut2);

        SqlDataAdapter sda = new SqlDataAdapter(cmdpool);
        DataSet ds = new DataSet();
        sda.Fill(ds);

        ret = Convert.ToInt32(ParaOut2.Value);

        return ds;
    }


    /************************************************************************
Function Name   : Gridmytrip
Input Parameters: Location,Status, Date_Start_Pool,Date_End_Pool
Return values/ Output Parameters : ret
Description     : This function will Show Trip on Find A trip Page
                  depending upon the parameters provided.
*************************************************************************/

    public DataSet Gridmytrip(string Location, string Status, DateTime Date_Start_Pool, DateTime Date_End_Pool, out int ret)
    {

        SqlCommand cmdpool = new SqlCommand();
        cmdpool.Connection = cnpool;
        cmdpool.CommandText = "usp_showtrip";
        cmdpool.CommandType = CommandType.StoredProcedure;

        cmdpool.Parameters.AddWithValue("@Location", Location);
        cmdpool.Parameters.AddWithValue("@status", Status);
        cmdpool.Parameters.AddWithValue("@DateStartBooking", Date_Start_Pool);
        cmdpool.Parameters.AddWithValue("@DateEndBooking", Date_End_Pool);

        SqlParameter ParaOut2 = new SqlParameter("@Status2 ", SqlDbType.Int);
        ParaOut2.Value = Status;
        ParaOut2.Direction = ParameterDirection.Output;
        cmdpool.Parameters.Add(ParaOut2);

        SqlDataAdapter sda = new SqlDataAdapter(cmdpool);
        DataSet ds = new DataSet();
        sda.Fill(ds);

        ret = Convert.ToInt32(ParaOut2.Value);

        return ds;
    }



    /************************************************************************
Function Name   : Register
Input Parameters: Emp_Id,Password,ContactNo,Email_Id,Status,Security_Ques,Security_Ans
Return values/ Output Parameters : None
Description     : This function will register the new user to the Website.
             
*************************************************************************/
    public int Register(int Emp_Id, string Password, double ContactNo, string Email_Id, string Status, string Security_Ques, string Security_Ans)
    {
        int ret;
        SqlCommand cmdpool = new SqlCommand();
        cmdpool.Connection = cnpool;
        cmdpool.CommandText = "usp_RegisterUser";
        cmdpool.CommandType = CommandType.StoredProcedure;


        cmdpool.Parameters.AddWithValue("@Emp_Id", Emp_Id);
        cmdpool.Parameters.AddWithValue("@Password", Password);
        cmdpool.Parameters.AddWithValue("@ContactNo", ContactNo);
        cmdpool.Parameters.AddWithValue("@Email_Id", Email_Id);
        cmdpool.Parameters.AddWithValue("@Status", Status);
        cmdpool.Parameters.AddWithValue("@Security_Ques", Security_Ques);
        cmdpool.Parameters.AddWithValue("@Security_Ans", Security_Ans);

        SqlParameter ReturnPara = new SqlParameter("Status1", -2);
        ReturnPara.SqlDbType = SqlDbType.Int;
        ReturnPara.Direction = ParameterDirection.ReturnValue;
        cmdpool.Parameters.Add(ReturnPara);



        cnpool.Open();
        ret = cmdpool.ExecuteNonQuery();
        cnpool.Close();
        return (Convert.ToInt32(ReturnPara.Value));

    }


    /************************************************************************
Function Name   : LogIn
Input Parameters: Emp_Id,Password
Return values/ Output Parameters : Status
Description     : This function will validate user that he is registered 
                  on the site or not.
*************************************************************************/

    public int LogIn(int Emp_Id,string Password, out string Status)
    {

        Status = "da";
        SqlCommand cmdpool = new SqlCommand();
        cmdpool.Connection = cnpool;
        cmdpool.CommandText = "Usp_ValidateUser";
        cmdpool.CommandType = CommandType.StoredProcedure;


        cmdpool.Parameters.AddWithValue("@Emp_Id", Emp_Id);
        cmdpool.Parameters.AddWithValue("@Password", Password);


        SqlParameter ReturnPara = new SqlParameter("Status", -2);
        ReturnPara.SqlDbType = SqlDbType.Int;
        ReturnPara.Direction = ParameterDirection.ReturnValue;
        cmdpool.Parameters.Add(ReturnPara);

        SqlParameter ParaOut2 = new SqlParameter("@Status ", SqlDbType.Char, 2);
        ParaOut2.Value = Status;
        ParaOut2.Direction = ParameterDirection.Output;
        cmdpool.Parameters.Add(ParaOut2);


        cnpool.Open();
        cmdpool.ExecuteNonQuery();
        cnpool.Close();
        Status = Convert.ToString(ParaOut2.Value);
        return (Convert.ToInt32(ReturnPara.Value));


    }



    /************************************************************************
Function Name   : ShowProfile
Input Parameters: Emp_Id,
Return values/ Output Parameters : Password,ContactNo,Status
Description     : This function will show the details of particular user
*************************************************************************/
    public void ShowProfile(int Emp_Id, out string Password, out long ContactNo, out string Status)
    {

        Password = "sds";
        ContactNo = 0;
        Status = "da";
        SqlCommand cmdpool = new SqlCommand();
        cmdpool.Connection = cnpool;
        cmdpool.CommandText = "usp_ShowProfiles";
        cmdpool.CommandType = CommandType.StoredProcedure;


        cmdpool.Parameters.AddWithValue("@Emp_Id", Emp_Id);


        SqlParameter ParaOut = new SqlParameter("@Password", SqlDbType.VarChar, 20);
        ParaOut.Value = Password;
        ParaOut.Direction = ParameterDirection.Output;
        cmdpool.Parameters.Add(ParaOut);

        SqlParameter ParaOut1 = new SqlParameter("@ContactNo ", SqlDbType.BigInt);
        ParaOut1.Value = ContactNo;
        ParaOut1.Direction = ParameterDirection.Output;
        cmdpool.Parameters.Add(ParaOut1);

        SqlParameter ParaOut2 = new SqlParameter("@Status ", SqlDbType.Char, 2);
        ParaOut2.Value = Status;
        ParaOut2.Direction = ParameterDirection.Output;
        cmdpool.Parameters.Add(ParaOut2);


        cnpool.Open();
        cmdpool.ExecuteNonQuery();
        cnpool.Close();
        Password = Convert.ToString(ParaOut.Value);
        ContactNo = Convert.ToInt64(ParaOut1.Value);
        Status = Convert.ToString(ParaOut2.Value);
    }



    /************************************************************************
Function Name   : Update
Input Parameters: Emp_Id,Password,ContactNo,Status
Return values/ Output Parameters : None
Description     : This function will update the details of particular user
*************************************************************************/
    public int Update(int Emp_Id, string Password, long ContactNo, string Status)
    {
        int ret;
        SqlCommand cmdpool = new SqlCommand();
        cmdpool.Connection = cnpool;
        cmdpool.CommandText = "usp_UpdateProfile";
        cmdpool.CommandType = CommandType.StoredProcedure;


        cmdpool.Parameters.AddWithValue("@Emp_Id", Emp_Id);
        cmdpool.Parameters.AddWithValue("@Password", Password);
        cmdpool.Parameters.AddWithValue("@ContactNo", ContactNo);
        cmdpool.Parameters.AddWithValue("@Status", Status);

        SqlParameter ReturnPara = new SqlParameter("Status1", -2);
        ReturnPara.SqlDbType = SqlDbType.Int;
        ReturnPara.Direction = ParameterDirection.ReturnValue;
        cmdpool.Parameters.Add(ReturnPara);



        cnpool.Open();
        ret = cmdpool.ExecuteNonQuery();
        cnpool.Close();
        return (Convert.ToInt32(ReturnPara.Value));

    }


    /************************************************************************
Function Name   : UpdateStatus
Input Parameters: Emp_Id
Return values/ Output Parameters :Status
Description     : This function will update the status of particular user
*************************************************************************/
    public int UpdateStatus(int Emp_Id, string Status)
    {
        int ret;
        SqlCommand cmdpool = new SqlCommand();
        cmdpool.Connection = cnpool;
        cmdpool.CommandText = "usp_UpdateStatus";
        cmdpool.CommandType = CommandType.StoredProcedure;


        cmdpool.Parameters.AddWithValue("@Emp_Id", Emp_Id);

        cmdpool.Parameters.AddWithValue("@Status", Status);

        SqlParameter ReturnPara = new SqlParameter("Status1", -2);
        ReturnPara.SqlDbType = SqlDbType.Int;
        ReturnPara.Direction = ParameterDirection.ReturnValue;
        cmdpool.Parameters.Add(ReturnPara);



        cnpool.Open();
        ret = cmdpool.ExecuteNonQuery();
        cnpool.Close();
        return (Convert.ToInt32(ReturnPara.Value));

    }


    /************************************************************************
Function Name   : GridmyWheels
Input Parameters: Emp_Id
Return values/ Output Parameters :Status
Description     : This function will provide the details of car reistered by 
                  particular user.
*************************************************************************/

    public DataSet GridmyWheels(int Emp_Id, out int Status)
    {
        Status = 0;
        SqlCommand cmdpool = new SqlCommand();
        cmdpool.Connection = cnpool;
        cmdpool.CommandText = "usp_showmywheels";
        cmdpool.CommandType = CommandType.StoredProcedure;

        cmdpool.Parameters.AddWithValue("@Emp_Id", Emp_Id);

        SqlParameter ParaOut2 = new SqlParameter("@Status ", SqlDbType.Int);
        ParaOut2.Value = Status;
        ParaOut2.Direction = ParameterDirection.Output;
        cmdpool.Parameters.Add(ParaOut2);

        SqlDataAdapter sda = new SqlDataAdapter(cmdpool);
        DataSet ds = new DataSet();
        sda.Fill(ds);
        Status = Convert.ToInt32(ParaOut2.Value);
        return ds;
    }


    /************************************************************************
Function Name   : RegisterCar
Input Parameters: Car_Registration_Id,Emp_Id,Car_Name,Seats,Date_Start_Pool,Date_End_Pool,Status,Available_seats,Stopage1_Name,Stopage2_Name,Stopage3_Name,Morning_Arrival_Time1,Morning_Arrival_Time2,Morning_Arrival_Time3,Departure_Time)
Return values/ Output Parameters :Status
Description     : This function will registered the car for for pooling. 
              
*************************************************************************/

    public int RegisterCar(string Car_Registration_Id, int Emp_Id, string Car_Name, int Seats, DateTime Date_Start_Pool, DateTime Date_End_Pool, string Status, int Available_seats, string Stopage1_Name, string Stopage2_Name, string Stopage3_Name, DateTime Morning_Arrival_Time1, DateTime Morning_Arrival_Time2, DateTime Morning_Arrival_Time3, DateTime Departure_Time)
    {
        int ret;
        SqlCommand cmdpool = new SqlCommand();
        cmdpool.Connection = cnpool;
        cmdpool.CommandText = "usp_RegisterCar";
        cmdpool.CommandType = CommandType.StoredProcedure;


        cmdpool.Parameters.AddWithValue("@Car_Registration_Id", Car_Registration_Id);
        cmdpool.Parameters.AddWithValue("@Emp_Id", Emp_Id);
        cmdpool.Parameters.AddWithValue("@Car_Name", Car_Name);
        cmdpool.Parameters.AddWithValue("@Seats", Seats);
        cmdpool.Parameters.AddWithValue("@Date_Start_Pool", Date_Start_Pool);
        cmdpool.Parameters.AddWithValue("@Date_End_Pool", Date_End_Pool);
        cmdpool.Parameters.AddWithValue("@Status ", Status);
        cmdpool.Parameters.AddWithValue("@Available_seats", Available_seats);
        cmdpool.Parameters.AddWithValue("@Stopage1_Name ", Stopage1_Name);

        cmdpool.Parameters.AddWithValue("@Stopage2_Name", Stopage2_Name);
        cmdpool.Parameters.AddWithValue("@Stopage3_Name", Stopage3_Name);
        cmdpool.Parameters.AddWithValue("@Morning_Arrival_Time1", Morning_Arrival_Time1);
        cmdpool.Parameters.AddWithValue("@Morning_Arrival_Time2", Morning_Arrival_Time2);
        cmdpool.Parameters.AddWithValue("@Morning_Arrival_Time3", Morning_Arrival_Time3);
        cmdpool.Parameters.AddWithValue("@Departure_Time", Departure_Time);


        SqlParameter ReturnPara = new SqlParameter("Status", -2);
        ReturnPara.SqlDbType = SqlDbType.Int;
        ReturnPara.Direction = ParameterDirection.ReturnValue;
        cmdpool.Parameters.Add(ReturnPara);


        cnpool.Open();
        ret = cmdpool.ExecuteNonQuery();
        cnpool.Close();
        return (Convert.ToInt32(ReturnPara.Value));


    }



    /************************************************************************
Function Name   : Booking
Input Parameters: Car_Registration_Id,Date_Start_Pool,Date_End_Pool,Status,Stopage_Name,Emp_Id
Return values/ Output Parameters :Booking_Id
Description     : This function will genereate the booking ID for particular booking done against 
                  the Car.
*************************************************************************/

    public int Booking(string Car_Registration_Id, string Stoppage_Name, int Emp_Id, string Status, DateTime Date_Start_Pool, DateTime Date_End_Pool, out int Booking_Id)
    {
        int ret;
        Booking_Id = 0;
        SqlCommand cmdpool = new SqlCommand();
        cmdpool.Connection = cnpool;
        cmdpool.CommandText = "usp_Booking";
        cmdpool.CommandType = CommandType.StoredProcedure;


        cmdpool.Parameters.AddWithValue("@Car_Registration_Id", Car_Registration_Id);
        cmdpool.Parameters.AddWithValue("@Stoppage_Name ", Stoppage_Name);
        cmdpool.Parameters.AddWithValue("@Emp_Id", Emp_Id);
        cmdpool.Parameters.AddWithValue("@Status ", Status);

        cmdpool.Parameters.AddWithValue("@Date_Start_Booking", Date_Start_Pool);
        cmdpool.Parameters.AddWithValue("@Date_End_Booking", Date_End_Pool);



        SqlParameter ParaOut2 = new SqlParameter("@Booking_Id", SqlDbType.Int);
        ParaOut2.Value = Booking_Id;
        ParaOut2.Direction = ParameterDirection.Output;
        cmdpool.Parameters.Add(ParaOut2);




        cnpool.Open();
        ret = cmdpool.ExecuteNonQuery();
        cnpool.Close();

        Booking_Id = Convert.ToInt32(ParaOut2.Value);
        return ret;



    }



    /************************************************************************
Function Name   : GetSecurityQues
Input Parameters:Emp_Id,Security_Ques
Return values/ Output Parameters :Booking_Id
Description     : This function will get the security question for the particular
                  user.
*************************************************************************/
    public int GetSecurityQues(int Emp_Id, out String Security_Ques)
    {

        Security_Ques = "da";
        SqlCommand cmdpool = new SqlCommand();
        cmdpool.Connection = cnpool;
        cmdpool.CommandText = "usp_GetSecurityQues";
        cmdpool.CommandType = CommandType.StoredProcedure;


        cmdpool.Parameters.AddWithValue("@Emp_Id", Emp_Id);



        SqlParameter ReturnPara = new SqlParameter("Status", -2);
        ReturnPara.SqlDbType = SqlDbType.Int;
        ReturnPara.Direction = ParameterDirection.ReturnValue;
        cmdpool.Parameters.Add(ReturnPara);

        SqlParameter ParaOut2 = new SqlParameter("@Security_Ques ", SqlDbType.VarChar, 200);
        ParaOut2.Value = Security_Ques;
        ParaOut2.Direction = ParameterDirection.Output;
        cmdpool.Parameters.Add(ParaOut2);


        cnpool.Open();
        cmdpool.ExecuteNonQuery();
        cnpool.Close();
        Security_Ques = Convert.ToString(ParaOut2.Value);
        return (Convert.ToInt32(ReturnPara.Value));


    }


    /************************************************************************
Function Name   : CheckSecurityAns
Input Parameters:Emp_Id,Security_Ans
Return values/ Output Parameters :Booking_Id
Description     : This function will validate the security answer for the particular
                   user.
*************************************************************************/
    public int CheckSecurityAns(int Emp_Id, String Security_Ans)
    {


        SqlCommand cmdpool = new SqlCommand();
        cmdpool.Connection = cnpool;
        cmdpool.CommandText = "usp_GetSecurityAns ";
        cmdpool.CommandType = CommandType.StoredProcedure;


        cmdpool.Parameters.AddWithValue("@Emp_Id", Emp_Id);
        cmdpool.Parameters.AddWithValue("@Security_Ans", Security_Ans);



        SqlParameter ReturnPara = new SqlParameter("Status", -2);
        ReturnPara.SqlDbType = SqlDbType.Int;
        ReturnPara.Direction = ParameterDirection.ReturnValue;
        cmdpool.Parameters.Add(ReturnPara);

        cnpool.Open();
        cmdpool.ExecuteNonQuery();
        cnpool.Close();

        return (Convert.ToInt32(ReturnPara.Value));
    }



    /************************************************************************
Function Name   : ShowCarDetails
Input Parameters:Car_Registration_Id
Return values/ Output Parameters :Car_Name,Seats,Available_seats,Date_Start_Pool,Date_End_Pool,Status,Stopage1_Name,Stopage2_Name,Stopage3_Name,Morning_Arrival_Time1,DateMorning_Arrival_Time2,Morning_Arrival_Time3,Departure_Time
Description     : This function will show the details of particular car.
                  
*************************************************************************/
    public void ShowCarDetails(string Car_Registration_Id, out string Car_Name, out int Seats, out int Available_seats, out DateTime Date_Start_Pool, out DateTime Date_End_Pool, out string Status, out string Stopage1_Name, out string Stopage2_Name, out string Stopage3_Name, out  DateTime Morning_Arrival_Time1, out DateTime Morning_Arrival_Time2, out DateTime Morning_Arrival_Time3, out DateTime Departure_Time)
    {
        Car_Name = "abc";
        Seats = 0;
        Available_seats = 0;

        SqlCommand cmdpool = new SqlCommand();
        cmdpool.Connection = cnpool;
        cmdpool.CommandText = "usp_ShowCarDetails";
        cmdpool.CommandType = CommandType.StoredProcedure;

        cmdpool.Parameters.AddWithValue("@Car_Registration_Id", Car_Registration_Id);

        SqlParameter ParaOut = new SqlParameter("@Car_Name ", SqlDbType.VarChar, 20);
        ParaOut.Value = Car_Name;
        ParaOut.Direction = ParameterDirection.Output;
        cmdpool.Parameters.Add(ParaOut);

        SqlParameter ParaOut1 = new SqlParameter("@Seats", SqlDbType.Int);
        ParaOut1.Value = Seats;
        ParaOut1.Direction = ParameterDirection.Output;
        cmdpool.Parameters.Add(ParaOut1);

        SqlParameter ParaOut3 = new SqlParameter("@Available_seats ", SqlDbType.Int);
        ParaOut3.Value = Available_seats;
        ParaOut3.Direction = ParameterDirection.Output;
        cmdpool.Parameters.Add(ParaOut3);

        SqlParameter ParaOut4 = new SqlParameter("@Date_Start_Pool ", SqlDbType.Date);
        ParaOut4.Direction = ParameterDirection.Output;
        cmdpool.Parameters.Add(ParaOut4);

        SqlParameter ParaOut5 = new SqlParameter("@Date_End_Pool ", SqlDbType.Date);
        ParaOut5.Direction = ParameterDirection.Output;
        cmdpool.Parameters.Add(ParaOut5);

        SqlParameter ParaOut6 = new SqlParameter("@Status ", SqlDbType.Char, 2);
        ParaOut6.Direction = ParameterDirection.Output;
        cmdpool.Parameters.Add(ParaOut6);

        SqlParameter ParaOut7 = new SqlParameter("@Stopage1_Name ", SqlDbType.VarChar, 20);
        ParaOut7.Direction = ParameterDirection.Output;
        cmdpool.Parameters.Add(ParaOut7);

        SqlParameter ParaOut8 = new SqlParameter("@Stopage2_Name ", SqlDbType.VarChar, 20);
        ParaOut8.Direction = ParameterDirection.Output;
        cmdpool.Parameters.Add(ParaOut8);

        SqlParameter ParaOut9 = new SqlParameter("@Stopage3_Name ", SqlDbType.VarChar, 20);
        ParaOut9.Direction = ParameterDirection.Output;
        cmdpool.Parameters.Add(ParaOut9);

        SqlParameter ParaOut10 = new SqlParameter("@Morning_Arrival_Time1 ", SqlDbType.DateTime);
        ParaOut10.Direction = ParameterDirection.Output;
        cmdpool.Parameters.Add(ParaOut10);

        SqlParameter ParaOut11 = new SqlParameter("@Morning_Arrival_Time2 ", SqlDbType.DateTime);
        ParaOut11.Direction = ParameterDirection.Output;
        cmdpool.Parameters.Add(ParaOut11);

        SqlParameter ParaOut12 = new SqlParameter("@Morning_Arrival_Time3 ", SqlDbType.DateTime);
        ParaOut12.Direction = ParameterDirection.Output;
        cmdpool.Parameters.Add(ParaOut12);

        SqlParameter ParaOut13 = new SqlParameter("@Departure_Time ", SqlDbType.DateTime);
        ParaOut13.Direction = ParameterDirection.Output;
        cmdpool.Parameters.Add(ParaOut13);

        cnpool.Open();
        cmdpool.ExecuteNonQuery();
        cnpool.Close();

        Car_Name = Convert.ToString(ParaOut.Value);
        Seats = Convert.ToInt32(ParaOut1.Value);
        Available_seats = Convert.ToInt32(ParaOut3.Value);
        Date_Start_Pool = Convert.ToDateTime(ParaOut4.Value);
        Date_End_Pool = Convert.ToDateTime(ParaOut5.Value);
        Status = Convert.ToString(ParaOut6.Value);
        Stopage1_Name = Convert.ToString(ParaOut7.Value);
        Stopage2_Name = Convert.ToString(ParaOut8.Value);
        Stopage3_Name = Convert.ToString(ParaOut9.Value);
        Morning_Arrival_Time1 = Convert.ToDateTime(ParaOut10.Value);
        Morning_Arrival_Time2 = Convert.ToDateTime(ParaOut11.Value);
        Morning_Arrival_Time3 = Convert.ToDateTime(ParaOut12.Value);
        Departure_Time = Convert.ToDateTime(ParaOut13.Value);



    }



    /************************************************************************
Function Name   : UpdateStoppage
Input Parameters:Car_Registration_Id,Newstoppage
Return values/ Output Parameters : None
Description     : This function will add the new stoppage in the database for that
                  particular day under quickpool option.
*************************************************************************/
    public void UpdateStoppage(string CAR_REGISTRATION_ID, string Newstoppage)
    {



        SqlCommand cmdpool1 = new SqlCommand("Update tbl_timing set Status2=0,LastUpdate=Getdate() WHERE CAR_REGISTRATION_ID = '" + CAR_REGISTRATION_ID + "'", cnpool);
        SqlCommand cmdpool2 = new SqlCommand("Update tbl_QuickPool set Status=0,LastUpdate=Getdate() WHERE CAR_REGISTRATION_ID = '" + CAR_REGISTRATION_ID + "'", cnpool);


        cnpool.Open();

        // Note: DataReader implements IEnumarable interface

        cmdpool1.ExecuteNonQuery();
        cmdpool2.ExecuteNonQuery();
        cnpool.Close();

    }


    /************************************************************************
Function Name   : FrontGridview
Input Parameters: None
Return values/ Output Parameters : Status
Description     : This function will add the new stoppage in the database for that
              particular day under quickpool option.
*************************************************************************/

    public DataSet FrontGridview(out int Status)
    {
        Status = 0;
        SqlCommand cmdpool = new SqlCommand();
        cmdpool.Connection = cnpool;
        cmdpool.CommandText = "usp_ShowFrontQuick";
        cmdpool.CommandType = CommandType.StoredProcedure;




        SqlParameter ParaOut2 = new SqlParameter("@Status ", SqlDbType.Int);
        ParaOut2.Value = Status;
        ParaOut2.Direction = ParameterDirection.Output;
        cmdpool.Parameters.Add(ParaOut2);

        SqlDataAdapter sda = new SqlDataAdapter(cmdpool);
        DataSet ds = new DataSet();
        sda.Fill(ds);

        Status = Convert.ToInt32(ParaOut2.Value);
        return ds;



    }




    /************************************************************************
Function Name   : UpdateCarDetails
Input Parameters: Car_Registration_Id, Date_Start_Pool,Date_End_Pool,Status,Stopage1_Name,Stopage2_Name,Stopage3_Name,Morning_Arrival_Time1,Morning_Arrival_Time2,Morning_Arrival_Time3,Departure_Time)
Return values/ Output Parameters : Status
Description     : This function will Update the details of the particular car
                   for that particular user. 
*************************************************************************/
    public void UpdateCarDetails(string Car_Registration_Id, DateTime Date_Start_Pool, DateTime Date_End_Pool, string Status, string Stopage1_Name, string Stopage2_Name, string Stopage3_Name, DateTime Morning_Arrival_Time1, DateTime Morning_Arrival_Time2, DateTime Morning_Arrival_Time3, DateTime Departure_Time)
    {
        SqlCommand cmdpool = new SqlCommand();
        cmdpool.Connection = cnpool;
        cmdpool.CommandText = "usp_UpdateCar";
        cmdpool.CommandType = CommandType.StoredProcedure;

        cmdpool.Parameters.AddWithValue("@Car_Registration_Id", Car_Registration_Id);
        cmdpool.Parameters.AddWithValue("@Date_Start_Pool", Date_Start_Pool);
        cmdpool.Parameters.AddWithValue("@Date_End_Pool", Date_End_Pool);
        cmdpool.Parameters.AddWithValue("@Status", Status);
        cmdpool.Parameters.AddWithValue("@Stopage1_Name", Stopage1_Name);
        cmdpool.Parameters.AddWithValue("@Stopage2_Name", Stopage2_Name);
        cmdpool.Parameters.AddWithValue("@Stopage3_Name", Stopage3_Name);
        cmdpool.Parameters.AddWithValue("@Morning_Arrival_Time1", Morning_Arrival_Time1);
        cmdpool.Parameters.AddWithValue("@Morning_Arrival_Time2", Morning_Arrival_Time2);
        cmdpool.Parameters.AddWithValue("@Morning_Arrival_Time3", Morning_Arrival_Time3);
        cmdpool.Parameters.AddWithValue("@Departure_Time", Departure_Time);

        cnpool.Open();
        cmdpool.ExecuteNonQuery();
        cnpool.Close();
    }


    /************************************************************************
Function Name   : CountStoppages
Input Parameters: Car_Registration_Id
Return values/ Output Parameters : Count
Description     : This function will Count the number of stoppages for particular car.               
*************************************************************************/
    public void CountStoppages(string Car_Registration_Id, out int Count)
    {
        Count = 0;
        SqlCommand cmdpool = new SqlCommand();
        cmdpool.Connection = cnpool;
        cmdpool.CommandText = "usp_CountStoppages";
        cmdpool.CommandType = CommandType.StoredProcedure;

        cmdpool.Parameters.AddWithValue("@CarRegistrationId", Car_Registration_Id);

        SqlParameter ParaOut2 = new SqlParameter("@Count ", SqlDbType.Int);
        ParaOut2.Value = Count;
        ParaOut2.Direction = ParameterDirection.Output;
        cmdpool.Parameters.Add(ParaOut2);

        cnpool.Open();
        cmdpool.ExecuteNonQuery();
        cnpool.Close();
        Count = Convert.ToInt32(ParaOut2.Value);
    }



    /************************************************************************
Function Name   : CheckStoppageBooking
Input Parameters: Car_Registration_Id
Return values/ Output Parameters : Count1,Count2,Count3
Description     : This function will check the booking against a particular stoppage.               
*************************************************************************/

    public void CheckStoppageBooking(string Car_Registration_Id, out int Count1,out int Count2,out int Count3)
    {
        Count1 = 0;
        Count2 = 0;
        Count3 = 0;
        SqlCommand cmdpool = new SqlCommand();
        cmdpool.Connection = cnpool;
        cmdpool.CommandText = "usp_CheckBooking";
        cmdpool.CommandType = CommandType.StoredProcedure;

        cmdpool.Parameters.AddWithValue("@CarRegistrationId", Car_Registration_Id);

        SqlParameter ParaOut1 = new SqlParameter("@Count1 ", SqlDbType.Int);
        ParaOut1.Value = Count1;
        ParaOut1.Direction = ParameterDirection.Output;
        cmdpool.Parameters.Add(ParaOut1);

        SqlParameter ParaOut2 = new SqlParameter("@Count2 ", SqlDbType.Int);
        ParaOut2.Value = Count2;
        ParaOut2.Direction = ParameterDirection.Output;
        cmdpool.Parameters.Add(ParaOut2);

        SqlParameter ParaOut3 = new SqlParameter("@Count3 ", SqlDbType.Int);
        ParaOut3.Value = Count3;
        ParaOut3.Direction = ParameterDirection.Output;
        cmdpool.Parameters.Add(ParaOut3);

        cnpool.Open();
        cmdpool.ExecuteNonQuery();
        cnpool.Close();
        Count1 = Convert.ToInt32(ParaOut1.Value);
        Count2 = Convert.ToInt32(ParaOut2.Value);
        Count3 = Convert.ToInt32(ParaOut3.Value);
    }


    /************************************************************************
Function Name   : AddStoppage
Input Parameters: Car_Registration_Id,Stoppage,Count
Return values/ Output Parameters : None
Description     : This function will add new stoopage to the registered car details.            
*************************************************************************/
    public void AddStoppage(string CAR_REGISTRATION_ID, string Stoppage, int Count)
    {
       
            SqlCommand cmdpool1 = new SqlCommand("Update tbl_QuickPool set Stopage2_Name='" + Stoppage + "' WHERE CAR_REGISTRATION_ID = '" + CAR_REGISTRATION_ID + "'", cnpool);
        
      
            SqlCommand cmdpool2 = new SqlCommand("Update tbl_QuickPool set Stopage3_Name='" + Stoppage + "' WHERE CAR_REGISTRATION_ID = '" + CAR_REGISTRATION_ID + "'", cnpool);
       
            SqlCommand cmdpool3 = new SqlCommand("Update tbl_QuickPool set new_stoppage='" + Stoppage + "' WHERE CAR_REGISTRATION_ID = '" + CAR_REGISTRATION_ID + "'", cnpool);
       
        cnpool.Open();


        if (Count == 0)
        {

        cmdpool1.ExecuteNonQuery();
        }
        if (Count == 1)
        {
        cmdpool2.ExecuteNonQuery();
        }
        if (Count == 2)
        {
        cmdpool3.ExecuteNonQuery();
        }


        cnpool.Close();
    }




    /************************************************************************
Function Name   : CheckRepetition
Input Parameters: Car_Registration_Id,Location
Return values/ Output Parameters : Rep
Description     : This function will check for repetion of newly added stoopage.            
*************************************************************************/

    public void CheckRepetition(string CarRegistrationId, string Location, out int Rep)
    {
        Rep = 0;
        SqlCommand cmdpool = new SqlCommand();
        cmdpool.Connection = cnpool;
        cmdpool.CommandText = "usp_CheckRepetition";
        cmdpool.CommandType = CommandType.StoredProcedure;

        cmdpool.Parameters.AddWithValue("@CarRegistrationId", CarRegistrationId);
        cmdpool.Parameters.AddWithValue("@Location", Location);

        SqlParameter ParaOut1 = new SqlParameter("@Rep ", SqlDbType.Int);
        ParaOut1.Value = Rep;
        ParaOut1.Direction = ParameterDirection.Output;
        cmdpool.Parameters.Add(ParaOut1);
        cnpool.Open();
        cmdpool.ExecuteNonQuery();
        cnpool.Close();
        Rep = Convert.ToInt32(ParaOut1.Value);
    }
   

}
