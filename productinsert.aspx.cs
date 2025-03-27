using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;
using System.Web.Configuration;

public partial class Admin_productinsert : System.Web.UI.Page
{
    SqlConnection con = new SqlConnection();
    int res = 0;

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
            binddropdownlist();
        }
    }
   
    protected void btninsert_Click(object sender, EventArgs e)
    {
        SqlCommand cmd = new SqlCommand("insert into product values(@name,@category,@price,@image,@description)", con);
        cmd.Parameters.AddWithValue("@name", txtname.Text);
        cmd.Parameters.AddWithValue("@category", DropDownList1.Text);
        cmd.Parameters.AddWithValue("@price", txtprice.Text);
        cmd.Parameters.AddWithValue("@image", FileUpload1.FileName);
        String path = Server.MapPath("~/admin/product/");
        FileUpload1.SaveAs(path + FileUpload1.FileName);

        cmd.Parameters.AddWithValue("@description", txtdes.Text);
        res = cmd.ExecuteNonQuery();

        if (res == 0)
        {
            Response.Write("<script>alert('Not inserted'); window.location.href='productmaster.aspx';</script>");
        }
        else
        {

            Response.Redirect("productmaster.aspx");
        }
        
    }

    private void binddropdownlist()
    {
        string query = "select * from category";
        SqlDataAdapter sd = new SqlDataAdapter(query,con);
        DataTable dt = new DataTable();
        sd.Fill(dt);

        DropDownList1.DataSource = dt;
        DropDownList1.DataTextField = "catname";
        DropDownList1.DataValueField = "catid";

        DropDownList1.Items.Insert(0, new ListItem("select category", "0"));

    }
}