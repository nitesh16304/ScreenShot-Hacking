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

public partial class Admin_ViewEmployees : System.Web.UI.Page
{
    SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["conn"].ToString());
    SqlCommand cmd;
    DataSet ds;
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
       
            GetData();
        }
    }

    public void GetData()
    {
        if (Request.QueryString["eid"] != null)
        {
            
            int i = Convert.ToInt32(Request.QueryString["eid"]);
            SqlDataAdapter da = new SqlDataAdapter("select * from EmpDetails where EmpID=" + i, con);
             ds = new DataSet();
            da.Fill(ds);
            if (ds.Tables[0].Rows.Count > 0)
            {   
                txteid.Text = ds.Tables[0].Rows[0][0].ToString();
                txtename.Text = ds.Tables[0].Rows[0][1].ToString();
                txtuid.Text = ds.Tables[0].Rows[0][2].ToString();
                txtpwd.Text = ds.Tables[0].Rows[0][3].ToString();
                txtphone.Text = ds.Tables[0].Rows[0][4].ToString();
                txtaddress.Text = ds.Tables[0].Rows[0][5].ToString();
                txtemail.Text = ds.Tables[0].Rows[0][6].ToString();
                txtexp.Text = ds.Tables[0].Rows[0][7].ToString();
                txtqual.Text = ds.Tables[0].Rows[0][8].ToString();
                txtmanager.Text = ds.Tables[0].Rows[0][9].ToString();
                            
                txtroleid.Text = ds.Tables[0].Rows[0][10].ToString();
                
            }
        }
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
         
        if (txtroleid.Text== "2")
        {

            txtmanager.Enabled = false;
        }
        else
        {

            txtmanager.Enabled = true;
        }
        txtaddress.Enabled = true;
        txtemail.Enabled = true;
        txtename.Enabled = true;
        txtexp.Enabled = true;
        txtphone.Enabled = true;
        txtpwd.Enabled = true;
        txtqual.Enabled = true;
        txtroleid.Enabled = true;
        txtuid.Enabled = true;
       
    }
    protected void Button2_Click(object sender, EventArgs e)
    {
        cmd = new SqlCommand();
        cmd.CommandText = "sp_empupdate";
        cmd.CommandType = CommandType.StoredProcedure;
        cmd.Connection = con;
        con.Open();
        cmd.Parameters.AddWithValue("@eid",txteid.Text);
        cmd.Parameters.AddWithValue("@ename", txtename.Text);
        cmd.Parameters.AddWithValue("@uid", txtuid.Text);
        cmd.Parameters.AddWithValue("@pwd", txtpwd.Text);
        cmd.Parameters.AddWithValue("@pno", txtphone.Text);
        cmd.Parameters.AddWithValue("@address", txtaddress.Text);
        cmd.Parameters.AddWithValue("@email", txtemail.Text);
        cmd.Parameters.AddWithValue("@exp", txtexp.Text);
        cmd.Parameters.AddWithValue("@qual", txtqual.Text);
        cmd.Parameters.AddWithValue("@manager", txtmanager.Text);
        cmd.Parameters.AddWithValue("@roleid", txtroleid.Text);
        int i = cmd.ExecuteNonQuery();
        if (i > 0)
        {
            Label12.Text = "Updated Successfully..!";
            Label12.Visible = true;

        }
        else 
        {
            Label12.Text = "Error in Updating....";
            Label12.Visible = true;
        }
        
    }


    protected void Button4_Click(object sender, EventArgs e)
    {
        Response.Redirect("Employees.aspx");
    }
}
