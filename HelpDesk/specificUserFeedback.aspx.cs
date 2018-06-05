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
    public partial class specificUserFeedback : System.Web.UI.Page
    {
        SqlConnection cn;
        SqlCommand cmd;
        SqlDataReader feedbackRead;
        string Email;
        string FirstName;
        string LastName;
        string semester;
        string Department;


        protected void Page_Load(object sender, EventArgs e)

        {
            string user_name = Request.QueryString["UserName"].ToString();
            cn = new SqlConnection(ConfigurationManager.ConnectionStrings["OHDConn"].ConnectionString);
            cn.Open();
            string feedback = "select FIRSTNAME,LASTNAME, Email_Address,Department,SEMESTER from register where UserName='" + user_name + "' ";
            cmd = new SqlCommand(feedback, cn);
            feedbackRead = cmd.ExecuteReader(CommandBehavior.CloseConnection);

            while (feedbackRead.Read())
            {
                FirstName = feedbackRead["FIRSTNAME"].ToString();
                LastName = feedbackRead["LASTNAME"].ToString();
                semester = feedbackRead["SEMESTER"].ToString();
                Department = feedbackRead["Department"].ToString();
                Email = feedbackRead["Email_Address"].ToString();

            }

            txtFname.Text = FirstName;
            txtLname.Text = LastName;
            txtSem.Text = semester;
            txtdept.Text = Department;
            txtEmail.Text = Email;
        }
    }
}