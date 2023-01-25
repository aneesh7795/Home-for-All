using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data;
using System.Data.SqlClient;

namespace WebApplication7.admin
{
    public class admin_dl
    {
        public SqlConnection con = new SqlConnection();
        public SqlCommand cmd = new SqlCommand();


        public admin_dl()
        {

        }


        public SqlConnection getcon()
        {
            if(con.State==ConnectionState.Closed)
            {
                con.ConnectionString = @"Data Source=LAPTOP-TCO33LRO\SQLEXPRESS01;Initial Catalog=reshmsbingen;Integrated Security=True";
                con.Open();
            }
            return con;
        }
        public DataTable view(adminbl obbl)
        {

           
            string s = "select s.*,l.* from signup s inner join landlord l on s.Id=l.uid  where status=0";
            SqlCommand cmd = new SqlCommand(s, getcon());
            SqlDataAdapter da = new SqlDataAdapter(cmd);
            DataTable dt1 = new DataTable();
            da.Fill(dt1);
            return dt1;
              

        }
        public DataTable viewtentant(adminbl  obbl)
        
        {
            string s = "select * from tentant where statuse=0";
            SqlCommand cmd = new SqlCommand(s, getcon());
            SqlDataAdapter da = new SqlDataAdapter(cmd);
            DataTable dt1 = new DataTable();
            da.Fill(dt1);
            return dt1;

        }
        public DataTable countview(adminbl obbl)///count of user kittan
        {
            string c = "select * from Signup ";
            SqlCommand cmd1 = new SqlCommand(c, getcon());
            SqlDataAdapter da = new SqlDataAdapter(cmd1);
            DataTable dt2 = new DataTable();
            da.Fill(dt2);

            return dt2;

        }

        public DataTable tcount(adminbl obbl)
        {
            string tc = "select * from signup where activity='Tenant'";
            SqlCommand cmd = new SqlCommand(tc, getcon());
            SqlDataAdapter da = new SqlDataAdapter(cmd);
            DataTable dtc = new DataTable();
            da.Fill(dtc);
            return dtc;
        }
        public DataTable Lcount(adminbl obbl)
        {
            string tc = "select * from signup where activity='Owner'";
            SqlCommand cmd = new SqlCommand(tc, getcon());
            SqlDataAdapter da = new SqlDataAdapter(cmd);
            DataTable dlc = new DataTable();
            da.Fill(dlc);
            return dlc;
        }

        }
}