using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;

namespace WebApplication7.owner
{
    public partial class WebForm2 : System.Web.UI.Page
    {
        userbl obou = new userbl();
        sigand_log_bl oblbl = new sigand_log_bl();
        ownbl obl = new ownbl();
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {


                DataTable dt = oblbl.login();

                if (dt.Rows.Count >1)
                {
                    Session["logid"] = Convert.ToInt32 (dt.Rows[0]["lgid"].ToString());
                }
               obl.LogId = Convert.ToInt32(Session["logid"].ToString());
                int logid =Convert.ToInt32( obl.LogId.ToString());
              DataTable dt1= obl.viewuser();

                GridView1.DataSource = obl.viewuser();
                GridView1.DataBind();
            }

        }

        protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
        {

        }
    }
}