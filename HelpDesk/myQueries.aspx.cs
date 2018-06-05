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
    public partial class myQueries : System.Web.UI.Page
    {
        public SqlDataAdapter da;
        public DataSet ds;
        public SqlConnection sqlConn;

        protected void Page_Load(object sender, EventArgs e)
        {
            string uID = Session["uID"].ToString();
            int userID = int.Parse(uID);

            sqlConn = new System.Data.SqlClient.SqlConnection(ConfigurationManager.ConnectionStrings["OHDConn"].ConnectionString);
            sqlConn.Open();
            string queryRequest = "select request,solution,time from request where userID = '" + userID + "' and solution is not Null";
            da = new SqlDataAdapter(queryRequest, sqlConn);
            ds = new DataSet();
            da.Fill(ds);
            gvAllMyQueries.DataSource = ds;
            gvAllMyQueries.DataBind();
            sqlConn.Close();

        }

    }
}