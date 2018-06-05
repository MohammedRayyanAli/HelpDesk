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
    public partial class resetPswdAssignee : System.Web.UI.Page
    {
        SqlConnection cnupdt;
        SqlCommand cmdupdt;
        SqlConnection cnReset;
        SqlCommand cmdReset;
        SqlDataReader drReset;
        SqlConnection cnResetTable;
        SqlCommand cmdResetTable;


        string Firstname;
        string Lastname;
        string Username;
        string Uname;
        string Email;
        string dept;



        protected void Page_Load(object sender, EventArgs e)
        {
            Uname = Request.QueryString["username"].ToString();
            cnReset = new SqlConnection(ConfigurationManager.ConnectionStrings["OHDConn"].ConnectionString);
            cnReset.Open();

            string SpecificAssignee = "select FIRSTNAME,LASTNAME,USERNAME,department,email from assigneeLogin where USERNAME='" + Uname + "'";

            cmdReset = new SqlCommand(SpecificAssignee, cnReset);
            drReset = cmdReset.ExecuteReader(CommandBehavior.CloseConnection);
            while (drReset.Read())
            {

                Firstname = drReset["FIRSTNAME"].ToString();
                Lastname = drReset["LASTNAME"].ToString();
                Username = drReset["UserName"].ToString();
                Email = drReset["email"].ToString();
                dept = drReset["department"].ToString();

            }
            lblFname1.Text = Firstname;
            lblLname1.Text = Lastname;
            lblUname1.Text = Username;
            lblEmail1.Text = Email;
            lblDeptname.Text = dept;

            drReset.Close();




        }



        protected void btnReset_Click(object sender, EventArgs e)
        {


            cnupdt = new SqlConnection(ConfigurationManager.ConnectionStrings["OHDConn"].ConnectionString);
            cnupdt.Open();
            string updtpswd = "update assigneeLogin set PASSWORD='" + txtNewpswd.Text.Trim() + "'where USERNAME='" + Uname + "'";
            cmdupdt = new SqlCommand(updtpswd, cnupdt);
            cmdupdt.ExecuteNonQuery();

            string reset = "yes";

            cnReset = new SqlConnection(ConfigurationManager.ConnectionStrings["OHDConn"].ConnectionString);
            cnReset.Open();
            string resetTable = "update AssigneePswd set reset ='" + reset + "'  where USERNAME='" + Uname + "'";
            cmdResetTable = new SqlCommand(resetTable, cnReset);
            cmdResetTable.ExecuteNonQuery();
            Response.Redirect("reqForPwdAssignee.aspx");



        }
    }
}