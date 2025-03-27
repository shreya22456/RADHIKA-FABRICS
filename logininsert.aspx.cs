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

public partial class Admin_logininsert : System.Web.UI.Page
{
    SqlConnection con = new SqlConnection();
    int result = 0;

    protected void Page_Load(object sender, EventArgs e)
    {
        con.ConnectionString = WebConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString;
        con.Open();

        if (Session["uname"] == null)
        {
            Response.Redirect("login.aspx");
        }
    }
    protected void btninsert_Click(object sender, EventArgs e)
    {
        SqlCommand cmd = new SqlCommand("insert into login values(@name,@pass)", con);
        cmd.Parameters.AddWithValue("@name", txtuname.Text);
        cmd.Parameters.AddWithValue("@pass", txtpass.Text);
        result = cmd.ExecuteNonQuery();

        if (result == 0)
        {
            Response.Write("<script>alert('Not inserted'); window.location.href='loginmaster.aspx';</script>");
        }
        else
        {
            Response.Redirect("loginmaster.aspx");
        }
        con.Close();
    }
}