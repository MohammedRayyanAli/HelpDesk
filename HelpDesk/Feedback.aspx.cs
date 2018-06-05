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
    public partial class Feedback : System.Web.UI.Page
    {
        SqlConnection cn;
        SqlCommand cmd;
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnSubmitfeedback_Click(object sender, EventArgs e)
        {
            cn = new SqlConnection(ConfigurationManager.ConnectionStrings["OHDConn"].ConnectionString);
            cn.Open();
            string feedback = "insert Feedback(FirstName,LastName,UserName,Comments)" + "values('" + txtFname.Text.Trim() + "','" + txtLname.Text.Trim() + "','" + txtUname.Text.Trim() + "','" + txtComments.Text.Trim() + "')";
            cmd = new SqlCommand(feedback, cn);
            cmd.ExecuteNonQuery();
        }
        protected void btnCancel_Click(object sender, EventArgs e)
        {
            txtFname.Text = "";
            txtLname.Text = "";
            txtUname.Text = "";
            txtComments.Text = "";

        }
    }
}