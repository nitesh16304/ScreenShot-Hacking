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

public partial class Admin_AddEmployee : System.Web.UI.Page
{
    SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["conn"].ToString().ToString());
    SqlDataAdapter da;
    DataSet ds;

    protected void Page_Load(object sender, EventArgs e)
    {

        if(!IsPostBack)
        binddata();
    }
    private void binddata()
    {
       
        da = new SqlDataAdapter("select * from EmpDetails", con);
        ds = new DataSet();
        da.Fill(ds, "EmpDetails");
        GridView1.DataSource = ds.Tables[0];
        GridView1.DataBind();

    }
    protected void GridView1_RowCommand(object sender, GridViewCommandEventArgs e)
    {
        if (e.CommandName == "view")
        {

            Response.Redirect("ViewEmployees.aspx?eid=" + e.CommandArgument);

        }
        else if(e.CommandName=="Delete")
        {
            int empid = Convert.ToInt32(e.CommandArgument);
            con.Open();
            SqlCommand cmd = new SqlCommand();
            cmd.CommandText = "delEmp";
            cmd.CommandType = CommandType.StoredProcedure;
            cmd.Connection = con;
            cmd.Parameters.AddWithValue("@empid", empid);
            int status= cmd.ExecuteNonQuery();
            if (status > 0)
                lblmsg.Text = "Record Deleted Successfully..!";
            lblmsg.Visible = true;
            con.Close();
            binddata();

        }
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        Response.Redirect("AddEmploy.aspx");
    }
    protected void GridView1_RowDeleting(object sender, GridViewDeleteEventArgs e)
    {

    }
}
