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

public partial class Admin_assignprojects : System.Web.UI.Page
{
    SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["conn"].ToString());
    SqlDataAdapter da1;
    SqlDataAdapter da2;
    SqlCommand cmd;
    
    DataSet ds;
    protected void Page_Load(object sender, EventArgs e)
    {

       
        da1 = new SqlDataAdapter("select * from Projects",con);
        da2 = new SqlDataAdapter("select * from EmpDetails where roleid=2", con);
        ds = new DataSet();
        da1.Fill(ds,"projects");
        da2.Fill(ds,"eDetails");
        DDLPname.DataSource = ds.Tables["projects"];
        DDLmngr.DataSource = ds.Tables["eDetails"];
        DDLPname.DataTextField = "Pname";
        DDLPname.DataValueField = "Pid";
        DDLmngr.DataTextField = "ename";
        DDLmngr.DataValueField = "uid";
        DDLPname.DataBind();
        DDLmngr.DataBind();
        
          

        


    }
    protected void btnassign_Click(object sender, EventArgs e)
    {
        cmd = new SqlCommand();
        con.Open();
        cmd.CommandText = "insert into Project_Allocations values(@pname,@ename,'"+ DateTime.Now.ToString()+"','"+TextBox1.Text+"')";
        cmd.Connection = con;
        cmd.Parameters.AddWithValue("@pname",DDLPname.SelectedItem.Value);
        cmd.Parameters.AddWithValue("@ename",DDLmngr.SelectedItem.Value);
        int i = cmd.ExecuteNonQuery();
        if (i > 0)
            lblmsg.Text = "Assigned Successfully..!";
         lblmsg.Visible = true;
    }
}
