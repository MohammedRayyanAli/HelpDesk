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
    public partial class forgotPwdAssignee : System.Web.UI.Page
    {
        SqlConnection cn;
        SqlCommand cmd;
        protected void Page_Load(object sender, EventArgs e)
        {

        }
        protected void btnSubmit_Click(object sender, EventArgs e)
        {
            cn = new SqlConnection(ConfigurationManager.ConnectionStrings["OHDConn"].ConnectionString);
            cn.Open();
            string Assigneepswd = "insert AssigneePswd(UserName,Email_Address)" + "values('" + txtUnamelogin.Text.Trim() + "','" + txtEmail.Text.Trim() + "')";


            cmd = new SqlCommand(Assigneepswd, cn);

            cmd.ExecuteNonQuery();
            txtUnamelogin.Text = "";
            txtEmail.Text = "";

        }
    }
}