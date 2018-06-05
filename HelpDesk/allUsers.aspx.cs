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
    public partial class allUsers : System.Web.UI.Page
    {
        public SqlDataAdapter da;
        public DataSet ds;
        public SqlConnection sqlConn;

        protected void Page_Load(object sender, EventArgs e)
        {
            sqlConn = new System.Data.SqlClient.SqlConnection(ConfigurationManager.ConnectionStrings["OHDConn"].ConnectionString);
            sqlConn.Open();
            string queryUsers = "Select * from register";
            da = new SqlDataAdapter(queryUsers, sqlConn);
            ds = new DataSet();
            da.Fill(ds);
            //gvUsers.DataSource = ds;
            gvUsers.DataBind();
            sqlConn.Close();
        }
    }
}