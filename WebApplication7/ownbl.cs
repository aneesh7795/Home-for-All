using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data;
using System.Data.SqlClient;

namespace WebApplication7
{
    public class ownbl
    {
        owndl obod = new owndl();
        private int _landid;
        private string _streeataddress;
        private int _streetnumber;
        private string _room;
        private string _rentamo;
        private int _duration;
       private string _image;
        private string _squarefeet;
        private int _status;
        private int _sid;/*signup id*/
        private int _logid;
      

        public ownbl()
        {

        }

        public int LandLid
        {
            get
            {
                return _landid;
            }
            set
            {
                _landid=value;
            }
        }
        public string StreetAddress
        {
            get
            {
                return _streeataddress;
            }
            set { 
         _streeataddress = value;
            }
        }
        public int StreetNUmber
        {
            get
            {
                return _streetnumber;
            }
            set
            {
                _streetnumber = value;
            }
        }
        
        public string Room
        {
            get
            {
                return _room;
            }
            set
            {
              _room = value;

            }
        }
        public string Image
        {
            get
            {
                return _image;
            }
            set
            {
                _image = value;
            }
        }
        public int Duration
        {
            get
            {
                return _duration;
            }
            set
            {
            _duration = value;
            }
        }
        public string RentAmount
        {
            get
            {
                return _rentamo;
            }
            set
            {
           _rentamo = value;
            }
        }
        public String SquareFeet
        {
            get
            {
                return _squarefeet;
            }
            set
            {
               _squarefeet = value;
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
        public int Sid
        {
            get
            {
                return _sid;
            }
            set
            {
                _sid = value;
            }
        }
        public int LogId
        {
            get
            {
                return _logid;
            }
            set
            {
                _logid = value;
            }
        }
        public int landinsert()
        {
            return obod.landinsert(this);
        }
        public int update()
        {
            return obod.update(this);
        }
        public DataTable view()
        {
            return obod.view(this);
        }
        public DataTable viewuser()
            {
            return obod.viewuser(this);
        }
    }
   
}