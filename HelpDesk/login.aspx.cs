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
    public partial class login : System.Web.UI.Page
    {
        SqlConnection cn;
        SqlConnection cnForPwd;
        SqlCommand cmd;
        SqlCommand cmdForPwd;
        SqlDataReader Unamereader;
        SqlDataReader Pswdreader;
        string pwd;
        string uID;
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {

        }
        protected void btnSubmit_Click(object sender, EventArgs e)
        {
            if (ddlUser.SelectedValue == "Student")
            {

                cn = new SqlConnection(ConfigurationManager.ConnectionStrings["OHDConn"].ConnectionString);

                cn.Open();

                string strUname = "select USERNAME from register where USERNAME ='" + txtUname.Text.Trim() + "'";

                cmd = new SqlCommand(strUname, cn);

                Unamereader = cmd.ExecuteReader(CommandBehavior.CloseConnection);


                if (Unamereader.HasRows == true)
                {
                    cnForPwd = new SqlConnection(ConfigurationManager.ConnectionStrings["OHDConn"].ConnectionString);
                    cnForPwd.Open();
                    string strPwd = "select userID,PASSWORD from register where USERNAME ='" + txtUname.Text.Trim() + "'";
                    cmdForPwd = new SqlCommand(strPwd, cnForPwd);
                    Pswdreader = cmdForPwd.ExecuteReader(CommandBehavior.CloseConnection);
                    while (Pswdreader.Read())
                    {
                        pwd = Pswdreader["PASSWORD"].ToString();
                        uID = Pswdreader["userID"].ToString();
                    }
                    Pswdreader.Close();

                    if (string.Compare(pwd, txtPswd.Text) == 0)
                    {

                        Session["USERNAME"] = txtUname.Text.Trim();
                        Session["uID"] = uID;
                        Session["PASSWORD"] = pwd;
                        Response.Redirect("newRequest.aspx");
                    }
                    else
                    {
                        Response.Write("<script>alert('Invalid Password')</script>");
                        txtPswd.Text = "";
                    }

                }
                else
                {
                    Response.Write("<script> alert('UserName does not exist... try again')</script>");
                    txtUname.Text = "";
                    txtPswd.Text = "";
                }
            }
            else if (ddlUser.SelectedValue == "Administrator")
            {
                // coding for admin login
                cn = new SqlConnection(ConfigurationManager.ConnectionStrings["OHDConn"].ConnectionString);

                cn.Open();

                string strUname = "select userName from adminLogin where userName ='" + txtUname.Text.Trim() + "'";

                cmd = new SqlCommand(strUname, cn);

                Unamereader = cmd.ExecuteReader(CommandBehavior.CloseConnection);


                if (Unamereader.HasRows == true)
                {
                    cnForPwd = new SqlConnection(ConfigurationManager.ConnectionStrings["OHDConn"].ConnectionString);
                    cnForPwd.Open();
                    string strPwd = "select userID,password from adminLogin where userName ='" + txtUname.Text.Trim() + "'";
                    cmdForPwd = new SqlCommand(strPwd, cnForPwd);
                    Pswdreader = cmdForPwd.ExecuteReader(CommandBehavior.CloseConnection);
                    while (Pswdreader.Read())
                    {
                        pwd = Pswdreader["PASSWORD"].ToString();
                        uID = Pswdreader["userID"].ToString();
                    }
                    Pswdreader.Close();

                    if (string.Compare(pwd, txtPswd.Text) == 0)
                    {
                        Session["USERNAME"] = txtUname.Text.Trim();
                        Session["uID"] = uID;
                        Session["PASSWORD"] = pwd;
                        Response.Redirect("adminHome.aspx");
                    }
                    else
                    {
                        Response.Write("<script>alert('Invalid Password')</script>");
                        txtPswd.Text = "";
                    }

                }
                else
                {
                    Response.Write("<script> alert('UserName does not exist... try again')</script>");
                    txtUname.Text = "";
                    txtPswd.Text = "";
                }
                //coding ends for admin login
            }
            else
            {
                // coding for assignee login
                cn = new SqlConnection(ConfigurationManager.ConnectionStrings["OHDConn"].ConnectionString);

                cn.Open();

                string strUname = "select userName from assigneeLogin where userName ='" + txtUname.Text.Trim() + "'";

                cmd = new SqlCommand(strUname, cn);

                Unamereader = cmd.ExecuteReader(CommandBehavior.CloseConnection);


                if (Unamereader.HasRows == true)
                {
                    cnForPwd = new SqlConnection(ConfigurationManager.ConnectionStrings["OHDConn"].ConnectionString);
                    cnForPwd.Open();
                    string strPwd = "select userID,password,UserName from assigneeLogin where userName ='" + txtUname.Text.Trim() + "'";
                    cmdForPwd = new SqlCommand(strPwd, cnForPwd);
                    Pswdreader = cmdForPwd.ExecuteReader(CommandBehavior.CloseConnection);
                    while (Pswdreader.Read())
                    {
                        pwd = Pswdreader["password"].ToString();
                        uID = Pswdreader["userID"].ToString();

                    }
                    Pswdreader.Close();

                    if (string.Compare(pwd, txtPswd.Text) == 0)
                    {
                        Session["uID"] = uID;
                        Session["PASSWORD"] = pwd;
                        Session["uName"] = txtUname.Text.Trim();
                        Response.Redirect("assigneeHome.aspx");

                    }
                    else
                    {
                        Response.Write("<script>alert('Invalid Password')</script>");
                        txtPswd.Text = "";
                    }

                }
                else
                {
                    Response.Write("<script> alert('UserName does not exist... try again')</script>");
                    txtUname.Text = "";
                    txtPswd.Text = "";
                }
                // coding ends for assignee login

            }
        }
    }
}