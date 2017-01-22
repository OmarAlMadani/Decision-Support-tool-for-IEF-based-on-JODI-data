using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.UI.DataVisualization.Charting;
using System.Data.OleDb;
using System.Data;
using System.Collections;
using System.Drawing;

public partial class Default18 : System.Web.UI.Page
{
    private string cuntryname;
    private string tabl;
    private string pro;
    private int mon=1;
    private string chartype;

    protected void Page_Load(object sender, EventArgs e)
    {
        cuntryname = chouse.cuntryname;
        tabl = chouse.tabl;
        pro = chouse.pro;
        mon = chouse.mon;
        
        chartype = chouse.chartype;
        DataTable dt = new DataTable();
        string n = Server.UrlDecode(Request.QueryString["Data"]);          //chouse.chartype; //(string)(Session["field1"]);
        if (PreviousPage != null)
        {
            TextBox SourceTextBox =
                (TextBox)PreviousPage.FindControl("TextBox1");
            if (SourceTextBox != null)
            {
                n = SourceTextBox.Text;
            }
        }   
        OleDbConnection conn = new OleDbConnection();
        String connection = "Provider=Microsoft.ACE.OLEDB.12.0;Data Source=|DataDirectory|\\oildata.mdb;Persist Security Info=True";
        string sql = "SELECT country_name , product_name , superflow_demand,Month  FROM [top] Where country_name='" + cuntryname + "' AND product_name='" + pro + "' ";
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
        Chart1.Titles.Add(chouse.cuntryname);
        Chart1.Series[0].XValueMember = "";
        Chart1.Series[0].YValueMembers ="superflow_demand";

        
        

        Chart1.DataBind();
        if(n=="Point")
        Chart1.Series[0].ChartType = SeriesChartType.Point;
        else if (n=="Line")
        Chart1.Series[0].ChartType = SeriesChartType.Line;
        else if (n == "Column")
        Chart1.Series[0].ChartType = SeriesChartType.Column;
        else if (n =="Area")
        Chart1.Series[0].ChartType = SeriesChartType.Area;

        Chart1.Series[0]["PieLabelStyle"] = "Disabled";

       Chart1.ChartAreas["ChartArea1"].Area3DStyle.Enable3D = true;
       int i = 0;
       foreach (DataRow dtRow in dt.Rows)
       {
           Chart1.Series[0].Points[i].Color = System.Drawing.Color.FromArgb(i * 50, i * 20, 255 / (i + 1));
           i++;
       }
        
    }
}