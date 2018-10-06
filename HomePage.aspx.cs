using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
public partial class HomePage : System.Web.UI.Page
{
    SqlConnection cn;
    protected void Page_Load(object sender, EventArgs e)
    {
        cn = new SqlConnection(@"Data Source=abdelazeem;Initial Catalog=RoboDoc;Integrated Security=True");
        userName.Text = Session["email"].ToString();
     }

    protected void buFind_Click(object sender, EventArgs e)
    {
        SqlCommand cm = new SqlCommand("select MedicineName from SymptomsOfDisease join Disease on SymptomsOfDisease.DiseaseName=Disease.DiseaseName  join Medicine on Disease.DiseaseName=Medicine.DiseaseName where SymptomsName='" + DropDownList3.SelectedValue+"' And System='"+DropDownList1.SelectedValue+"' and Organ='"+DropDownList2.SelectedValue+"'", cn);
        cn.Open();
        SqlDataReader dr = cm.ExecuteReader();
        if (dr.HasRows)
        {
            dr.Read();
            Session.Add("medicineName", dr.GetString(0));
            dr.Close();
            Response.Redirect("medicineInfo.aspx");

        }
        else
        {
            ScriptManager.RegisterStartupScript(this, this.GetType(), "alert", "alert('Sorry we don't have any treatment for your disease ');window.location='#';", true);
        }
        cn.Close();
    }

    protected void SqlDataSource2_Selecting(object sender, SqlDataSourceSelectingEventArgs e)
    {

    }
}