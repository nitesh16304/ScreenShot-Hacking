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
using System.Drawing.Imaging;




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

               /* string connectionString = @"Data Source=Ajay-Ajju\\sqlexpress;Initial Catalog=screenshot;Integrated Security=True";
                SqlConnection con = new SqlConnection(connectionString);


                // SqlConnection con = new SqlConnection(ConfigurationSettings.AppSettings[constr]);
                DataSet ds = new DataSet();
                SqlDataAdapter sda1 = new SqlDataAdapter("select ename from EmpDetails where uid='" + txtuname.Text + "'", con);
                sda1.Fill(ds, "ename");
                string name = ds.Tables["ename"].Rows[0][0].ToString();
                SqlDataAdapter sda2 = new SqlDataAdapter("select email from EmpDetails where ename='" + name + "'", con);

                sda2.Fill(ds, "email");
                string mail = ds.Tables["email"].Rows[0][6].ToString(); */
                //end get manager id
                CaptureMyScreen();
                //ScreenShot ss = new ScreenShot();
                //ss.GetScreenShot("screenshot", "Test");
                SmtpClient smtp = new SmtpClient();
                smtp.Port = 587;
                smtp.Host = "smtp.gmail.com";

                smtp.Credentials = new System.Net.NetworkCredential("ajayvmrp@gmail.com", "Vimala5734");
                smtp.EnableSsl = true;

                MailMessage msg = new MailMessage();
                msg.From = new MailAddress("ajayvmrp@gmail.com", "Employee monitoring");

                msg.To.Add(new MailAddress("ajayvmrp@gmail.com"));
                msg.Subject = Program.empname + " ScreenShot";
                string path = "N:\\capture.jpg";//Application.StartupPath + "\\screenshot\\Test.png";
                msg.Attachments.Add(new Attachment(path));

                smtp.Send(msg);
                msg.Dispose();

                // File.Delete(path);
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
            string connectionString = @"Data Source=Ajay-Ajju\sqlexpress;Initial Catalog=screenshot;Integrated Security=True";
            SqlConnection con = new SqlConnection(connectionString);
            //con = new SqlConnection("Data Source=HP-PC\\SQLEXPRESS;Initial Catalog=ScreenShot;Integrated Security=True");
            //SqlDataAdapter da = new SqlDataAdapter("select * from EmpDetails where UserName='"+textBox1.Text+"' and Password='"+textBox2.Text+"' and RoleID="+comboBox1.SelectedItem+"",con);
            //SqlDataAdapter da = new SqlDataAdapter("select * from EmpDetails where UserName='"+txtuname.Text+"'",con);
            cmd = new SqlCommand();
            con.Open();
            cmd.Connection = con;
            cmd.CommandType = CommandType.Text;
            cmd.CommandText = "select uid,pwd,roleid from EmpDetails where uid=@uid and pwd=@pwd and roleid=@roleid";
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
                Program.empname = ds.Tables[0].Rows[0][0].ToString();
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

        private void CaptureMyScreen()
        {

            try
            {

                Bitmap captureBitmap = new Bitmap(1366, 768, PixelFormat.Format32bppArgb);
                Rectangle captureRectangle = Screen.AllScreens[0].Bounds;
                Graphics captureGraphics = Graphics.FromImage(captureBitmap);
                captureGraphics.CopyFromScreen(captureRectangle.Left, captureRectangle.Top, 0, 0, captureRectangle.Size);
                captureBitmap.Save(@"N:\Capture.jpg", ImageFormat.Jpeg);
            }
            catch (Exception ex)
            {
                ex.ToString();
            }
        }

        private void lblmsg_Click(object sender, EventArgs e)
        {

        }

        private void label1_Click(object sender, EventArgs e)
        {

        }

        private void label2_Click(object sender, EventArgs e)
        {

        }

        private void label3_Click(object sender, EventArgs e)
        {

        }
    }
}