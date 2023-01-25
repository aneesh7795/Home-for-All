using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data;
using System.Data.SqlClient;

namespace WebApplication7
{
    public class userbl
    {
        userdl obudl = new userdl();


        private int _userid;
        private string _name;
        private string _phonenumber;
        private string _email;
        private string _gender;
        private string _wsc;
        private string _whatscon;
        private string _clocation;
        private string _appdate;
        private string _onv;
        private string _cs;
        private string _time;
        private int _status;
        private int _laid;


        public userbl()
        {

        }

        public int UserId
        {
            get
            {
                return _userid;
            }
            set
            {
                _userid = value;

            }
        }
        public string Name
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
        public string Phone
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
        public string Email
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
        public string gender
        {
            get
            {
                return _gender;
            }
            set
            {
                _gender = value;
            }
        }
        public string WSC
        {
            get
            {
                return _wsc;
            }
            set
            {
                _wsc = value;
            }
        }
        public string WhatsCon
        {
            get
            {
                return _whatscon;
            }
            set
            {
                _whatscon = value;

            }
        }
        public string Cl
        {
            get
            {
                return _clocation;
            }
            set
            {
                _clocation = value;

            }
        }
        public string AppDate
        {
            get
            {
                return _appdate;
            }
            set
            {
                _appdate = value;
            }
        }
        public string Ov
        {
            get
            {
                return _onv;
            }
            set
            {
                _onv = value;
            }
        }
        public string Cs
        {
            get
            {
                return _cs;
            }
            set
            {
                _cs = value;
            }
        }
        public string Time
        {
            get
            {
                return _time;
            }
            set
            {
                _time = value;
            }
        }
        public int Status
        {
            get
            {
                return _status;
            }
            set
            {
                _status = value;
            }
        }

        public int LaId
        {
            get
            {
                return _laid;
            }
            set
            {
                _laid = value;
            }
        }



        public int insert()
        {
            return obudl.insert(this);
        }

        public int update()
        {
            return obudl.update(this);//admin user update
        }
    
}
}
