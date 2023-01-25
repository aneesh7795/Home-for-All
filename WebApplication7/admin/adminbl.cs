using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data;
using System.Data.SqlClient;


namespace WebApplication7.admin
{
    public class adminbl
    {
        admin_dl obd = new admin_dl();
        private int _uid;
       
        public adminbl()
        {

        }
        public int Uid
        {
            get
            {
                return _uid;
            }
            set
            {
                _uid = value;
            }
        }
       
        public DataTable view()
        {
            return obd.view(this);
        }
      public DataTable viewtentant()
        {
            return obd.viewtentant(this);
        }
        public DataTable countview()
        {
            return obd.countview(this);
        }
        public DataTable tcount()
        {
            return obd.tcount(this);
        }
        public DataTable Lcount()
        
{
                return obd.Lcount(this);
            }
        
    }
       
}