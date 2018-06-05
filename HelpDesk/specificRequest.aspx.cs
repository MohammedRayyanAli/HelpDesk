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
    public partial class specificRequest : System.Web.UI.Page
    {
        SqlConnection cnForRequest;
        SqlConnection cnForUser;
        SqlConnection cnForAssignee;
        SqlConnection cn;
        SqlCommand cmd;
        SqlCommand cmdForRequest;
        SqlCommand cmdForUser;
        SqlCommand cmdForAssignee;

        SqlDataReader userReader;
        SqlDataReader reqReader;
        SqlDataReader AssigneeReader;

        string requestText;
        string ReqDept;
        string requestCategoryText;
        string fName;
        string lName;
        string emailTxt;
        string semText;
        string aName;
        string studDept;
        int uID;
        int rID;
        protected void Page_Load(object sender, EventArgs e)
        {
            string r_ID = Request.QueryString["requestID"].ToString();
            rID = int.Parse(r_ID);
            cnForRequest = new SqlConnection(ConfigurationManager.ConnectionStrings["OHDConn"].ConnectionString);
            cnForRequest.Open();
            string strReq = "select requestCategory,request,requestDept from request where requestID= '" + rID + "'";
            cmdForRequest = new SqlCommand(strReq, cnForRequest);
            reqReader = cmdForRequest.ExecuteReader(CommandBehavior.CloseConnection);
            while (reqReader.Read())
            {
                requestText = reqReader["request"].ToString();
                requestCategoryText = reqReader["requestCategory"].ToString();
                ReqDept = reqReader["requestDept"].ToString();
            }
            lblQ.Text = requestText;

            lblCat.Text = requestCategoryText;
            lblReqDeptvalue.Text = ReqDept;
            reqReader.Close();

            string u_ID = Request.QueryString["userID"].ToString();
            uID = int.Parse(u_ID);
            cnForUser = new SqlConnection(ConfigurationManager.ConnectionStrings["OHDConn"].ConnectionString);
            cnForUser.Open();
            string strUser = "select FIRSTNAME,LASTNAME,EMAIL_ADDRESS,Department,SEMESTER from register where userID= " + uID + "";
            cmdForUser = new SqlCommand(strUser, cnForUser);
            userReader = cmdForUser.ExecuteReader(CommandBehavior.CloseConnection);

            while (userReader.Read())
            {
                fName = userReader["FIRSTNAME"].ToString();
                lName = userReader["LASTNAME"].ToString();
                studDept = userReader["Department"].ToString();

                emailTxt = userReader["EMAIL_ADDRESS"].ToString();
                semText = userReader["SEMESTER"].ToString();

            }

            lblFnamevalue.Text = fName;
            lblLnamevalue.Text = lName;
            lblEmailValue.Text = emailTxt;
            lblSemvalue.Text = semText;
            lblStudDeptVal.Text = studDept;





            userReader.Close();



        }
        protected void btnSubmit_Click(object sender, EventArgs e)
        {

            cnForAssignee = new SqlConnection(ConfigurationManager.ConnectionStrings["OHDConn"].ConnectionString);
            cnForAssignee.Open();
            string assigneeName = ddlAssignee.SelectedItem.ToString();
            string a_name = assigneeName.Trim();
            string strAssignee = "select * from assigneeLogin where FirstName = '" + a_name + "'";
            cmdForAssignee = new SqlCommand(strAssignee, cnForAssignee);
            AssigneeReader = cmdForAssignee.ExecuteReader(CommandBehavior.CloseConnection);
            while (AssigneeReader.Read())
            {
                aName = AssigneeReader["UserName"].ToString();

            }



            cn = new SqlConnection(ConfigurationManager.ConnectionStrings["OHDConn"].ConnectionString);
            cn.Open();
            string strassignee = "insert requestArrivedAtAssignee(requestID,userID,department,assigneeName)" + "values('" + rID + "','" + uID + "','" + ddlDept.SelectedItem + "','" + aName + "')";
            cmd = new SqlCommand(strassignee, cn);
            cmd.ExecuteNonQuery();

            Response.Redirect("requestArrivedForAdmin.aspx");

        }
    }
}