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
    public partial class updateland : System.Web.UI.Page
    {
        ownbl obob = new ownbl();
        sigand_log_bl obs = new sigand_log_bl();
        protected void Page_Load(object sender, EventArgs e)
        {
            if(!IsPostBack)
            {
                DataTable dt = obs.view();
                if(dt.Rows.Count>0)
                {
                    Session["uid"] = dt.Rows[0]["Id"].ToString();
                    Session["logid"] = dt.Rows[0]["logid"].ToString();
                }
              
            }

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            obob.StreetAddress = txtsa.Text;
            obob.StreetNUmber = Convert.ToInt32(txtsn.Text.ToString());
            obob.Room = ddroom.Text.ToString();
            obob.RentAmount = rddam.Text.ToString();
            obob.Duration = Convert.ToInt32(ddcon.Text.ToString());
            foreach (HttpPostedFile image in imf.PostedFiles)
            {
                obob.Image=(image.FileName);
                image.SaveAs(Server.MapPath("~/images/") + obob.Image);

            }
            obob.SquareFeet = squarefit.Text;
            obob.Sid = Convert.ToInt32(Session["uid"].ToString());
            obob.LogId = Convert.ToInt32(Session["logid"].ToString());
            obob.landinsert();
            Label1.Text = "Sucessfully Added";
        }
    }
}