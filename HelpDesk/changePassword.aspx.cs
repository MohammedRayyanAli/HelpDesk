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
    public partial class changePassword : System.Web.UI.Page
    {
        SqlConnection cn;
        SqlCommand cmdUpdtPswd;



        protected void Page_Load(object sender, EventArgs e)
        {



        }
        protected void btnSubmit_Click(object sender, EventArgs e)
        {
            string pswdInsession = Session["PASSWORD"].ToString();
            string UnameInsession = Session["USERNAME"].ToString();
            if (txtOldPwd.Text == pswdInsession)
            {
                cn = new SqlConnection(ConfigurationManager.ConnectionStrings["OHDConn"].ConnectionString);
                cn.Open();
                string updtPswd = "update register set password = '" + txtRpswd.Text.Trim() + "', Retype_Password='" + txtRpswd.Text.Trim() + "' where USERNAME='" + UnameInsession + "'";



                cmdUpdtPswd = new SqlCommand(updtPswd, cn);
                cmdUpdtPswd.ExecuteNonQuery();

                Session["PASSWORD"] = txtRpswd.Text.Trim();

                Response.Write("<script>alert('You Have Successfully Changed Your Password') </script>");
                txtOldPwd.Text = "";
            }
            else
            {
                Response.Write("<script>alert('The Old Password Entered Is Not Correct') </script>");

            }

        }
    }
}