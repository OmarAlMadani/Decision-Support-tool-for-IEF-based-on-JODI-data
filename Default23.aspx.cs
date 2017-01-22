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

public partial class Default23 : System.Web.UI.Page
{
    public string sql;
    public string  mu;
    protected void Page_Load(object sender, EventArgs e)
    {
      
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        int m = Convert.ToInt32(DropDownList1.SelectedValue);
        int n = Convert.ToInt32(DropDownList2.SelectedValue);
        sql = "SELECT [country_name], [product_name], [superflow_demand], [superflow_statistical_difference], [Month], [year] FROM [top] WHERE (([Month] >= 1) AND ([Month] <= 3))";
         DataTable dt = new DataTable();
        OleDbConnection conn = new OleDbConnection();
        String connection = "Provider=Microsoft.ACE.OLEDB.12.0;Data Source=|DataDirectory|\\oildata.mdb;Persist Security Info=True";
        
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
        Chart1.Series["Series1"].ChartType = SeriesChartType.Column;
        Chart1.Series["Series1"]["DrawingStyle"] = "Emboss";
        Chart1.ChartAreas["ChartArea1"].Area3DStyle.Enable3D = true;
        Chart1.Series["Series1"].IsValueShownAsLabel = true;
        Chart1.DataSource = dt;
        Chart1.Series[0].XValueMember = "country_name";
        Chart1.Series[0].YValueMembers = "Month";
        Chart1.DataBind();
        
            Chart1.Series[0].ChartType = SeriesChartType.Column;
        
        Chart1.Series[0]["PieLabelStyle"] = "Disabled";

        Chart1.ChartAreas["ChartArea1"].Area3DStyle.Enable3D = true;
  
            }
}