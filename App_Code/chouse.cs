using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

/// <summary>
/// Summary description for chouse
/// </summary>
/// 
    public partial class chouse
    {
        public static string fnam;
        public static string sname;
        public static string thname;
        public static string cuntryname;
        public static string tabl="product_dim";
        public static string pro="Curdle oil";
        public static int mon=1;
        public static string chartype="Point";
        public static int numberof;
        public chouse()
        {
        }
        public void setcuntryname(string n)
        {
            cuntryname = n;
        }
        public string getcuntryname()
        {
            return cuntryname;
        }
    }
   



