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
    public partial class requestArrivedForAssignee : System.Web.UI.Page
    {
        public SqlDataAdapter da;
        public DataSet ds;
        public SqlConnection sqlConn;


        protected void Page_Load(object sender, EventArgs e)
        {

            string uName = Session["uName"].ToString();


            sqlConn = new System.Data.SqlClient.SqlConnection(ConfigurationManager.ConnectionStrings["OHDConn"].ConnectionString);
            sqlConn.Open();
            string queryRequest = "select request,requestID,requestCategory,userID from request where requestId in(Select requestID from requestArrivedAtAssignee where assigneeName = '" + uName + "') and solution is null ";
            da = new SqlDataAdapter(queryRequest, sqlConn);
            ds = new DataSet();
            da.Fill(ds);
            gvRequest.DataSource = ds;
            gvRequest.DataBind();
            sqlConn.Close();

        }
    }
}