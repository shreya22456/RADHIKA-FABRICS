using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.Configuration;
using System.Data;
using System.Data.SqlClient;

public partial class Admin_registrationdelete : System.Web.UI.Page
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
            Response.Redirect("registrationmaster.aspx");
        }
        cmd = new SqlCommand("delete from registration where id=" + id, con);
        res = cmd.ExecuteNonQuery();

        if (res == 0)
        {
            Response.Write("<script>alert('Not deleted'); window.location.href='registrationmaster.aspx';</script>");
        }
        else
        {

            Response.Redirect("registrationmaster.aspx");
        }
        con.Close();
    }
}