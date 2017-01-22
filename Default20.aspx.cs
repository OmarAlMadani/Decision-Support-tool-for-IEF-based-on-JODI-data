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

public partial class Default20 : System.Web.UI.Page
{
    
    protected void Page_Load(object sender, EventArgs e)
    {

        chouse.fnam = (string)(Session["First"]);
        chouse.sname = (string)(Session["Sacand"]);
        chouse.thname = (string)(Session["Therd"]);
        string n = "Line";
        n = (string)(Session["field1"]);
        if (PreviousPage != null)
        {
            TextBox SourceTextBox =
                (TextBox)PreviousPage.FindControl("TextBox1");
            if (SourceTextBox != null)
            {
                n = SourceTextBox.Text;
            }
        }
        DataTable dt = new DataTable();
        OleDbConnection conn = new OleDbConnection();
        String connection = "Provider=Microsoft.ACE.OLEDB.12.0;Data Source=|DataDirectory|\\oildata.mdb;Persist Security Info=True";
        string sql = "SELECT country_name,product_name,superflow_demand,Month  FROM [top] Where country_name='" + chouse.fnam + "' OR country_name='" + chouse.sname + "' OR country_name='" + chouse.thname + "' ";
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
        Chart1.Series[0].XValueMember = "";
        Chart1.Series[0].YValueMembers = "superflow_demand";
        Chart1.DataBind();
        if (n == "Point")
            Chart1.Series[0].ChartType = SeriesChartType.Point;
        else if (n == "Line")
            Chart1.Series[0].ChartType = SeriesChartType.Line;
        else if (n == "Column")
            Chart1.Series[0].ChartType = SeriesChartType.Column;
        else if (n == "Area")
            Chart1.Series[0].ChartType = SeriesChartType.Area;

        Chart1.Series[0]["PieLabelStyle"] = "Disabled";

        Chart1.ChartAreas["ChartArea1"].Area3DStyle.Enable3D = true;
        int i = 0;
        foreach (DataRow dtRow in dt.Rows)
        {
            Chart1.Series[0].Points[i].Color = System.Drawing.Color.FromArgb(i * 7, i * 10,  250);
            i++;
        }

    }
    protected void Chart1_Load(object sender, EventArgs e)
    {

    }
}