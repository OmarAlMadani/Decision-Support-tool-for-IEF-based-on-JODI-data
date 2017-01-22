using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.OleDb;
using System.Data;
using System.Data.Sql;

public partial class Default4 : System.Web.UI.Page
{
OleDbConnection Con;
OleDbCommand Cmd;
OleDbDataAdapter da;
OleDbDataReader dr;
DataSet ds;
int recordcount = 0;
int i=0;
    protected void Page_Load(object sender, EventArgs e)
    {
        Con = new OleDbConnection( "Provider=Microsoft.ACE.OLEDB.12.0;Data Source=|DataDirectory|\\oildata.mdb;Persist Security Info=True");

        Cmd = new OleDbCommand("SELECT * FROM country_dim", Con);

        da = new OleDbDataAdapter(Cmd);
        ds = new DataSet("country_dim");
        Con.Open();
        this.da.Fill(ds, "country_dim");
        
        dr = Cmd.ExecuteReader();
        recordcount = ds.Tables[0].Rows.Count;
        if (recordcount > 0)
        {

            TextBox1.Text = ds.Tables[0].Rows[i]["country_id"].ToString();
            TextBox4.Text = ds.Tables[0].Rows[i]["country_name"].ToString();
            TextBox2.Text = ds.Tables[0].Rows[i]["organization_sourc_num"].ToString();
            TextBox3.Text = ds.Tables[0].Rows[i]["organization_dsc"].ToString(); 

        }
        else
        {
            Response.Write("There are no records in this category");
        }
        dr.Read();

    }
    protected void Button4_Click(object sender, EventArgs e)
    {
        string dbconnection1 = "Provider=Microsoft.ACE.OLEDB.12.0;Data Source=|DataDirectory|\\oildata.mdb;Persist Security Info=True";
        string command1 = "delete from country_dim where country_id = " + TextBox1.Text;
        OleDbConnection connection = new OleDbConnection(dbconnection1);
    
    	connection.Open();
    	OleDbCommand command = new OleDbCommand(command1, connection);
    	command.ExecuteNonQuery();
    
    	connection.Close();
  
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        
    }
    protected void Button2_Click(object sender, EventArgs e)
    {
       
    }
    protected void Button3_Click(object sender, EventArgs e)
    {
        string str1 = TextBox2.Text;
        string str2 = TextBox3.Text;
        string str3 = TextBox4.Text;
        String connection = "Provider=Microsoft.ACE.OLEDB.12.0;Data Source=|DataDirectory|\\oildata.mdb;Persist Security Info=True";

        string str = "UPDATE country_dim SET organization_sourc_num = ? , organization_dsc = ? ,country_name=?";
        using (OleDbConnection con = new OleDbConnection(connection))
        {
            using (OleDbCommand cmd = new OleDbCommand(str, con))
            {
                con.Open();
                cmd.CommandType = CommandType.Text;
                cmd.Parameters.AddWithValue("organization_sourc_num", str1);
                cmd.Parameters.AddWithValue("organization_dsc", str2);
                cmd.Parameters.AddWithValue("country_name", str3);         
                cmd.ExecuteNonQuery();
            }
        }
    }

    protected void Button5_Click(object sender, EventArgs e)
    {

    }
    protected void TextBox1_TextChanged(object sender, EventArgs e)
    {

    }
    protected void Button7_Click(object sender, EventArgs e)
    {
        if (i < recordcount)
        {
            i++;
            TextBox1.Text = ds.Tables[0].Rows[i]["country_id"].ToString();
            TextBox4.Text = ds.Tables[0].Rows[i]["country_name"].ToString();
            TextBox2.Text = ds.Tables[0].Rows[i]["organization_sourc_num"].ToString();
            TextBox3.Text = ds.Tables[0].Rows[i]["organization_dsc"].ToString();
        }

        else
        {
            Response.Write("You have reached the end of records in this category!!");
        }
    }
    protected void Button6_Click(object sender, EventArgs e)
    {
        if (i>0)
        {
            i--;
            TextBox1.Text = ds.Tables[0].Rows[i]["country_id"].ToString();
            TextBox4.Text = ds.Tables[0].Rows[i]["country_name"].ToString();
            TextBox2.Text = ds.Tables[0].Rows[i]["organization_sourc_num"].ToString();
            TextBox3.Text = ds.Tables[0].Rows[i]["organization_dsc"].ToString();
        }

        else
        {
            Response.Write("You have reached the end of records in this category!!");
        }
    }
}