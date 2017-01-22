using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.OleDb;
using System.Data;
using System.Web.UI.DataVisualization.Charting;

public partial class Default8 : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        Chart1.Series["Series1"].ChartType = SeriesChartType.Column;
        Chart1.Series["Series1"]["DrawingStyle"] = "Emboss";

        Chart1.ChartAreas["ChartArea1"].Area3DStyle.Enable3D = true;
        Chart1.Series["Series1"].IsValueShownAsLabel = true;

        Chart2.Series["Series1"].ChartType = SeriesChartType.Column;
        Chart2.Series["Series1"]["DrawingStyle"] = "Emboss";

        Chart2.ChartAreas["ChartArea1"].Area3DStyle.Enable3D = true;
        Chart2.Series["Series1"].IsValueShownAsLabel = true;
    }
    protected void AccessDataSource1_Selecting(object sender, SqlDataSourceSelectingEventArgs e)
    {

    }
    protected void Button2_Click(object sender, EventArgs e)
    {
        GridView1.Visible = false;
        GridView2.Visible = true;
        Chart2.Visible = false;
        Chart1.Visible = true;
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        GridView1.Visible = true;
        GridView2.Visible = false;
        Chart2.Visible = true;
        Chart1.Visible = false;
    }
    protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
    {

    }
    protected void Chart1_Load(object sender, EventArgs e)
    {

    }
}