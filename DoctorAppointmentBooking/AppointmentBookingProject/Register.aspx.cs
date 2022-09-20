using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;
public partial class Register : System.Web.UI.Page
{
    SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["AppointmentDBConnection"].ConnectionString);
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void Reg(object sender, EventArgs e)
    {
        con.Open();
        string qry = "insert into [Register_Details] (first_name,last_name,email,password) values(@fname,@lname,@email_id,@pwd)";
        SqlCommand cmd = new SqlCommand(qry, con);
        cmd.Parameters.AddWithValue("@fname", txtFname.Text.ToString());
        cmd.Parameters.AddWithValue("@lname", txtLname.Text.ToString());
        cmd.Parameters.AddWithValue("@email_id", txtEmail.Text.ToString());
        cmd.Parameters.AddWithValue("@pwd", txtPwd.Text.ToString());
        cmd.ExecuteNonQuery();
        con.Close();
        lblMsg.Text = "Registered Successfully";
        
    }
}