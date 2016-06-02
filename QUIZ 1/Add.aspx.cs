using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class QUIZ_1_Add : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void btnAdd_Click(object sender, EventArgs e)
    {
        using(SqlConnection con = new SqlConnection(Util.GetConnection()))
        {
            string SQL =@"INSERT INTO Couples VALUES (@Groom, @Bride, @WeddingDate, @Ceremony, @Reception,
                            @DateAdded, @Status)";

            con.Open();
            using (SqlCommand cmd = new SqlCommand(SQL, con))
            {
                cmd.Parameters.AddWithValue("@Groom", txtGroom.Text);
                cmd.Parameters.AddWithValue("@Bride", txtBride.Text);
                cmd.Parameters.AddWithValue("@WeddingDate", txtDate.Text);
                cmd.Parameters.AddWithValue("@Ceremony", txtcv.Text);
                cmd.Parameters.AddWithValue("@Reception", txtrv.Text);
                cmd.Parameters.AddWithValue("@Status", "Active");
                cmd.Parameters.AddWithValue("@DateAdded", DateTime.Now);
                
                cmd.ExecuteNonQuery();

            }

        }
        Response.Redirect("Default.aspx");
    }

    }
