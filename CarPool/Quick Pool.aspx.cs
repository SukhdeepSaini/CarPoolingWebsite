using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;

public partial class Quick_Pool : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

        //Checks whether user session is created or not.

        if (Session["LogIn"] == null)
        {
            Response.Redirect("LogIn.aspx");

        }

        //Check whether user is registered as Lift Provider or Both and accordingly car registration option is provided.

        else if (Session["Status"].ToString() == "LP")
        {
            lblSelectLocation.Visible = false;
            ddlLocation.Visible = false;

        }
        else if (Session["Status"].ToString() == "LT")
        {
            lblAskPool.Visible = false;
            LinkButton1.Visible = false;
            LinkButton2.Visible = false;

        }

        lblQuickId.Text = Convert.ToString(Session["LogIn"]);
        Pool obj = new Pool();
        obj.updateLastUpdate();
    }
    protected void DropDownList1_SelectedIndexChanged(object sender, EventArgs e)
    {
        if (Convert.ToString(ddlLocation.SelectedValue) == "AllLocations")
        {
            Pool obj1 = new Pool();
           
            int ret1;
            DataSet ds = obj1.allGridview(out ret1);

            gvQuickPool.DataSource = ds;
            gvQuickPool.DataBind();

            // Check Whether Car is Available or not.

            if (ret1 == 1)
            {
                Response.Write("<script>alert('No Car is Available')</script>");


                Server.Transfer("Quick Pool.aspx");
            }
        }
        else
        {
            Pool obj = new Pool();
            int ret;
            DataSet ds = obj.Gridview(ddlLocation.SelectedValue, out ret);

            gvQuickPool.DataSource = ds;
            gvQuickPool.DataBind();
            // Check Whether Car is Available or Not.

            if (ret == 1)
            {
                Response.Write("<script>alert('No Car is Available')</script>");


                Server.Transfer("Quick Pool.aspx");
            }
        }

    }
    protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
    {
        Session["QuickCarId"] = gvQuickPool.SelectedRow.Cells[1].Text;
        Session["QuickStoppage"] = gvQuickPool.SelectedRow.Cells[2].Text;
        Session["PageStatus"] = 1;

        Response.Redirect("ReviewDetails.aspx");
    }
    protected void LinkButton1_Click(object sender, EventArgs e)
    {
        //Clear the user session on LogOut

        Session.Clear();
        Response.Redirect("Home.aspx");
    }
    protected void LinkButton1_Click1(object sender, EventArgs e)
    {

        Session["Quick"] = 1;
        Response.Redirect("RegisterCar.aspx");
    }
    protected void LinkButton2_Click(object sender, EventArgs e)
    {

        lblLocation.Visible = true;
        lblCarid.Visible = true;
        ddlCarid.Visible = true;
        ddlNewlocation.Visible = true;
        btnAddStoppage.Visible = true;

            }
    protected void Button1_Click(object sender, EventArgs e)
    {
        int Rep;
        Pool Obj = new Pool();
        int count;
        // Check whether User already have 4 stoppage for Today or Not.
        Obj.CountStoppages(Convert.ToString(ddlCarid.SelectedValue), out count);
        if (count == 3)
        {
            Response.Write("<script>alert('Maximum Limit Reached For Today')</script>");
            Server.Transfer("Quick Pool.aspx");

        } 

        // Check whether the New stoppage Already registered for particular car or not in database

        Obj.CheckRepetition(Convert.ToString(ddlCarid.SelectedValue), Convert.ToString(ddlNewlocation.SelectedValue), out Rep);
        if (Rep == 1)
        {
            Response.Write("<script>alert('Stoppage already exists')</script>");
            Server.Transfer("Quick Pool.aspx");
        }





        // Added the New stoppage in Daatabase for particular car fro 0ne Day 

        Obj.AddStoppage(Convert.ToString(ddlCarid.SelectedValue), Convert.ToString(ddlNewlocation.SelectedValue), count);
        Obj.UpdateStoppage(Convert.ToString(ddlCarid.SelectedValue), Convert.ToString(ddlNewlocation.SelectedValue));
        Response.Write("<script>alert('Your New Stoppage is Added')</script>");


        Server.Transfer("Home.aspx");
    }
    protected void DropDownList2_SelectedIndexChanged(object sender, EventArgs e)
    {
        

    }
    protected void DropDownList1_SelectedIndexChanged1(object sender, EventArgs e)
    {

        
    }
}

