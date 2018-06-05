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
    public partial class createNewAccount : System.Web.UI.Page
    {
        SqlConnection cn;
        SqlCommand cmd;
        SqlDataReader dr;
        string txtGender;
        SqlCommand cmdForUserName;
        SqlConnection cn2;
        string queryForUserID;
        SqlCommand cmdForUserID;
        SqlConnection conUserID;
        SqlDataReader drForUserID;

        protected void Page_Load(object sender, EventArgs e)
        {



        }

        protected void btnSubmit_Click1(object sender, EventArgs e)
        {
            if (rbtAccept.Checked.ToString() == "True")
            {
                cn2 = new SqlConnection(ConfigurationManager.ConnectionStrings["OHDConn"].ConnectionString);
                cn2.Open();
                string queryForUserName = "Select USERNAME from register where USERNAME= '" + txtUname.Text.Trim() + "' ";

                cmdForUserName = new SqlCommand(queryForUserName, cn2);
                dr = cmdForUserName.ExecuteReader(CommandBehavior.CloseConnection);
                if (dr.HasRows)
                {
                    Response.Write("<script>alert('Username you have entered already exists.Please enter another username!')</script>");
                }
                else
                {


                    if (rbtMale.Checked == true)
                    {
                        txtGender = "Male";
                    }
                    else if (rbtFemale.Checked == true)
                    {
                        txtGender = "Female";
                    }


                    cn = new SqlConnection(ConfigurationManager.ConnectionStrings["OHDConn"].ConnectionString);
                    cn.Open();
                    string str = "insert register(FIRSTNAME,LASTNAME,USERNAME,PASSWORD,RETYPE_PASSWORD,EMAIL_ADDRESS,Department,SEMESTER,ADDRESS,MOBILE_NO,GENDER,dobDays,dobMonths,Year)" + " values('" + txtFname.Text.Trim() + "','" + txtLname.Text.Trim() + "','" + txtUname.Text.Trim() + "','" + txtPassword.Text.Trim() + "','" + txtRpswd.Text.Trim() + "','" + txtEmail.Text.Trim() + "','" + ddlDept.SelectedValue + "'," + txtSem.Text.Trim() + ",'" + txtAdd.Text.Trim() + "', " + txtMob.Text.Trim() + ",'" + txtGender + "','" + ddlDays.SelectedValue + "','" + ddlMonth.SelectedValue + "','" + txtYear.Text.Trim() + "' )";
                    cmd = new SqlCommand(str, cn);
                    cmd.ExecuteNonQuery();


                    conUserID = new SqlConnection(ConfigurationManager.ConnectionStrings["OHDConn"].ConnectionString);
                    conUserID.Open();
                    queryForUserID = "Select userID from register where USERNAME= '" + txtUname.Text.Trim() + "' ";

                    cmdForUserID = new SqlCommand(queryForUserID, conUserID);
                    drForUserID = cmdForUserID.ExecuteReader(CommandBehavior.CloseConnection);


                    while (drForUserID.Read())
                    {
                        string userIdFetch = drForUserID["userID"].ToString();
                        Session["uID"] = userIdFetch;

                    }




                    Response.Write("<script>alert('You have successfully created your account!')</script>");
                }
            }
            else
            {
                Response.Write("<script>alert('You have chosen not to register!')</script>");
            }
        }

        protected void btnCancel_Click(object sender, EventArgs e)
        {

            Response.Write("<script>alert('You have chosen not to register!')</script>");

        }
    }
}