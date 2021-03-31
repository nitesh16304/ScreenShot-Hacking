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

public partial class Admin_AssignEmp : System.Web.UI.Page
{
    SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["conn"].ToString());
    SqlCommand cmd1;
    SqlCommand cmd2;
    SqlDataAdapter da1;
    SqlDataAdapter da2;
    DataSet ds;
    protected void Page_Load(object sender, EventArgs e)
    {
       
        cmd1 = new SqlCommand("select * from EmpDetails where roleid=3 ", con);
        cmd2 = new SqlCommand("select * from  EmpDetails where roleid=2", con);
        da1 = new SqlDataAdapter(cmd1);
        da2 = new SqlDataAdapter(cmd2);
        ds = new DataSet();
        da1.Fill(ds, "EmpDetails1");
        da2.Fill(ds, "EmpDetails2");
        DropDownList1.DataSource = ds.Tables["EmpDetails1"];
       
        DropDownList2.DataSource = ds.Tables["EmpDetails2"];
      
        DropDownList1.DataTextField = "ename";
        DropDownList2.DataTextField = "ename";
        DropDownList1.DataValueField = "ename";
        DropDownList2.DataValueField = "ename";
        DropDownList2.DataBind();
        DropDownList1.DataBind();
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        cmd1 = new SqlCommand("insert into Emp_ManagerIDs (empid,managerid)values(@empid,@managerid)",con);
        con.Open();
        cmd1.Parameters.AddWithValue("@empid",DropDownList1.SelectedItem.Value);
        cmd1.Parameters.AddWithValue("@managerid",DropDownList2.SelectedItem.Value);
        int i=cmd1.ExecuteNonQuery();
        if (i > 0)
            lblmsg.Text = "Assigned Successfully..!";
        lblmsg.Visible = true;
        
    }
}
