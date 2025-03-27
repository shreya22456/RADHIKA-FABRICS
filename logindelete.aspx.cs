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


public partial class Admin_logindelete : System.Web.UI.Page
{
    SqlConnection con = new SqlConnection();
    SqlCommand cmd;
    int res = 0;
    protected void Page_Load(object sender, EventArgs e)
    {
        con.ConnectionString = WebConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString;
        con.Open();

        if (Session["uname"] == null)
        {
            Response.Redirect("login.aspx");
        }

        string id = Request.QueryString["id"];
        if (id == null)
        {
            Response.Redirect("loginmaster.aspx");
        }
        cmd = new SqlCommand("delete from login where id=" + id, con);
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