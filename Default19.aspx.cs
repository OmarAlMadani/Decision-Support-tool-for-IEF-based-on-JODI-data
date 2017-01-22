using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.OleDb;
using System.Data;

public partial class Default19 : System.Web.UI.Page
{
    OleDbConnection conn;
    String connection;
    protected void Page_Load(object sender, EventArgs e)
    {
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        conn = new OleDbConnection();
        connection = "Provider=Microsoft.ACE.OLEDB.12.0;Data Source=|DataDirectory|\\oildata.mdb;Persist Security Info=True";
        string sql2 = "UPDATE table1 SET valueof = ? ";
        using (OleDbConnection con = new OleDbConnection(connection))
        {
            using (OleDbCommand cmd = new OleDbCommand(sql2, con))
            {
                cmd.CommandType = CommandType.Text;
                cmd.Parameters.AddWithValue("valueof",DropDownList1.SelectedValue);
                con.Open();
                cmd.ExecuteNonQuery();
            }
        }
        Response.Redirect("~/Default9.aspx");
    }
    protected void Button3_Click(object sender, EventArgs e)
    {    
       // Response.Redirect("~/Default23.aspx?Data=" );
    }
    protected void Button4_Click(object sender, EventArgs e)
    {

    }
}