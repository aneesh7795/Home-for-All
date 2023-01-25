using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data;
using System.Data.SqlClient;

namespace WebApplication7
{
    public class userdl
    {
        public SqlConnection con = new SqlConnection();
        public SqlCommand cmd = new SqlCommand();
        public userdl()
        {

        }
        public SqlConnection getcon()
        {
            if (con.State == ConnectionState.Closed)
            {
                con.ConnectionString = @"Data Source=LAPTOP-TCO33LRO\SQLEXPRESS01;Initial Catalog=reshmsbingen;Integrated Security=True";
                con.Open();
            }
            return con;
        }

        public int insert(userbl obubl )
        {
            string s = "insert into tentant values('" + obubl.Name + "','" + obubl.Phone + "','" + obubl.Email + "','" + obubl.WhatsCon + "','" + obubl.WSC + "','" + obubl.Cl + "','" + obubl.AppDate + "','" + obubl.Time + "','" + obubl.Ov + "','" + obubl.Cs + "',0,'" + obubl.LaId + "')";
            SqlCommand cmd = new SqlCommand(s, getcon());
            return cmd.ExecuteNonQuery();



        }
        public int update(userbl obubl)
        {
            string u = "update tentant set statuse=1 where userid='" + obubl.UserId + "'";
            SqlCommand cmd = new SqlCommand(u, getcon());
            return cmd.ExecuteNonQuery();
        }
    }
}