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
    public partial class deleteDept : System.Web.UI.Page
    {
        SqlConnection cnDelete;
        SqlCommand cmdDelete;
        protected void Page_Load(object sender, EventArgs e)
        {
            string cat = Request.QueryString["deptID"].ToString();
            int d_id = int.Parse(cat);

            string deleteQuery = " delete from department where deptID = '" + d_id + "'";
            cnDelete = new SqlConnection(ConfigurationManager.ConnectionStrings["OHDConn"].ConnectionString);
            cnDelete.Open();

            cmdDelete = new SqlCommand(deleteQuery, cnDelete);
            cmdDelete.ExecuteNonQuery();
            Response.Redirect("addDepartment.aspx");

        }
    }
}