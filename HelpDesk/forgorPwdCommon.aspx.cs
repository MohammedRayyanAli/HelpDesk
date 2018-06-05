using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Configuration;
using System.Collections;
using System.Web.Security;
using System.Web.UI.WebControls.WebParts;
using System.Web.UI.HtmlControls;
using System.Data.SqlClient;

namespace HelpDesk
{
    public partial class forgorPwdCommon : System.Web.UI.Page
    {
        SqlConnection cn;
        SqlCommand cmd;
        protected void Page_Load(object sender, EventArgs e)
        {

        }
        protected void btnSubmit_Click(object sender, EventArgs e)
        {
            // string userValue = ddlUser.SelectedValue;

            if (ddlUser.SelectedValue == "Student")
            {
                cn = new SqlConnection(ConfigurationManager.ConnectionStrings["OHDConn"].ConnectionString);
                cn.Open();
                string str = "insert forgotPswd(UserName,Email_Address)" + "values('" + txtUname.Text.Trim() + "','" + txtEmail.Text.Trim() + "')";


                cmd = new SqlCommand(str, cn);

                cmd.ExecuteNonQuery();
                Response.Write("<script>alert('Your Request Has Been Sent To Administrator')</script>");
                txtUname.Text = "";
                txtEmail.Text = "";
                Response.Redirect("aboutUs.aspx");
            }
            else if (ddlUser.SelectedValue == "Assignee")
            {
                cn = new SqlConnection(ConfigurationManager.ConnectionStrings["OHDConn"].ConnectionString);
                cn.Open();
                string Assigneepswd = "insert AssigneePswd(UserName,Email_Address)" + "values('" + txtUname.Text.Trim() + "','" + txtEmail.Text.Trim() + "')";


                cmd = new SqlCommand(Assigneepswd, cn);

                cmd.ExecuteNonQuery();
                txtUname.Text = "";
                txtEmail.Text = "";
                Response.Redirect("aboutUs.aspx");
            }
        }
    }
}