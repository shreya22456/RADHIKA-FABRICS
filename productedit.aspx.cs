using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Web.Configuration;

public partial class Admin_productedit : System.Web.UI.Page
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
            Response.Redirect("login.aspx");
        }
        ds.Clear();
        da = new SqlDataAdapter("select * from product where id=" + id, con);
        da.Fill(ds);
    }

    public void showdata()
    {
        txtname.Text = ds.Tables[0].Rows[0]["name"].ToString();
        DropDownList1.Text = ds.Tables[0].Rows[0]["category"].ToString();
        txtprice.Text = ds.Tables[0].Rows[0]["price"].ToString();

        txtdes.Text = ds.Tables[0].Rows[0]["description"].ToString();
    }
    protected void Page_Load(object sender, EventArgs e)
    {
        con.ConnectionString = WebConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString;
        con.Open();

        if (Session["uname"] == null)
        {
            Response.Redirect("productmaster.aspx");
        }

        if (!IsPostBack)
        {
            refdata();
            showdata();
            binddropdownlist();
        }
    }
    
    private void binddropdownlist()
    {
        string query = "select * from category";
        SqlDataAdapter sd = new SqlDataAdapter(query, con);
        DataTable dt = new DataTable();
        sd.Fill(dt);

        DropDownList1.DataSource = dt;
        DropDownList1.DataTextField = "catname";
        DropDownList1.DataValueField = "catid";

        DropDownList1.Items.Insert(0, new ListItem("select category", "0"));

    }
    protected void btnupdate_Click(object sender, EventArgs e)
    {
        if (FileUpload1.HasFile)
        {
            string id = Request.QueryString["id"];

            cmd = new SqlCommand("update product set name=@name,category=@category,price=@price,image=@image,description=@description where id=" + id, con);
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
                Response.Write("<script>alert('Not edited'); window.location.href='productmaster.aspx';</script>");
            }
            else
            {

                Response.Redirect("productmaster.aspx");
            }
            con.Close();
        }
        else
        {
            Response.Write("<script>alert('Select File');</script>");
        }
    }
}