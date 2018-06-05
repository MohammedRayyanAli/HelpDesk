using System;
using System.Data;
using System.Configuration;
using System.Collections;
using System.Web;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.UI.WebControls.WebParts;
using System.Web.UI.HtmlControls;
using System.Data.SqlClient;

namespace HelpDesk
{
    public partial class deleteCategory : System.Web.UI.Page
    {
        SqlConnection cnDelete;
        SqlCommand cmdDelete;
        protected void Page_Load(object sender, EventArgs e)
        {
            string cat = Request.QueryString["categories"].ToString();

            string deleteQuery = " delete from category where categories = '" + cat + "'";
            cnDelete = new SqlConnection(ConfigurationManager.ConnectionStrings["OHDConn"].ConnectionString);
            cnDelete.Open();

            cmdDelete = new SqlCommand(deleteQuery, cnDelete);
            cmdDelete.ExecuteNonQuery();
            Response.Redirect("addCategory.aspx");

        }
    }
}