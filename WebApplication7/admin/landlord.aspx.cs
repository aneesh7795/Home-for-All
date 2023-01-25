using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;

namespace WebApplication7.admin
{
    public partial class WebForm1 : System.Web.UI.Page
    {

       sigand_log_bl obcs = new sigand_log_bl();
        adminbl obdl = new adminbl();
        ownbl obwbl = new ownbl();/*update satus*/
    
        protected void Page_Load(object sender, EventArgs e)
         {if (!IsPostBack)
            {
                DataTable dt = obcs.view();
                if (dt.Rows.Count > 0)
                {
                    Session["uid"] = dt.Rows[0]["Id"].ToString();
                }
                obdl.Uid = Convert.ToInt32(Session["uid"].ToString());

                DataTable dt1 = obdl.view();
                GridView1.DataSource = dt1;
                GridView1.DataBind();
            }
         }
      


        protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
        {

        }

        protected void GridView1_RowEditing(object sender, GridViewEditEventArgs e)
        {

            GridView1.EditIndex = -1;
            DataTable dt1 = obdl.view();
            GridView1.DataSource = dt1;
           
            GridView1.DataBind();

        }

        protected void GridView1_RowDeleting(object sender, GridViewDeleteEventArgs e)
        {
            int id = Convert.ToInt16(GridView1.DataKeys[e.RowIndex].Value.ToString());
            obwbl.LandLid = id;
            obwbl.update();
            DataTable dt1 = obdl.view();
            GridView1.DataSource = dt1;

            GridView1.DataBind();


        }
    }
}