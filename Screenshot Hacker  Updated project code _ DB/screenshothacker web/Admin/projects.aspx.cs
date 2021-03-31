using System;
using System.Collections;
using System.Configuration;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.HtmlControls;
using System.Web.UI.WebControls;
using System.Web.UI.WebControls.WebParts;
using System.Xml.Linq;
using System.Data.SqlClient;

public partial class Admin_projects : System.Web.UI.Page
{
    SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["conn"].ToString());
    SqlDataAdapter da;
    DataSet ds;
    protected void Page_Load(object sender, EventArgs e)
    {
        if(!IsPostBack)
        BindGrid();
    }

    private void BindGrid()
    {
        
        da = new SqlDataAdapter("select * from Projects", con);
        ds = new DataSet();
        da.Fill(ds);
        //GridView1.DataSource = ds;
        GridView1.DataBind();

    }
    protected void GridView1_RowCommand(object sender, GridViewCommandEventArgs e)
    {
        if (e.CommandName == "view")
        {

            Response.Redirect("viewprojectdetails.aspx?pid=" + e.CommandArgument);
        
        
        }
        else if (e.CommandName == "Delete")
        {

            int projectid = Convert.ToInt32(e.CommandArgument);
            SqlCommand cmd = new SqlCommand();
            con.Open();
            cmd.CommandText = "delProject";
            cmd.CommandType = CommandType.StoredProcedure;
            cmd.Connection = con;
            cmd.Parameters.AddWithValue("@projectid",projectid);
            int status = cmd.ExecuteNonQuery();
            if (status > 0)
                lblmsg.Text = "Record Deleted Successfully..!";
            lblmsg.Visible = true;
            con.Close();
            BindGrid();
        
        
        }
    }

    protected void Button1_Click(object sender, EventArgs e)
    {
        Response.Redirect("Addprojects.aspx");
    }
    protected void GridView1_RowDeleting(object sender, GridViewDeleteEventArgs e)
    {
        
        
    }
    protected void lnkdelete_Click(object sender, EventArgs e)
    {
        
        
            
            
            


    }


    protected void Button2_Click(object sender, EventArgs e)
    {
        Response.Redirect("Adminhome.aspx");
    }
    protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
    {

    }
}
