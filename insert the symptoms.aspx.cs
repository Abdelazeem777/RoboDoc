using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;

public partial class insert_the_symptoms : System.Web.UI.Page
{
    SqlConnection con;
    protected void Page_Load(object sender, EventArgs e)
    {
        con = new SqlConnection(@"Data Source=abdelazeem;Initial Catalog=RoboDoc;Integrated Security=True");
    }

    protected void Button1_Click(object sender, EventArgs e)
    {
        SqlCommand com = new SqlCommand("insert into SymptomsOfDisease values ('"+TextBox1.Text+"','"+DropDownList1.SelectedValue+"')", con);
        con.Open();
        com.ExecuteNonQuery();
        con.Close();
    }
}