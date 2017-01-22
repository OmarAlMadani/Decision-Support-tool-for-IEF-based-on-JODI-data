using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;
using System.Data.OleDb;

public partial class Default8 : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            Repeater1.DataSource = GetData();
            Repeater1.DataBind();
        }

    }
    public DataSet GetData()
    {
        DataSet ds = new DataSet();
        DataTable dt = new DataTable("News");
        DataRow dr;
        string[] a = { "Curdle oil", "Gas / Dresel oil", "Naphthe", "NGI", "Fuel Oil", "LPG", "brint oil", "Gas free", "NFL fuel" };
        string[] b = { "2142", "6524", "1421", "5487", "1421", "1421", "132", "6414", "1421" };
        string np = "   Product  : (   \t\t   ";
        string sp = "   ) -> price  :    \t\t   ";

        dt.Columns.Add(new DataColumn("Id", typeof(Int32)));
        dt.Columns.Add(new DataColumn("Url", typeof(string)));

        dt.Columns.Add(new DataColumn("Desc", typeof(string)));
        for (int i = 0; i < 9; i++)
        {
            dr = dt.NewRow();
            dr[0] = i;
            dr[1] = "URL" + i.ToString();

            dr[2] =np.ToString()+ a[i].ToString()+sp.ToString() + b[i].ToString();
            dt.Rows.Add(dr);
        }
        ds.Tables.Add(dt);
        Session["dt"] = dt;
        return ds;
    }
}