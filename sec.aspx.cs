using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;

public partial class sec : System.Web.UI.Page
{
    SqlConnection cn;
    protected void Page_Load(object sender, EventArgs e)
    {
        cn = new SqlConnection(@"Data Source=ABDELAZEEM;Initial Catalog=RoboDoc;Integrated Security=True");
    }

       protected void Button1_Click1(object sender, EventArgs e)
    {
        SqlCommand cm = new SqlCommand("select * from Patiant where Email='" + TextBox1.Text + "' and Password='" + TextBox2.Text + "' ", cn);
        cn.Open();
        SqlDataReader dr = cm.ExecuteReader();
        if (dr.HasRows)
        {
            Session.Add("email", dr.GetString(0));
           
            Response.Redirect("HomePage.aspx");
        }
        else
        { Response.Redirect("signUp.aspx"); }
    }
}