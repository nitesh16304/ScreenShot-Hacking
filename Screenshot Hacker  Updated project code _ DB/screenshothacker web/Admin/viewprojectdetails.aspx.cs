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

public partial class Admin_viewprojectdetails : System.Web.UI.Page
{
    SqlConnection con;
    SqlDataAdapter da;
    DataSet ds;
    //string s = "data source=VISHAL-PC;database=ScreenshotHacker;user id=sa;password=123";
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            GetData();
        }
        
        
        
    }
    public void GetData()
    {
        if (Request.QueryString["pid"] != null)
        {
            int i = Convert.ToInt32(Request.QueryString["pid"]);
            con = new SqlConnection(ConfigurationManager.ConnectionStrings["conn"].ToString().ToString());
            da = new SqlDataAdapter("select * from projects where ProjectID=" + i, con);
            ds = new DataSet();
            da.Fill(ds);
            if (ds.Tables[0].Rows.Count > 0)
            {

                txtpid.Text = ds.Tables[0].Rows[0][0].ToString();
                txtpname.Text = ds.Tables[0].Rows[0][1].ToString();
                txtptype.Text = ds.Tables[0].Rows[0][2].ToString();
                txtduration.Text = ds.Tables[0].Rows[0][3].ToString();
                txtdesc.Text = ds.Tables[0].Rows[0][4].ToString();
                txttech.Text = ds.Tables[0].Rows[0][5].ToString();
                txtnoofpersons.Text = ds.Tables[0].Rows[0][6].ToString();


            }
        }

    }
    protected void BtnEdit_Click(object sender, EventArgs e)
    {
        //Control ctrl = Page.FindControl("form1");
        //foreach (Control c in ctrl.Controls)
        //{ 
        
        //if(c is TextBox)
        //{
        //    ((TextBox)c).Enabled = true;
        //}
        //}
        txtdesc.Enabled = true;
        txtduration.Enabled = true;
        txtnoofpersons.Enabled = true;
        txtpname.Enabled = true;
        txtptype.Enabled = true;
        txttech.Enabled = true;
    }


   
    protected void BtnBack_Click(object sender, EventArgs e)
    {
        Response.Redirect("projects.aspx");
    }
    protected void Btnupdate_Click(object sender, EventArgs e)
    {
     
    
            con = new SqlConnection(ConfigurationManager.ConnectionStrings["conn"].ToString().ToString());
            //SqlCommand cmd = new SqlCommand("update projects set ProjectName='" + txtpname.Text + "',ProjectType='" + txtptype.Text + "',ProjectDuration='" + txtduration.Text + "',Discription='" + txtdesc.Text + "',Technology='" + txttech.Text + "',NoofPersonsWorking=" + txtnoofpersons.Text + " where ProjectID=" + txtpid.Text + "", con);

            SqlCommand cmd = new SqlCommand();
            cmd.CommandType = CommandType.StoredProcedure;
            cmd.CommandText = "sp_update";
            con.Open();
            cmd.Connection = con;
        
        cmd.Parameters.AddWithValue("@pname", txtpname.Text);
        cmd.Parameters.AddWithValue("@ptype", txtptype.Text);
        cmd.Parameters.AddWithValue("@pduration",txtduration.Text);
        cmd.Parameters.AddWithValue("@desc",txtdesc.Text);
        cmd.Parameters.AddWithValue("@tech",txttech.Text);
        cmd.Parameters.AddWithValue("@noofpersons",txtnoofpersons.Text);
        cmd.Parameters.AddWithValue("@pid", txtpid.Text);
            int i = cmd.ExecuteNonQuery();
            if (i > 0)
            {
                Label8.Text = "Updated Successfully...!";
                Label8.Visible = true;

            }
     }
}
