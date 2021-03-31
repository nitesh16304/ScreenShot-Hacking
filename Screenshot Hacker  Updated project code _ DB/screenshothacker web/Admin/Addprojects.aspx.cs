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

public partial class Admin_Addprojects : System.Web.UI.Page
{
    SqlConnection con;
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void Button1_Click(object sender, EventArgs e)
    {
            con = new SqlConnection(ConfigurationManager.ConnectionStrings["conn"].ToString().ToString());
            //SqlCommand cmd = new SqlCommand("update projects set ProjectName='" + txtpname.Text + "',ProjectType='" + txtptype.Text + "',ProjectDuration='" + txtduration.Text + "',Discription='" + txtdesc.Text + "',Technology='" + txttech.Text + "',NoofPersonsWorking=" + txtnoofpersons.Text + " where ProjectID=" + txtpid.Text + "", con);

            SqlCommand cmd = new SqlCommand();
            cmd.CommandType = CommandType.Text;
            cmd.CommandText = "insert into Projects values(@Pid,@Pname,@Ptype,@PDuration,@Discription,@Technology,@NoofWorking)";
            con.Open();
            cmd.Connection = con;
            cmd.Parameters.AddWithValue("@Pid", txtpid.Text);
        cmd.Parameters.AddWithValue("@Pname", txtpname.Text);
        cmd.Parameters.AddWithValue("@Ptype", txtptype.Text);
        cmd.Parameters.AddWithValue("@PDuration",txtpduration.Text);
        cmd.Parameters.AddWithValue("@Discription",txtdesc.Text);
        cmd.Parameters.AddWithValue("@Technology",txttech.Text);
        cmd.Parameters.AddWithValue("@NoOfWorking",txtpersons.Text);
        
            int i = cmd.ExecuteNonQuery();
            if (i > 0)
            {
                Label8.Text = "Project Added Successfully ...!";
                Label8.Visible = true;

            }
     }
    }

