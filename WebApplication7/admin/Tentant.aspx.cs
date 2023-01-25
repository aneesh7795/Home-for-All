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
    public partial class WebForm2 : System.Web.UI.Page
    {
        adminbl oba = new adminbl();
        userbl obdl = new userbl();
       
        protected void Page_Load(object sender, EventArgs e)
        {
            if(!IsPostBack)
            {
                DataTable dt1 = oba.viewtentant();
                GridView1.DataSource = dt1;
                GridView1.DataBind();
            }

        }

        protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
        {

        }

        protected void GridView1_SelectedIndexChanged1(object sender, EventArgs e)
        {

        }

        

        protected void GridView1_RowEditing(object sender, GridViewEditEventArgs e)
        {
            GridView1.EditIndex = -1;
            DataTable dt1 = oba.viewtentant();
            GridView1.DataSource = dt1;

            GridView1.DataBind();
        }

        protected void GridView1_RowDeleting(object sender, GridViewDeleteEventArgs e)
        {

            int id = Convert.ToInt32(GridView1.DataKeys[e.RowIndex].Value.ToString());
            obdl.UserId = id;
            obdl.update();
            DataTable dt1 = oba.viewtentant();
            GridView1.DataSource = dt1;

            GridView1.DataBind();

        }

        protected void Button2_Click(object sender, EventArgs e)
        {

        }

        protected void TextBox1_TextChanged(object sender, EventArgs e)
        {

        }
    }
}