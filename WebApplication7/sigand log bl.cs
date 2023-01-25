using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data;
using System.Data.SqlClient;

namespace WebApplication7
{
    
    public class sigand_log_bl
    {
        sigand_Log_dl obsldl = new sigand_Log_dl();
        private int _id;
        private string _name;
        private string _email;
        private string _password;
        private string _phonenumber;
        private string _username;
        private string _activity;
        private int _loginid;

        public sigand_log_bl()
        {
        }

    public int ID
        {
            get
            {
                return _id;
            }
            set
            {
                _id = value;
            }
        }
        public string NAME
        {
            get
            {
                return _name;
            }
            set
            {
                _name = value;

            }
        }
        public string EMAIL
        {
            get
            {
                return _email;
            }
            set
            {
                _email = value;
            }
        }
        public string USERNAME
        {
            get
            {
                return _username;
            }
            set
            {
                _username = value;

            }
        }
        public string PASSWORD
        {
            get
            {
                return _password;
            }
            set
            {
                _password = value;
            }
        }
        public string PHONENUMBER
        {
            get
            {
                return _phonenumber;
            }
            set
            {
                _phonenumber = value;
            }
        }
        public string Activity
        {
            get
            {
                return _activity;
            }
            set
            {
                _activity = value;
            }
        }
        public int Logid
        {
            get
            {
                return _loginid;
            }
            set
            {
                _loginid = value;
            }

            } 

        public int siginsert()
        {
            return obsldl.siginsert(this); 
        }
        public DataTable login()
        {
            return obsldl.login(this);
        }
        public DataTable view()
        {
            return obsldl.view(this);/*cretae landloardil user id kittan*/
        }
        
        
    }
}