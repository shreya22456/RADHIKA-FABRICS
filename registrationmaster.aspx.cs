using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;
using System.Web.Configuration;

public partial class Admin_registrationmaster : System.Web.UI.Page
{
    SqlConnection con = new SqlConnection();
    SqlDataAdapter da = new SqlDataAdapter();

    static DataSet ds = new DataSet();

    public void refdata()
    {
        ds.Clear();
        da = new SqlDataAdapter("select * from registration", con);
        da.Fill(ds);
    }
    public void binddata()
    {
       
        GridView1.DataBind();
    }
    protected void Page_Load(object sender, EventArgs e)
    {
        con.ConnectionString = WebConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString;
        con.Open();

        if (Session["uname"] == null)
        {
            Response.Redirect("login.aspx");
        }

        if (!IsPostBack)
        {
            refdata();
            binddata();
        }
    }
}