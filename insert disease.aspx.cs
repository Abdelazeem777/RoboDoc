using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;

public partial class insert_disease : System.Web.UI.Page
{
    private SqlConnection cn;
    protected void Page_Load(object sender, EventArgs e)
    {
        cn = new SqlConnection(@"Data Source=ABDELAZEEM;Initial Catalog=RoboDoc;Integrated Security=True");
    }

    protected void Button1_Click(object sender, EventArgs e)
    {

        SqlCommand cm = new SqlCommand("INSERT INTO [Disease]  VALUES('"+TextBox1.Text+"','"+DropDownList1.SelectedValue+"','"+DropDownList2.SelectedValue+"')", cn);
        cn.Open();
        cm.ExecuteNonQuery();
        cn.Close();
    }
}