using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;

public partial class accountInfo : System.Web.UI.Page
{
    SqlConnection cn;
    protected void Page_Load(object sender, EventArgs e)
    {
         cn = new SqlConnection(@"Data Source=abdelazeem;Initial Catalog=RoboDoc;Integrated Security=True");
        SqlCommand cm = new SqlCommand("select * from Patiant where Email='"+ Session["em"].ToString()+"'", cn);
        cn.Open();
        SqlDataReader dr = cm.ExecuteReader();
        
        dr.Read();
        Label10.Text = dr.GetString(1) + " " + dr.GetString(2);
        Label11.Text = dr.GetDateTime(3).ToString();

        if (dr.GetBoolean(5))
        {
            Label12.Text = "Male";
        }
        else { Label12.Text = "Female"; }

        Label13.Text = dr.GetString(9)+", "+ dr.GetString(10)+", "+ dr.GetString(11);
        Label14.Text = dr.GetString(8);
        Label15.Text = dr.GetByte(6).ToString();
        if(dr.GetBoolean(7))
        { Label16.Text = "Yes"; }
        else { Label16.Text = "No"; }
        Label17.Text = dr.GetString(0);
        Label18.Text = dr.GetString(4);
        dr.Close();
        cn.Close();


    }
}