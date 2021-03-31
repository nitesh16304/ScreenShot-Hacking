using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Linq;
using System.Text;
using System.Windows.Forms;
using PC;
using System.Net;
using System.Net.Mail;
using System.IO;
using System.Configuration;
using System.Data.SqlClient;

namespace WindowsFormsApplication5
{
    public partial class Form1 : Form
    {
        SqlConnection con;
        SqlDataAdapter da;
        SqlCommand cmd;
        DataSet ds;
        public Form1()
        {
            InitializeComponent();
        }
                    
        private void timer1_Tick(object sender, EventArgs e)
        {
            try
            {

                //get manager id
                SqlConnection con = new SqlConnection(ConfigurationSettings.AppSettings["constr"]);
                DataSet ds = new DataSet();
                //SqlDataAdapter sda = new SqlDataAdapter("select email from empdetails where UserName='" + textBox1.Text +"'and RoleID="+comboBox1.Text+"",con);
                SqlDataAdapter sda1 = new SqlDataAdapter("select Manager from empdetails where UserName='" + txtuname.Text + "'", con);
                sda1.Fill(ds, "manager");
                string name = ds.Tables["manager"].Rows[0][0].ToString();
                SqlDataAdapter sda2 = new SqlDataAdapter("select email from empdetails where UserName='" + name + "'", con);

                sda2.Fill(ds, "Mail");
                string mail = ds.Tables["Mail"].Rows[0][0].ToString();
                //end get manager id
                ScreenShot ss = new ScreenShot();
                ss.GetScreenShot("PC_Screenshot", "Test");
                SmtpClient smtp = new SmtpClient();
                smtp.Host = "smtp.gmail.com";

                smtp.Credentials = new System.Net.NetworkCredential("kamal4554@gmail.com", "kamalrockz");
                smtp.EnableSsl = true;

                MailMessage msg = new MailMessage();
                msg.From = new MailAddress("kamal4554@gmail.com", "Employee monitoring");

                msg.To.Add(new MailAddress(mail));
                msg.Subject = Program.empname + " ScreenShot";
                string path = Application.StartupPath + "\\PC_Screenshot\\Test.png";
                msg.Attachments.Add(new Attachment(path));
                smtp.Send(msg);
                msg.Dispose();

                File.Delete(path);
            }
            catch (Exception ex)
            {
                ex.ToString();
            }
            finally
            { }


        }

        private void Form1_Load(object sender, EventArgs e)
        {
          
        }

        private void button1_Click(object sender, EventArgs e)
        {
            con = new SqlConnection(ConfigurationSettings.AppSettings["constr"].ToString());
            //SqlDataAdapter da = new SqlDataAdapter("select * from EmpDetails where UserName='"+textBox1.Text+"' and Password='"+textBox2.Text+"' and RoleID="+comboBox1.SelectedItem+"",con);
            //SqlDataAdapter da = new SqlDataAdapter("select * from EmpDetails where UserName='"+txtuname.Text+"'",con);
            cmd = new SqlCommand();
            con.Open();
            cmd.Connection = con;
            cmd.CommandType = CommandType.StoredProcedure;
            cmd.CommandText = "sp_login";
            cmd.Parameters.AddWithValue("@uid", txtuname.Text);
            cmd.Parameters.AddWithValue("@pwd", txtpwd.Text);
            cmd.Parameters.AddWithValue("@roleid", comboBox1.SelectedItem);
            cmd.ExecuteReader();
            con.Close();
            da = new SqlDataAdapter(cmd);
            ds = new DataSet();
            da.Fill(ds);
            if (ds.Tables[0].Rows.Count > 0)
            {
                Program.empname = ds.Tables[0].Rows[0][1].ToString();
                timer1.Enabled = true;
                this.Visible = false;

            }
            else
            {

                lblmsg.Text = "Login failed try again";
                lblmsg.Visible = true;
            
            }
        }

        private void button2_Click(object sender, EventArgs e)
        {
            txtuname.Text = "";
            txtpwd.Text = "";

        }

        private void textBox2_TextChanged(object sender, EventArgs e)
        {

        }

        private void label1_Click(object sender, EventArgs e)
        {

        }

        private void label2_Click(object sender, EventArgs e)
        {

        }

        private void comboBox1_SelectedIndexChanged(object sender, EventArgs e)
        {

        }
    }
}
