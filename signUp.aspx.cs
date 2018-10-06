using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;

public partial class signUp : System.Web.UI.Page
{
    int g = 0;
    int s = 0;
    private SqlConnection cn;
    protected void Page_Load(object sender, EventArgs e)
    {
        cn = new SqlConnection(@"Data Source=ABDELAZEEM;Initial Catalog=RoboDoc;Integrated Security=True");
   
    }
    protected void Button1_Click1(object sender, EventArgs e)
    {
        if (DropDownList1.SelectedValue.Equals("Male"))
        { g = 1; }
        else { g = 0; }
        if (CheckBox1.Text == "Yes")
        { s = 1; }
        SqlCommand cm = new SqlCommand("INSERT INTO Patiant  VALUES('" + TextBox8.Text + "','" + TextBox1.Text + "','" + TextBox2.Text + "','" + TextBox3.Text + "','" + TextBox10.Text + "','" + g.ToString() + "','" + TextBox13.Text + "','" + s.ToString() + "','" + TextBox14.Text + "','" + TextBox4.Text + "','" + TextBox6.Text + "','" + TextBox7.Text + "')", cn);
        cn.Open();

       cm.ExecuteNonQuery();
        cm = new SqlCommand("INSERT INTO OldDiseaseForPatiant VALUES('" + DropDownList2.SelectedValue + "','" + TextBox8.Text + "')", cn);
        cm.ExecuteNonQuery();
        cn.Close();
        Session.Add("email", TextBox1.Text);
        Session.Add("em", TextBox8.Text);
        ScriptManager.RegisterStartupScript(this, this.GetType(), "alert", "alert('Registration Successful');window.location='HomePage.aspx';", true);

    }
}