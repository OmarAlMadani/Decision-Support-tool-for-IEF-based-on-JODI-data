using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.OleDb;

public partial class Default2 : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void Button1_Click(object sender, EventArgs e)
    {

    }
    protected void Button2_Click(object sender, EventArgs e)
    {
        string conString = "Provider=Microsoft.ACE.OLEDB.12.0;Data Source=|DataDirectory|\\oildata.mdb;Persist Security Info=True";

        string queryString = "SELECT * FROM The_users";   
        
        using (OleDbConnection connection = new OleDbConnection(conString))
    {
        OleDbCommand command = new OleDbCommand(queryString,connection);
        connection.Open();
        OleDbDataReader reader = command.ExecuteReader();

            reader.Read();      
            if (reader.GetString(0) == TextBox1.Text && reader.GetString(1) == TextBox2.Text)
                Response.Write("<script type='text/javascript'>window.open('Default3.aspx','_top');</script>");
            else
            Response.Write("<script>alert('Exception:')</script>");
        reader.Close();
    }
}
    
}