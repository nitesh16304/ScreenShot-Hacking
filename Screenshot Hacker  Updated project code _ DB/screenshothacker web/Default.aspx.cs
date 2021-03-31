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

public partial class _Default : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    SqlConnection con;
    SqlCommand cmd;
    protected void TextBox3_TextChanged(object sender, EventArgs e)
    {

    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        con = new SqlConnection("Data Source=Ajay-Ajju\\sqlexpress;Initial Catalog=screenshot;Integrated Security=True");
        cmd = new SqlCommand("insert into Postjob (company,location,email,description) values(@company,@location,@email,@description)", con);
        con.Open();

        cmd.CommandType = CommandType.Text;


        cmd.Parameters.AddWithValue("@company", TextBox1.Text);
        cmd.Parameters.AddWithValue("@location", TextBox2.Text);
        cmd.Parameters.AddWithValue("@email", TextBox3.Text);
        cmd.Parameters.AddWithValue("@description", TextBox4.Text);
        cmd.ExecuteNonQuery();






        Label1.Text = "Your file is uploaded successfully";
        GridView1.Visible = true;
    }
}