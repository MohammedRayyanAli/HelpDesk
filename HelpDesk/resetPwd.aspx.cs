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
    public partial class resetPwd : System.Web.UI.Page
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
        string Email;
        string semester;
        string Userid;
        string Uname;

        protected void Page_Load(object sender, EventArgs e)
        {
            Uname = Request.QueryString["username"].ToString();
            cnReset = new SqlConnection(ConfigurationManager.ConnectionStrings["OHDConn"].ConnectionString);
            cnReset.Open();

            string SpecificUser = " select FIRSTNAME,LASTNAME,USERNAME,EMAIL_ADDRESS,SEMESTER,userID from register where USERNAME='" + Uname + "'";

            cmdReset = new SqlCommand(SpecificUser, cnReset);
            drReset = cmdReset.ExecuteReader(CommandBehavior.CloseConnection);
            while (drReset.Read())
            {
                Firstname = drReset["FIRSTNAME"].ToString();
                Lastname = drReset["LASTNAME"].ToString();
            }
            lblFname1.Text = Firstname;
            lblLname1.Text = Lastname;


        }

        protected void btnReset_Click(object sender, EventArgs e)
        {
            cnupdt = new SqlConnection(ConfigurationManager.ConnectionStrings["OHDConn"].ConnectionString);
            cnupdt.Open();
            string updtpswd = "update register set PASSWORD='" + txtNewpswd.Text.Trim() + "'where USERNAME='" + Uname + "'";
            cmdupdt = new SqlCommand(updtpswd, cnupdt);
            cmdupdt.ExecuteNonQuery();

            string reset = "yes";

            cnReset = new SqlConnection(ConfigurationManager.ConnectionStrings["OHDConn"].ConnectionString);
            cnReset.Open();
            string resetTable = "update forgotPswd set reset ='" + reset + "'  where USERNAME='" + Uname + "'";
            cmdResetTable = new SqlCommand(resetTable, cnReset);
            cmdResetTable.ExecuteNonQuery();
            Response.Redirect("reqForpswd.aspx");
            lblFname1.Text = "";
            lblLname1.Text = "";


        }
    }
}