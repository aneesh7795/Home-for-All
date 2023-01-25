using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;

namespace WebApplication7.guest_user
{
    public partial class WebForm2 : System.Web.UI.Page
    {
        sigand_log_bl oblbl = new sigand_log_bl();
        sigand_log_bl obsbl = new sigand_log_bl();
        protected void Page_Load(object sender, EventArgs e)
        {
          
            if (!IsPostBack)
            {
                DataTable dt = obsbl.view();

                if (dt.Rows.Count > 0)
                {
                    Session["uid"] = dt.Rows[0]["Id"].ToString();
                }


            }
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            oblbl.USERNAME = txtuser.Text;
            oblbl.PASSWORD = txtpassword.Text;
            obsbl.ID = Convert.ToInt32(Session["uid"].ToString());


            DataTable dt = oblbl.login();
            if(dt.Rows.Count==1)
            {
                Session["uname"] = dt.Rows[0]["username"].ToString();
                Session["logid"] = dt.Rows[0]["lgid"].ToString();

                if(dt.Rows[0]["activity"].ToString()=="Owner")
                {
                    Response.Redirect("~/owner/createland.aspx");
                }
                else if(dt.Rows[0]["activity"].ToString()== "Tenant")
                {
                    Response.Redirect("~/user/showview.aspx");
                }
                else if(dt.Rows[0]["activity"].ToString()=="admin")
                {
                    Response.Redirect("~/admin/home.aspx");
                }
                else
                {
                    Response.Write("wrong");
                }
            }
        }

        protected void CheckBox1_CheckedChanged(object sender, EventArgs e)
        {

        }

        protected void txtpassword_TextChanged(object sender, EventArgs e)
        {

        }
    }
}