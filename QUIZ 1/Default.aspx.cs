using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class QUIZ_1_Default : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            GetCouples();
        }

    }
    protected void lvCouples_ItemCommand(object sender, ListViewCommandEventArgs e)
    {
        if (e.CommandName == "archive")//user clicks delete icon 
        {
            Literal ltCoupleID = (Literal)e.Item.FindControl("ltCoupleID"); //call any asp.net control from item template tag

            using (SqlConnection con = new SqlConnection(Util.GetConnection()))
            {
                string SQL = @"UPDATE Couples SET Status=@Status WHERE CoupleID=@CoupleID";

                con.Open();
                using (SqlCommand cmd = new SqlCommand(SQL, con))
                {
                    cmd.Parameters.AddWithValue("@Status", "Archived");
                    cmd.Parameters.AddWithValue("@CoupleID", ltCoupleID.Text);
                   
                    cmd.ExecuteNonQuery();

                }
            }
        }
        GetCouples();

    }
    protected void lvCouples_PagePropertiesChanging(object sender, PagePropertiesChangingEventArgs e)
    {
        dpCouples.SetPageProperties(e.StartRowIndex, e.MaximumRows, false);

        GetCouples();
    }
    protected void lvCouples_ItemDataBound(object sender, ListViewItemEventArgs e)
    {
        dpCouples.Visible = dpCouples.TotalRowCount > dpCouples.PageSize;
    }

    void GetCouples()
    {
        using (SqlConnection con = new SqlConnection(Util.GetConnection()))
        {
            string SQL = @"SELECT CoupleID, Groom, WeddingDate,
                            Ceremony, Reception, Status, DateAdded
                             FROM Couples";
            con.Open();

            using (SqlCommand cmd = new SqlCommand(SQL, con))
            {
                using (SqlDataAdapter da = new SqlDataAdapter(cmd))
                {
                    DataSet ds = new DataSet();
                    da.Fill(ds, "Anythingyouwoulliketowrite");

                    lvCouples.DataSource = ds;
                    lvCouples.DataBind();
                }
            }

        }
    }
    void GetCouples(string keyword)
    {
        using (SqlConnection con = new SqlConnection(Util.GetConnection()))
        {
            string SQL = @"SELECT CoupleID,Groom+' and '+ Bride AS CoupleName,
                            WeddingDate, Ceremony, Reception, Status, DateAdded
                             FROM Couples WHERE CoupleID LIKE @keyword OR 
                             Groom LIKE @keyword OR 
                             Bride LIKE @keyword OR
                             Ceremony LIKE @keyword OR
                             Reception LIKE @keyword OR 
                             Status LIKE @keyword";
            con.Open();

            using (SqlCommand cmd = new SqlCommand(SQL, con))
            {
                cmd.Parameters.AddWithValue("@keyword", "%" + keyword + "%");

                using (SqlDataAdapter da = new SqlDataAdapter(cmd))
                {
                    DataSet ds = new DataSet();
                    da.Fill(ds, "Anythingyouwoulliketowrite");

                    lvCouples.DataSource = ds;
                    lvCouples.DataBind();
                }
            }

        }
    }
    protected void btnSearch_Click(object sender, EventArgs e)
    {
        if (txtKeyword.Text == "")
            GetCouples();
        else
            GetCouples(txtKeyword.Text);
    }
}