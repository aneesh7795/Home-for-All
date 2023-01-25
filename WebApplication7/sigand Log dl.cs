using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data;
using System.Data.SqlClient;

namespace WebApplication7
{
    public class sigand_Log_dl
    {
     
        public SqlConnection con = new SqlConnection();
        public SqlCommand cmd = new SqlCommand();
           

        public sigand_Log_dl()
        {
            cmd.Connection = con;

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
        public int siginsert(sigand_log_bl objslbl)
        {
            string b = "insert into login values('" + objslbl.USERNAME + "','" + objslbl.PASSWORD + "','"+objslbl.Activity+"');select @@IDENTITY";
            SqlCommand cmd = new SqlCommand(b, getcon());
            object obj = cmd.ExecuteScalar();/*first initial eppozhumm insert scalara*/
          string s = "insert into signup values('" + objslbl.NAME + "','" + objslbl.PHONENUMBER + "','" + objslbl.EMAIL + "','" + objslbl.USERNAME + "','" + objslbl.PASSWORD + "','" + objslbl.Activity + "',"+obj+")";
            SqlCommand cmd1 = new SqlCommand(s, getcon());
            return cmd1.ExecuteNonQuery();
        }
        public DataTable login(sigand_log_bl oblbl)
        {
            string lg = "select * from login where username='" + oblbl.USERNAME + "' and password='" + oblbl.PASSWORD + "'";
            SqlCommand cmd = new SqlCommand(lg, getcon());
            SqlDataAdapter da = new SqlDataAdapter(cmd);
            DataTable dt = new DataTable();
            da.Fill(dt);
            return dt;
        }
        public DataTable view(sigand_log_bl oblbl)/*cretae landloardil user id kittan*/
        {
            string view = "select * from signup ";
            SqlCommand cmd = new SqlCommand(view, getcon());
            SqlDataAdapter da = new SqlDataAdapter(cmd);
            DataTable dt = new DataTable();
            da.Fill(dt);
            return dt;
        }
        
    }
}