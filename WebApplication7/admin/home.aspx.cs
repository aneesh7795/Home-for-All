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
    public partial class home : System.Web.UI.Page
    {
        adminbl obl = new adminbl();
        protected void Page_Load(object sender, EventArgs e)
        {
            if(!IsPostBack)
            {
                
             
                Chart1.DataBind();
               
                
            }
        }

     
        protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
        {

        }

        protected void Chart1_Load(object sender, EventArgs e)
        {


        }
    }
}