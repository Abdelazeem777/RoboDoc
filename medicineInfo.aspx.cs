using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;
using System.IO;
public partial class _Default : System.Web.UI.Page
{
    SqlConnection cn;
    SqlCommand cm;
    protected void Page_Load(object sender, EventArgs e)
    {
        cn = new SqlConnection(@"Data Source=abdelazeem;Initial Catalog=RoboDoc;Integrated Security=True");
        string medicineName = Session["medicineName"].ToString();
        Label1.Text = medicineName;

        cm = new SqlCommand("select * from Medicine where MedicineName='" + medicineName + "'", cn);
        cn.Open();
        SqlDataReader dr = cm.ExecuteReader();
        dr.Read();
        Label2.Text = dr.GetString(5).ToString();
        Label3.Text = dr.GetString(1).ToString();
        Label4.Text = dr.GetString(3).ToString();
        Label5.Text = dr.GetDecimal(2).ToString();
        dr.Close();
        byte[] bytes = (byte[])GetData("SELECT MedicineImage FROM Medicine WHERE  MedicineName='" + medicineName + "'").Rows[0]["MedicineImage"];
        string base64String = Convert.ToBase64String(bytes, 0, bytes.Length);
        Image1.ImageUrl = "data:image/png;base64," + base64String;
        

        cn.Close();
    }
    private DataTable GetData(string query)
    {
        DataTable dt = new DataTable();

        cm =  new SqlCommand(query);
        using (SqlDataAdapter sda = new SqlDataAdapter())
        {
            cm.CommandType = CommandType.Text;
            cm.Connection = cn;
            sda.SelectCommand = cm;
            sda.Fill(dt);
        }

        return dt;
    }
}
    

