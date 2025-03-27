using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;
using System.Web.Configuration;
using System.Windows.Forms;

public partial class Admin_loginedit : System.Web.UI.Page
{
    SqlConnection con = new SqlConnection();
    SqlCommand cmd;
    static DataSet ds = new DataSet();
    SqlDataAdapter da;
    int res = 0;

    public void refdata()
    {
        string id = Request.QueryString["id"];
        if (id == null)
        {
            Response.Redirect("loginmaster.aspx");
        }
        ds.Clear();
        da = new SqlDataAdapter("select * from login where id=" + id, con);
        da.Fill(ds);
    }
    public void showdata()
    {
        txtuname.Text = ds.Tables[0].Rows[0]["username"].ToString();
        txtpass.Text = ds.Tables[0].Rows[0]["password"].ToString();
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
            showdata();
        }
    }
   
    protected void btnloginedit_Click(object sender, EventArgs e)
    {
        string id = Request.QueryString["id"];

        cmd = new SqlCommand("update login set username=@username,password=@password where id=" + id, con);
        cmd.Parameters.AddWithValue("@username", txtuname.Text);
        cmd.Parameters.AddWithValue("@password", txtpass.Text);
        res = cmd.ExecuteNonQuery();

        if (res == 0)
        {
            Response.Write("<script>alert('Not deleted'); window.location.href='loginmaster.aspx';</script>");
        }
        else
        {

            Response.Redirect("login.aspx");
        }
        con.Close();
    }
}