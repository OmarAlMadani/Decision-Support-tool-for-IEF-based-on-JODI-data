using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.OleDb;
using System.Collections;
using System.Web.UI.DataVisualization.Charting;

public partial class Default22 : System.Web.UI.Page
{
     protected void Page_Load(object sender, EventArgs e)
    {
        Chart1.Series["Series1"].ChartType = SeriesChartType.Column;
        Chart1.Series["Series1"]["DrawingStyle"] = "Emboss";

        Chart1.ChartAreas["ChartArea1"].Area3DStyle.Enable3D = true;
        Chart1.Series["Series1"].IsValueShownAsLabel = true;
    /*
        DataTable dt = new DataTable();
        OleDbConnection conn = new OleDbConnection();
        String connection = "Provider=Microsoft.ACE.OLEDB.12.0;Data Source=|DataDirectory|\\oildata.mdb;Persist Security Info=True";
        string sql = "SELECT * FROM [top] ";
        conn.ConnectionString = connection;
        conn.Open();
        DataSet ds = new DataSet();
        OleDbDataAdapter adapter = new OleDbDataAdapter(sql, conn);
        adapter.Fill(ds);
        adapter.Fill(dt);
        //conn.Close();                               
        ArrayList myArrayList = new ArrayList();
        foreach (DataRow dtRow in dt.Rows)
        {
            myArrayList.Add(dtRow);
        }

        Chart1.DataSource = dt;
        Chart1.Titles.Add(chouse.cuntryname);
        Chart1.Series[0].XValueMember = "continent";
        Chart1.Series[0].YValueMembers = "superflow_demand";
        Chart1.DataBind();
     
            Chart1.Series[0].ChartType = SeriesChartType.Column;
        
        Chart1.Series[0]["PieLabelStyle"] = "Disabled";

        Chart1.ChartAreas["ChartArea1"].Area3DStyle.Enable3D = true;
        int i = 0;
        foreach (DataRow dtRow in dt.Rows)
        {
           // Chart1.Series[0].Points[i].Color = System.Drawing.Color.FromArgb((i+1) * 2, (i+1)* 3, 250);
            i++;
        }*/
    }
}