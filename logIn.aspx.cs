using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
public partial class logIn : System.Web.UI.Page
{

    SqlConnection cn;
    protected void Page_Load(object sender, EventArgs e)
    {
        cn = new SqlConnection(@"Data Source=ABDELAZEEM;Initial Catalog=RoboDoc;Integrated Security=True");
    }
    protected void Button2_Click(object sender, EventArgs e)
    {
        SqlCommand cm = new SqlCommand("select * from Patiant where Email='" + TextBox4.Text + "' and Password='" + TextBox6.Text + "' ", cn);
        cn.Open();
        SqlDataReader dr = cm.ExecuteReader();
        if (dr.HasRows)
        {
            dr.Read();
           Session.Add("email",dr.GetString(1));
            Session.Add("em", dr.GetString(0));
            dr.Close();
            Response.Redirect("HomePage.aspx");
        }
        else
        {
            ScriptManager.RegisterStartupScript(this, this.GetType(), "alert", "alert('Uncorrect email or password');window.location='logIn.aspx';", true);
        }
      

    }
}

