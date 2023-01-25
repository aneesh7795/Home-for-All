using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.IO;
using System.Data;
using System.Data.SqlClient;

namespace WebApplication7.user
{
    public partial class WebForm2 : System.Web.UI.Page
    {
        sigand_log_bl obs = new sigand_log_bl();
        userbl obub = new userbl();
        ownbl obwbl = new ownbl();
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                DataTable dt3 = obwbl.view();
                if (dt3.Rows.Count > 0)
                {
                    Session["laid"] = (dt3.Rows[0]["laid"].ToString());
                }
              
               /* DataTable dt = obs.view();
                if (dt.Rows.Count > 0)
                {
                    Session["uid"] = dt.Rows[0]["Id"].ToString();
                    Session["logid"] = dt.Rows[0]["logid"].ToString();
                }
                obub.UID = Convert.ToInt32(Session["uid"]);
                obub.LogId = Convert.ToInt32(Session["logid"]);*/
            }
        }

        protected void SqlDataSource1_Selecting(object sender, SqlDataSourceSelectingEventArgs e)
        {

        }

        protected void DataList1_SelectedIndexChanged(object sender, EventArgs e)
        {
         
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            
        }

        protected void DataList1_SelectedIndexChanged1(object sender, EventArgs e)
        {

        }

        protected void DataList1_ItemCommand(object source, DataListCommandEventArgs e)
        {


            if (e.CommandName == "viewdetails")
            {
                Response.Redirect("trail.aspx?Id=" + e.CommandArgument.ToString());

            }
        }

        protected void Button1_Click1(object sender, EventArgs e)
        {

        }
    }
}