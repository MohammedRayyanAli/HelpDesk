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
    public partial class seeAssignee : System.Web.UI.Page
    {
        public SqlDataAdapter adpt;
        public DataSet ds;
        public SqlConnection cn;
        protected void Page_Load(object sender, EventArgs e)
        {
            cn = new SqlConnection(ConfigurationManager.ConnectionStrings["OHDConn"].ConnectionString);
            cn.Open();
            string queryAssignees = "Select * from assigneeLogin";
            adpt = new SqlDataAdapter(queryAssignees, cn);
            ds = new DataSet();
            adpt.Fill(ds);
            //gvUsers.DataSource = ds;
            gvAssignee.DataBind();
            cn.Close();

        }
    }
}