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

public partial class Default16 : System.Web.UI.Page
{
    private string tabl1;
    private TextBox tex = new TextBox();
    protected void Page_Load(object sender, EventArgs e)
    {
    }
    protected void Button1_Click(object sender, EventArgs e)
    {

        if (RadioButton1.Checked)
            tabl1 = "product_dim";
        else if (RadioButton2.Checked)
                tabl1 = "date_dim";
        else if (RadioButton3.Checked)
                tabl1 = "unit_dim";
        else if (RadioButton4.Checked)
                tabl1 = "jodi_fact";
        tex.Text=this.tabl1.ToString();
        chouse.tabl = tex.Text;
        Server.Transfer("~/_Default17.aspx", false);
    }
    protected void Button2_Click(object sender, EventArgs e)
    {
      
    }
}