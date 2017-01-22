using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Default21 : System.Web.UI.Page
{
    private string thepro;
    private int themon;
    private string chartype11;
    protected void Page_Load(object sender, EventArgs e)
    {

        themon=chouse.mon ;
        chartype11=chouse.chartype ;
        thepro=chouse.pro;
    }
    
    protected void Button1_Click(object sender, EventArgs e)
    {
        if (RadioButton1.Checked)
            thepro = "Curdle oil";
        if (RadioButton2.Checked)
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
            themon = 1;
        if (RadioButton8.Checked)
            themon =2;
        if (RadioButton9.Checked)
            themon = 3;
        if (RadioButton10.Checked)
            themon = 4;
        if (RadioButton11.Checked)
            themon = 5;
        if (RadioButton12.Checked)
            themon = 6;
        if (RadioButton13.Checked)
            themon = 7;
        if (RadioButton14.Checked)
            themon = 8;
        if (RadioButton15.Checked)
            themon = 9;
        if (RadioButton16.Checked)
            themon = 10;
        if (RadioButton17.Checked)
            themon = 11;
        if (RadioButton18.Checked)
            themon = 12;

        if (RadioButton19.Checked)
            chartype11 = RadioButton19.Text;
        if (RadioButton20.Checked)
            chartype11 = RadioButton20.Text;
        if (RadioButton21.Checked)
            chartype11 = RadioButton21.Text;
        if (RadioButton22.Checked)
            chartype11 = RadioButton22.Text;

        chouse.mon = this.themon;
        chouse.chartype = this.chartype11;
        chouse.pro = this.thepro;
        Session["field2"] = themon;
        Session["field3"] = thepro;
        Session["field1"] = chartype11;
        TextBox1.Text = chartype11;
        Server.Transfer("~/Default20.aspx", false);
    }
    
    
}