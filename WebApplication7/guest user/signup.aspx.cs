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
   
    
    public partial class WebForm1 : System.Web.UI.Page
    {
        sigand_log_bl objslbl = new sigand_log_bl();/*business layer calling*/
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            objslbl.NAME = txtname.Text;
            objslbl.PHONENUMBER = ddcode.SelectedValue + txtph.Text;
            objslbl.EMAIL = txtemail.Text;
            objslbl.PASSWORD = txtpsw.Text;
            objslbl.USERNAME = txtuser.Text;
            objslbl.Activity = ddsatus.SelectedItem.Text;
            
            objslbl.siginsert();
         
            Label1.Text = "Sucessfully Registered";
        }

        protected void ddsatus_SelectedIndexChanged(object sender, EventArgs e)
        {

        }
    }
}