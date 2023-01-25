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
    public partial class Site1 : System.Web.UI.MasterPage
    {
        adminbl obl = new adminbl();
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                DataTable dt2 = obl.countview();
                Label4.Text = dt2.Compute("Count(Id)", "").ToString();

                DataTable dtc = obl.tcount();

                Label5.Text = dtc.Compute("Count(activity)", "").ToString();

                DataTable dlc = obl.Lcount();
                Label6.Text = dlc.Compute("Count(activity)", "").ToString();



            }
        }
    }
}