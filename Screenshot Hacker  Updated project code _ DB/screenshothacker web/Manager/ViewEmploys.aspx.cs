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

public partial class Manager_ViewEmploys : System.Web.UI.Page
{
    SqlConnection con;
    SqlDataAdapter da;
    DataSet ds;
    protected void Page_Load(object sender, EventArgs e)
    {
        con = new SqlConnection(ConfigurationManager.ConnectionStrings["conn"].ToString().ToString());
        da = new SqlDataAdapter("select * from EmpDetails where RoleID=3", con);
        ds = new DataSet();
        da.Fill(ds, "EmpDetails");
        GridView1.DataSource = ds.Tables[0];
        GridView1.DataBind();
        


    }
}
