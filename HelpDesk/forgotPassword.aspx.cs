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
    public partial class forgotPassword : System.Web.UI.Page
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
            string str = "insert forgotPswd(UserName,Email_Address)" + "values('" + txtUnamelogin.Text.Trim() + "','" + txtEmail.Text.Trim() + "')";


            cmd = new SqlCommand(str, cn);

            cmd.ExecuteNonQuery();
            Response.Write("<script>alert('Your Request Has Been Sent To Administrator')</script>");
            txtUnamelogin.Text = "";
            txtEmail.Text = "";

        }
    }
}