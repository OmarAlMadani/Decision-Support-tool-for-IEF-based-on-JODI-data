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

public partial class Default17 : System.Web.UI.Page
{
    private string thepro;
    private string themon;
    private string chartype11;
    public string Property1
    {
        get
        {
            return Property1;
        }
    }
    protected void Page_Load(object sender, EventArgs e)
    {
    }
    protected void RadioButton4_CheckedChanged(object sender, EventArgs e)
    {

    }
    protected void RadioButton15_CheckedChanged(object sender, EventArgs e)
    {
        
    }
    protected void RadioButton21_CheckedChanged(object sender, EventArgs e)
    {

    }
    protected void RadioButton22_CheckedChanged(object sender, EventArgs e)
    {

    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        if (RadioButton1.Checked)
                thepro = "Curdle oil";
         if (RadioButton2.Checked )
                thepro = "NGI";
         if (RadioButton3.Checked)
                thepro = "LPG";
         if (RadioButton4.Checked)
                thepro = "Naphthe"; 
         if (RadioButton5.Checked)
                thepro = "Gas / Dresel oil";
         if (RadioButton6.Checked)
                thepro = "Fuel Oil";

        if (RadioButton7.Checked)
            themon = "1";
         if (RadioButton8.Checked)
            themon = "2";
         if (RadioButton9.Checked)
            themon = "3";
         if (RadioButton10.Checked)
            themon = "4";
         if (RadioButton11.Checked)
            themon = "5";
         if (RadioButton12.Checked)
            themon = "6";
         if (RadioButton13.Checked)
            themon = "7";
         if (RadioButton14.Checked)
            themon = "8";
         if (RadioButton15.Checked)
            themon = "9";
         if (RadioButton16.Checked)
            themon = "10";
         if (RadioButton17.Checked)
            themon = "11";
         if (RadioButton18.Checked)
            themon = "12";

        if (RadioButton19.Checked)
            chartype11 = RadioButton19.Text;
         if (RadioButton20.Checked)
             chartype11 = RadioButton20.Text;
         if (RadioButton21.Checked)
             chartype11 = RadioButton21.Text;
         if (RadioButton22.Checked)
             chartype11 = RadioButton22.Text;
        
        TextBox1.Text = chartype11;
        
        chouse.mon = Convert.ToInt32(this.themon);
        chouse.chartype = this.chartype11;
        chouse.pro = this.thepro;
        TextBox1.Text = chartype11;
        Session["field1"] = chartype11;
        
        Response.Redirect("~/Default18.aspx?Data=" + Server.UrlEncode(TextBox1.Text));
      //  Server.Transfer("~/Default18.aspx", false);
       // Response.Redirect("Default18.aspx?Parameter=" + TextBox1.Text);

        //Server.Transfer("Default18.aspx");
    }
    protected void RadioButton6_CheckedChanged(object sender, EventArgs e)
    {

    }
    protected void RadioButton20_CheckedChanged(object sender, EventArgs e)
    {
        
    }
    protected void Button2_Click(object sender, EventArgs e)
    {
     
    }
}