using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.UI.DataVisualization.Charting;
using System.Data.OleDb;
using System.Data;
using System.Configuration;

public partial class _Default : System.Web.UI.Page    
{
    protected void Page_Load(object sender, EventArgs e)
    {
    }
    protected void Chart1_Load(object sender, EventArgs e)
    {

    }
    protected void Button1_Click(object sender, EventArgs e)
    {
       
        
    }
    protected void Button2_Click(object sender, EventArgs e)
    {
        
    }
    protected void Button3_Click(object sender, EventArgs e)
    {
        
    }
    protected void Button4_Click(object sender, EventArgs e)
    {
    }
    protected void Button5_Click(object sender, EventArgs e)
    {
        
    }
    protected void Button6_Click(object sender, EventArgs e)
    {
       
    }
    protected void Button7_Click(object sender, EventArgs e)
    {
  
    }
    protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
    {

    }
    protected void DropDownList1_SelectedIndexChanged(object sender, EventArgs e)
    {
    }
    protected void Button8_Click(object sender, EventArgs e)
    {

    }
    protected void Button11_Click(object sender, EventArgs e)
    {
       
    }
    protected void Button9_Click(object sender, EventArgs e)
    {

    }
    protected void PageIndexChanging(object sender, GridViewPageEventArgs e)
    {
       

    }
protected void  Button12_Click(object sender, EventArgs e)
{

    chouse.cuntryname = DropDownList1.SelectedValue;
    Server.Transfer("~/Default17.aspx", false);
}
protected void Button13_Click(object sender, EventArgs e)
{
    
}
}
