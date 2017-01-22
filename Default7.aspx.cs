using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.OleDb;
using System.Data;


public partial class Default7 : System.Web.UI.Page
{
    OleDbConnection Con;
    OleDbCommand Cmd;
    OleDbDataAdapter da;
    OleDbDataReader dr;
    DataSet ds;
    int recordcount = 0;
    int i;
    protected void Page_Load(object sender, EventArgs e)
    {
        Con = new OleDbConnection("Provider=Microsoft.ACE.OLEDB.12.0;Data Source=|DataDirectory|\\oildata.mdb;Persist Security Info=True");

        Cmd = new OleDbCommand("SELECT * FROM product_dim", Con);

        da = new OleDbDataAdapter(Cmd);
        ds = new DataSet("product_dim");
        Con.Open();
        this.da.Fill(ds, "product_dim");

        dr = Cmd.ExecuteReader();
        recordcount = ds.Tables[0].Rows.Count;
        if (recordcount > 0)
        {

            TextBox1.Text = ds.Tables[0].Rows[i]["product_id"].ToString();
            TextBox2.Text = ds.Tables[0].Rows[i]["product_name"].ToString();
            TextBox3.Text = ds.Tables[0].Rows[i]["product_shortname"].ToString();

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
        string command1 = "delete from product_dim where product_id = " + TextBox1.Text;
        OleDbConnection connection = new OleDbConnection(dbconnection1);

        connection.Open();
        OleDbCommand command = new OleDbCommand(command1, connection);
        command.ExecuteNonQuery();

        connection.Close();
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        TextBox1.Text = "";
        TextBox2.Text = "";
        TextBox3.Text = "";
    }
    protected void Button2_Click(object sender, EventArgs e)
    {
        string a, b, c;
        a = TextBox1.Text;
        b = TextBox2.Text;
        c = TextBox3.Text;

        String connection = "Provider=Microsoft.ACE.OLEDB.12.0;Data Source=|DataDirectory|\\oildata.mdb;Persist Security Info=True";

        using (OleDbConnection conn = new OleDbConnection(connection))
        {
            conn.Open();
            DataSet ds = new DataSet();
            OleDbConnection dbConnection = new OleDbConnection(connection);

            string commandString =
            "INSERT INTO product_dim (product_id , product_name, unit_shortname)" + " VALUES (?, ?, ?)";

            OleDbCommand commandStatement = new OleDbCommand(commandString, dbConnection);

            commandStatement.Parameters.Add("@product_id", OleDbType.VarWChar, 30).Value = a;
            commandStatement.Parameters.Add("@product_name", OleDbType.Integer, 50).Value = b;
            commandStatement.Parameters.Add("@product_shortname", OleDbType.VarWChar, 40).Value = c;


            dbConnection.Open();
            commandStatement.ExecuteNonQuery();


        }
    }
    protected void Button3_Click(object sender, EventArgs e)
    {
        string str1 = TextBox2.Text;
        string str2 = TextBox3.Text;

        String connection = "Provider=Microsoft.ACE.OLEDB.12.0;Data Source=|DataDirectory|\\oildata.mdb;Persist Security Info=True";

        string str = "UPDATE product_dim SET product_name = ? , product_shortname = ? ";
        using (OleDbConnection con = new OleDbConnection(connection))
        {
            using (OleDbCommand cmd = new OleDbCommand(str, con))
            {

                cmd.CommandType = CommandType.Text;
                cmd.Parameters.AddWithValue("product_name", str1);
                cmd.Parameters.AddWithValue("product_shortname", str2);

                con.Open();
                cmd.ExecuteNonQuery();
            }
        }
    }
    protected void Button5_Click(object sender, EventArgs e)
    {

    }
    protected void Button1_Click1(object sender, EventArgs e)
    {
        
    }
    protected void Button2_Click1(object sender, EventArgs e)
    {
        
    }
    protected void Button6_Click(object sender, EventArgs e)
    {
        if (i < recordcount)
        {
            i++;
            TextBox1.Text = ds.Tables[0].Rows[i]["product_id"].ToString();
            TextBox2.Text = ds.Tables[0].Rows[i]["product_name"].ToString();
            TextBox3.Text = ds.Tables[0].Rows[i]["product_shortname"].ToString();

        }

        else
        {
            Response.Write("You have reached the end of records in this category!!");
        }
    }
    protected void Button7_Click(object sender, EventArgs e)
    {
        if (i > 0)
        {
            i--;
            TextBox1.Text = ds.Tables[0].Rows[i]["product_id"].ToString();
            TextBox2.Text = ds.Tables[0].Rows[i]["product_name"].ToString();
            TextBox3.Text = ds.Tables[0].Rows[i]["product_shortname"].ToString();
        }

        else
        {
            Response.Write("You have reached the end of records in this category!!");
        }
    }
}