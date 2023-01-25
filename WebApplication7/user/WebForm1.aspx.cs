using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Globalization;//country list aayi 

namespace WebApplication7.user
{
    public partial class WebForm1 : System.Web.UI.Page
    {
        userbl obubl = new userbl();

        ownbl obbbl = new ownbl();
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {


                whatnutxt.Enabled = false;

                dd2.DataSource = countrylist();
                dd2.DataBind();

                DataTable dt3 = obbbl.view();
                if (dt3.Rows.Count > 0)
                {
                    Session["lid"] = dt3.Rows[0]["laid"].ToString();

                }

            }

            }



            public static List<string> countrylist()

            {//creating list
                List<string> culturelist = new List<string>();//list object 

                //getting spefic culture info from cCultureInfo
                CultureInfo[] getCultureInfo = CultureInfo.GetCultures(CultureTypes.SpecificCultures);

                foreach (CultureInfo getCulture in getCultureInfo)
                { //creating region info classnte object
                    RegionInfo getregioninfo = new RegionInfo(getCulture.LCID);//lcid is gobal namespace property,ulture identifier for the current CultureInfo .
                                                                               // adding each country name into arraylist


                    if (!(culturelist.Contains(getregioninfo.EnglishName)))
                    {
                        culturelist.Add(getregioninfo.EnglishName);
                    }
                }
                //sorting 
                culturelist.Sort();
                return culturelist;

            }
            protected void dd2_SelectedIndexChanged(object sender, EventArgs e)
            {
                if (rb2.SelectedValue == "Yes")
                {

                    whatnutxt.Enabled = true;

                }
                else
                {
                    whatnutxt.Enabled = false;
                }
            }

            protected void Button1_Click(object sender, EventArgs e)
            {
                obubl.Name = nametxt.Text;
                obubl.Email = emailtxt.Text;
                obubl.Phone = dd1.Text.ToString() + phtxt.Text.ToString();
                obubl.gender = rb1.SelectedValue;
                obubl.WhatsCon = rb2.SelectedValue;
                obubl.WSC = whatnutxt.Text.ToString();
                obubl.Cl = dd2.Text.ToString();
                obubl.AppDate = Calendar1.SelectedDate.ToShortDateString();
                obubl.Time = RadioButtonList1.Text;
                obubl.Ov = rb3.SelectedValue;
                obubl.Cs = rb4.SelectedValue;
                obubl.LaId = Convert.ToInt32(Session["lid"].ToString());
                obubl.insert();
                Response.Redirect("confirm.aspx");
            }

        protected void emailtxt_TextChanged(object sender, EventArgs e)
        {

        }

        protected void rb1_SelectedIndexChanged(object sender, EventArgs e)
        {

        }

        protected void RadioButtonList1_SelectedIndexChanged(object sender, EventArgs e)
        {
            if (rb2.SelectedValue == "Yes")
            {

                whatnutxt.Enabled = true;

            }
            else
            {
                whatnutxt.Enabled = false;
            }
        }

        protected void Calendar1_SelectionChanged(object sender, EventArgs e)
        {

        }

        protected void RadioButtonList1_SelectedIndexChanged1(object sender, EventArgs e)
        {

        }

        protected void rb3_SelectedIndexChanged(object sender, EventArgs e)
        {

        }

        protected void rb4_SelectedIndexChanged(object sender, EventArgs e)
        {

        }
    } }
           
        
   