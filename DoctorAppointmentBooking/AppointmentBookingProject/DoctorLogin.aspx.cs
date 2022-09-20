using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;
using System.Drawing;

public partial class DoctorLogin : System.Web.UI.Page
{
   
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void Login(object sender, EventArgs e)
    {
        string uname = txtUname.Text;
        string pwd = txtPwd.Text;
        if (uname == "admin" && pwd == "12345")
        {
            Response.Redirect("AppointmentDetails.aspx");
        }
        else
        {
            lblMsg.Text = "Incorrect username or password";
        }
        }
    }
