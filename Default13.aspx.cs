using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.OleDb;

public partial class Default13 : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void Button2_Click1(object sender, EventArgs e)
    {
        string  b, c;
        b = TextBox2.Text;
        c = TextBox3.Text;

        String connection = "Provider=Microsoft.ACE.OLEDB.12.0;Data Source=|DataDirectory|\\oildata.mdb;Persist Security Info=True";

        using (OleDbConnection conn = new OleDbConnection(connection))
        {

            string commandString = "INSERT INTO product_dim (product_name, product_shortname) values ('" + b + "','" + c + "')";

            conn.Open();
            OleDbCommand commandStatement = new OleDbCommand(commandString, conn);

            commandStatement.ExecuteNonQuery();
            conn.Close();
            Response.Write("<script>alert('record Have been added successfully')</script>");
      
        }
    }
    protected void Button5_Click(object sender, EventArgs e)
    {

    }
}