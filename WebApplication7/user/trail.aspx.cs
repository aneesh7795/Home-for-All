using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;

namespace WebApplication7.user
{
   
    public partial class trail : System.Web.UI.Page
    {
        userbl obub = new userbl();
        sigand_log_bl obs = new sigand_log_bl();
        protected void Page_Load(object sender, EventArgs e)
        {

            if (!IsPostBack)

            {
                DataTable dt = obs.login();
                if (dt.Rows.Count == 1)
                {

                    /* Session["logid"] = dt.Rows[0]["logid"].ToString();*/

                    Session["logid"] = dt.Rows[0]["lgid"].ToString();
                }
               
              /*  obub.LogId = Convert.ToInt32(Session["logid"]);*/
             
            }
        }

        protected void DataList1_SelectedIndexChanged(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {

        }

        protected void DataList1_ItemCommand(object source, DataListCommandEventArgs e)
        {
            if(e.CommandName=="appoinment")
                    {
                Response.Redirect("WebForm1.aspx");
            }
            }

        
    }
}