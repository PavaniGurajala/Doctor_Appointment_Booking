using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data.SqlClient;
using System.Linq;
using System.Security.Cryptography.X509Certificates;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class PatientLogin : System.Web.UI.Page
{
    SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["AppointmentDBConnection"].ConnectionString);
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void Login(object sender, EventArgs e)
    {
        con.Open();
        string qry = "select user_id,email,first_name,last_name from [Register_Details] where email=@email and password=@password";
        SqlCommand cmd = new SqlCommand(qry, con);
        cmd.Parameters.AddWithValue("@email", txtEmail.Text.ToString());
        cmd.Parameters.AddWithValue("@password", txtPwd.Text.ToString());
        SqlDataReader read = cmd.ExecuteReader();
        if (read.Read())
        {
            Session["user_id"] = read.GetValue(0).ToString();
            Session["email"] = read.GetValue(1).ToString();
            Session["first_name"] = read.GetValue(2).ToString();
            Session["last_name"] = read.GetValue(3).ToString();
            Response.Redirect("PatientMain.aspx");
        }
        else
        {
            lblMsg.Text = "Invalid email or password";
            lblMsg.ForeColor = System.Drawing.Color.Red;
            con.Close();
        }
    }


    protected void Reset(object sender, EventArgs e)
    {
        Response.Redirect(Request.RawUrl);
    }
}