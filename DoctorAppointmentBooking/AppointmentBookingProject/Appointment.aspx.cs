using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data.SqlClient;
using System.Drawing;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;
public partial class Appointment : System.Web.UI.Page
{
    SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["AppointmentDBConnection"].ConnectionString);
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void Book_Appointment(object sender, EventArgs e)
    {
        con.Open();
        string qry = "insert into [Patient_Details] (patient_name,email,mobile,gender,age,date,time,address) values(@pname,@email_id,@mobile_no,@gdr,@ag,@dt,@timing,@add)";
        SqlCommand cmd = new SqlCommand(qry, con);
        cmd.Parameters.AddWithValue("@pname", txtPname.Text.ToString());
        cmd.Parameters.AddWithValue("@email_id", txtEmail.Text.ToString());
        cmd.Parameters.AddWithValue("@mobile_no", txtMobile.Text.ToString());
        cmd.Parameters.AddWithValue("@gdr", rblGender.Text.ToString());
        cmd.Parameters.AddWithValue("@ag", txtAge.Text.ToString());
        cmd.Parameters.AddWithValue("@dt", txtDate.Text.ToString());
        cmd.Parameters.AddWithValue("@timing", rblTime.Text.ToString());
        cmd.Parameters.AddWithValue("@add", txtAddress.Text.ToString());
        cmd.ExecuteNonQuery();
        con.Close();
        lblMsg.Text = "submitted successfully";
    }
}