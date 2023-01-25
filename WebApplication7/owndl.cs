using System.Data;
using System.Data.SqlClient;

namespace WebApplication7
{
    public class owndl
    {
        public SqlConnection con = new SqlConnection();
        public SqlCommand cmd = new SqlCommand();

        public owndl()
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

        public int landinsert(ownbl obob)
        {
            string s="insert into landlord values('"+ obob.StreetAddress+"','"+ obob.StreetNUmber+"','"+ obob.Room+"','"+ obob.RentAmount+"','"+ obob.Duration+"','"+ obob.Image+"','"+ obob.SquareFeet+"' ,'"+obob.Sid+"',0,'"+obob.LogId+"')";
            SqlCommand cmd = new SqlCommand(s, getcon());
            return cmd.ExecuteNonQuery();
        }
        public int update(ownbl obob)
        {
            string s = "update landlord set status=1 where laid='" + obob.LandLid + "'";
            SqlCommand cmd = new SqlCommand(s, getcon());
            return cmd.ExecuteNonQuery();
        }
          public DataTable view(ownbl obob)
        {
            string s = "select * from landlord ";
            SqlCommand cmd = new SqlCommand(s, getcon());
            SqlDataAdapter da = new SqlDataAdapter(cmd);
            DataTable dt3 = new DataTable();
            da.Fill(dt3);
            return dt3;
        }
        public DataTable viewuser(ownbl obl)
        {
            string v = "select ow.*,te.* from  landlord ow inner join tentant te on ow.laid=te.Laid where  te.statuse='1' ";
            SqlCommand cmd = new SqlCommand(v, getcon());
            SqlDataAdapter da = new SqlDataAdapter(cmd);
            DataTable dt4 = new DataTable();
            da.Fill(dt4);
            return dt4;


        }
    }
    
}