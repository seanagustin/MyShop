using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class QUIZ_1_Details : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void btnUpdate_Click(object sender, EventArgs e)
    {
        using (SqlConnection con = new SqlConnection(Util.GetConnection()))
        {
            string SQL = @"UPDATE Couples SET Couplename=@CoupleName,
                WeddingDate=@WeddingDate, Ceremony=@Ceremony,
                Reception=@Reception, Status=@Status,
                DateAdded=@DateAdded WHERE CoupleID=@CoupleID";

            con.Open();

            using (SqlCommand cmd = new SqlCommand(SQL, con))
            {
                
                cmd.Parameters.AddWithValue("@CoupleID",
                    Request.QueryString["ID"].ToString());
                cmd.Parameters.AddWithValue("@Groom", txtGroom.Text);
                cmd.Parameters.AddWithValue("@Bride", txtBride.Text);
                cmd.Parameters.AddWithValue("@WeddingDate", txtDate.Text);
                cmd.Parameters.AddWithValue("@Ceremony", txtcv.Text);
                cmd.Parameters.AddWithValue("@Reception", txtrv.Text);
                cmd.Parameters.AddWithValue("@Status", ddlStatus.SelectedValue);
                cmd.Parameters.AddWithValue("@DateAdded", DateTime.Now);
                
                cmd.ExecuteNonQuery();
            }
        }
        Response.Redirect("Default.aspx");
    }
}
    
