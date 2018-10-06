using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;

public partial class InsertMedicine : System.Web.UI.Page
{
    SqlConnection con;
    protected void Page_Load(object sender, EventArgs e)
    {
        con = new SqlConnection(@"Data Source=abdelazeem;Initial Catalog=RoboDoc;Integrated Security=True");
    }

    protected void Button1_Click(object sender, EventArgs e)
    {
        int length = FileUpload1.PostedFile.ContentLength;
        byte[] picSize = new byte[length];
        HttpPostedFile uplImage = FileUpload1.PostedFile;
        uplImage.InputStream.Read(picSize, 0, length);
        SqlCommand com = new SqlCommand("INSERT INTO Medicine values ('" + TextBox1.Text + "','" + TextBox2.Text + "','" + TextBox3.Text + "','" + TextBox4.Text + "',@Picture,'" + DropDownList1.SelectedValue + "')", con);
        try
        {

            com.Parameters.AddWithValue("@Picture", picSize);
            con.Open();
            com.ExecuteNonQuery();
            con.Close();
        }
        catch (SqlException)
        {

        }
        finally
        {
            con.Close();
        }

    }
}