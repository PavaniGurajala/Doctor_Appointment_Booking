using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data.SqlClient;
using System.Drawing;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class ChangePassword : System.Web.UI.Page
{
    SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["AppointmentDBConnection"].ConnectionString);
    protected void Page_Load(object sender, EventArgs e)
    {
        
    }

    protected void Change_Password(object sender, EventArgs e)
    {
        if (txtNpwd.Text != txtCpwd.Text)
        {
            lblMsg.Text = "The new password and confirm password are not same";
            return;
        }
        con.Open();
        string qry = "select user_id,email,first_name,last_name from [Register_Details] where email=@email and password=@password";
        SqlCommand cmd = new SqlCommand(qry, con);
        cmd.Parameters.AddWithValue("@email", txtEmail.Text.ToString());
        cmd.Parameters.AddWithValue("@password", txtPwd.Text.ToString());
        SqlDataReader read = cmd.ExecuteReader();
        if (read.Read())
        {

        }
        else
        {
            lblMsg.Text = "The old password entered is not correct";

        }
        con.Close();
        qry = "update Register_Details set password='" + txtNpwd.Text + "' where Email = '" + txtEmail.Text + "'";
        con.Open();
        SqlCommand cmd1 = new SqlCommand(qry, con);
        cmd1.ExecuteNonQuery();
        con.Close();
        lblMsg.Text = "The password change successfully";
    }
}