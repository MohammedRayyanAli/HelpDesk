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
    public partial class specificProcessedRequest : System.Web.UI.Page
    {
        SqlConnection cn;
        SqlCommand cmd;
        SqlConnection cnUser;
        SqlCommand cmdUser;
        SqlDataReader ReqReader;
        SqlDataReader UserReader;
        SqlConnection cnDelQuery;
        SqlCommand cmdDelquery;
        string requestText;
        string requestCategoryText;
        string sol;
        string fName;
        string lName;
        string semText;
        string emailAdd;
        string Department;

        int u_id;
        int r_id;

        protected void Page_Load(object sender, EventArgs e)
        {
            string R_ID = Request.QueryString["RequestID"].ToString();
            r_id = int.Parse(R_ID);
            cn = new SqlConnection(ConfigurationManager.ConnectionStrings["OHDConn"].ConnectionString);
            cn.Open();
            string selectField = "select request,requestCategory,solution from request where requestID= '" + r_id + "' ";
            cmd = new SqlCommand(selectField, cn);
            ReqReader = cmd.ExecuteReader(CommandBehavior.CloseConnection);
            while (ReqReader.Read())

            {
                requestText = ReqReader["request"].ToString();
                requestCategoryText = ReqReader["requestCategory"].ToString();
                sol = ReqReader["solution"].ToString();

            }
            txtVal.Text = requestText;
            txtNext.Text = requestCategoryText;
            txtSoln.Text = sol;

            string U_ID = Request.QueryString["UserID"].ToString();
            u_id = int.Parse(U_ID);
            cnUser = new SqlConnection(ConfigurationManager.ConnectionStrings["OHDConn"].ConnectionString);
            cnUser.Open();
            string selUser = "select FIRSTNAME,LASTNAME,EMAIL_ADDRESS,SEMESTER,Department from register where userID= " + u_id + "";
            cmdUser = new SqlCommand(selUser, cnUser);
            UserReader = cmdUser.ExecuteReader(CommandBehavior.CloseConnection);

            while (UserReader.Read())
            {
                fName = UserReader["FIRSTNAME"].ToString();
                lName = UserReader["LASTNAME"].ToString();
                Department = UserReader["Department"].ToString();
                semText = UserReader["SEMESTER"].ToString();
                emailAdd = UserReader["EMAIL_ADDRESS"].ToString();
            }
            Texfname.Text = fName;
            TexLname.Text = lName;
            TexSem.Text = semText;
            txtSoln.Text = sol;
            TexEmail.Text = emailAdd;
            txtDept.Text = Department;




        }
        protected void btnDeletereq_Click(object sender, EventArgs e)
        {
            cnDelQuery = new SqlConnection(ConfigurationManager.ConnectionStrings["OHDConn"].ConnectionString);
            cnDelQuery.Open();
            string delProccesedquery = "delete from request where userID='" + u_id + "'";


            cmdDelquery = new SqlCommand(delProccesedquery, cnDelQuery);
            cmdDelquery.ExecuteNonQuery();

            Texfname.Text = "";
            TexLname.Text = "";
            TexSem.Text = "";

            txtSoln.Text = "";
            TexEmail.Text = "";
            txtVal.Text = "";
            txtNext.Text = "";
            Response.Redirect("processedQuery.aspx");


        }
    }
}