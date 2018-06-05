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
    public partial class newRequest : System.Web.UI.Page
    {
        SqlConnection cn;
        SqlCommand cmd;
        SqlConnection cnWelcm;
        SqlCommand cmdWelcm;
        SqlDataReader drWelcm;
        string Firstname;
        string Lastname;

        protected void Page_Load(object sender, EventArgs e)
        {
            string user_n = Session["USERNAME"].ToString();
            cnWelcm = new SqlConnection(ConfigurationManager.ConnectionStrings["OHDConn"].ConnectionString);
            cnWelcm.Open();

            string welcmUser = "select FIRSTNAME,LASTNAME from register where USERNAME='" + user_n + "'";
            cmdWelcm = new SqlCommand(welcmUser, cnWelcm);
            cmdWelcm.ExecuteNonQuery();
            drWelcm = cmdWelcm.ExecuteReader();
            while (drWelcm.Read())
            {
                Firstname = drWelcm["FIRSTNAME"].ToString();
                Lastname = drWelcm["LASTNAME"].ToString();

            }


            lblWelcome.Text = "Welcome:   " + Firstname + "&nbsp" + "&nbsp" + Lastname + "<br>";
            lblLtime.Text = " Your Login Date and Time Is:" + "&nbsp" + "&nbsp" + System.DateTime.Now;



        }

        protected void btnSubmit_Click(object sender, EventArgs e)
        {
            cn = new SqlConnection("Data Source=.;Initial Catalog=OHD;Integrated Security=True");
            cn.Open();
            cmd = new SqlCommand();

            string u_id = Session["uID"].ToString();
            Session["uID"] = u_id;
            int user_id = int.Parse(u_id);
            DateTime time = System.DateTime.Now;

            string str = "insert request(userID,request,requestCategory,requestDept,time)" + " values('" + u_id + "','" + txtRequest.Text.Trim() + "','" + ddlCategory.SelectedValue + "','" + ddlDept.SelectedValue + "','" + time + "')";
            cmd = new SqlCommand(str, cn);
            cmd.ExecuteNonQuery();

            txtRequest.Text = "";

            Response.Write("<script>alert('You Have Successfully Sent Your Request To The Administrator!')</script>");


        }
        protected void btnCancel_Click(object sender, EventArgs e)
        {
            Response.Redirect("FAQ.aspx");
        }
    }
}