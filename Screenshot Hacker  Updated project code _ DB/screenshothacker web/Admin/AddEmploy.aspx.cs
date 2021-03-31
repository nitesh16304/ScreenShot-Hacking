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

public partial class Admin_Employees : System.Web.UI.Page
{
    SqlConnection con;
    SqlCommand cmd;
    protected void Page_Load(object sender, EventArgs e)
    {
        if(!IsPostBack)
        {
        roleid.Items.Insert(0, "---Select---");
        roleid.Items.Add("3");
        }
    }
    protected void Button1_Click(object sender, EventArgs e)
    {

        con = new SqlConnection(ConfigurationManager.ConnectionStrings["conn"].ToString());
        cmd = new SqlCommand();
        con.Open();
        cmd.Connection = con;
        cmd.CommandType = CommandType.Text;
        cmd.CommandText = "insert into EmpDetails values (@ename,@uid,@pwd,@pno,@address,@email,@exp,@qual,@manager,@roleid)";
        cmd.Parameters.AddWithValue("ename", txtname.Text);
        cmd.Parameters.AddWithValue("uid", txtuname.Text);
        cmd.Parameters.AddWithValue("pwd", txtpwd.Text);
        cmd.Parameters.AddWithValue("pno", txtphone.Text);
        cmd.Parameters.AddWithValue("address", txtaddress.Text);
        cmd.Parameters.AddWithValue("email", txtemail.Text);
        cmd.Parameters.AddWithValue("exp", txtexp.Text);
        cmd.Parameters.AddWithValue("qual", txtqual.Text);
        if (CheckBox1.Checked == false)
        {
            txtmanager.Text = "";
        }
        cmd.Parameters.AddWithValue("manager", txtmanager.Text);
        cmd.Parameters.AddWithValue("roleid", roleid.SelectedValue);
       
        int i = cmd.ExecuteNonQuery();
        if (i > 0)
        {
            lblmsg.Text = "Employee data Added Successfully..!";
            lblmsg.Visible = true;
        }
        else
        {
            lblmsg.Text = "Error in adding the record";
            lblmsg.Visible = false;
        }


    }
    protected void CheckBox1_CheckedChanged(object sender, EventArgs e)
    {
        if (CheckBox1.Checked == true)
        {
            roleid.Items.Clear();
            txtmanager.Visible = true;
            lblmanager.Visible = true;
            roleid.Items.Insert(0,"---Select---");
            roleid.Items.Add("2");
            
        }
        if(CheckBox1.Checked==false)
        {
            roleid.Items.Clear();
            roleid.Items.Insert(0, "---Select---");
            roleid.Items.Add("3");
            txtmanager.Visible = false;
            lblmanager.Visible = false;
        }
    }
}
