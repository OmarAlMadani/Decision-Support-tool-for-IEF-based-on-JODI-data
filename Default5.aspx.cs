using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.OleDb;
using System.Data;

public partial class Default5 : System.Web.UI.Page
{
    OleDbConnection Con;
    OleDbCommand Cmd;
    OleDbDataAdapter da;
    OleDbDataReader dr;
    DataSet ds;
    int recordcount = 0;
    int i ;
    protected void Page_Load(object sender, EventArgs e)
    {
        Con = new OleDbConnection("Provider=Microsoft.ACE.OLEDB.12.0;Data Source=|DataDirectory|\\oildata.mdb;Persist Security Info=True");

        Cmd = new OleDbCommand("SELECT * FROM flow_dim", Con);

        da = new OleDbDataAdapter(Cmd);
        ds = new DataSet("flow_dim");
        Con.Open();
        this.da.Fill(ds, "flow_dim");

        dr = Cmd.ExecuteReader();
        recordcount = ds.Tables[0].Rows.Count;
        if (recordcount > 0)
        {

            TextBox1.Text = ds.Tables[0].Rows[i]["flow_id"].ToString();
            TextBox2.Text = ds.Tables[0].Rows[i]["flow_name"].ToString();
            TextBox3.Text = ds.Tables[0].Rows[i]["flow_shortname"].ToString();
            TextBox4.Text = ds.Tables[0].Rows[i]["superflow_demand"].ToString();
            TextBox5.Text = ds.Tables[0].Rows[i]["superflow_statistical_difference"].ToString();

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
        string command1 = "delete from flow_dim where flow_id = " + TextBox1.Text;
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
        string a, b, c, d, m;
        a = TextBox1.Text;
        b = TextBox2.Text;
        c = TextBox3.Text;
        d = TextBox4.Text;
        m = TextBox5.Text;

        String connection = "Provider=Microsoft.ACE.OLEDB.12.0;Data Source=|DataDirectory|\\oildata.mdb;Persist Security Info=True";
 
        using (OleDbConnection conn = new OleDbConnection(connection))
        {
            conn.Open();
            DataSet ds = new DataSet();
            OleDbConnection dbConnection = new OleDbConnection(connection);

            string commandString =
            "INSERT INTO flow_dim (flow_id , flow_name, flow_shortname,superflow_demand,perflow_statistical_difference)" + " VALUES (?, ?, ? , ?, ?)";

            OleDbCommand commandStatement = new OleDbCommand(commandString, dbConnection);

            commandStatement.Parameters.Add("@flow_id", OleDbType.VarWChar, 30).Value = a;
            commandStatement.Parameters.Add("@flow_name", OleDbType.Integer, 50).Value = b;
            commandStatement.Parameters.Add("@flow_shortname", OleDbType.VarWChar, 40).Value = c;
            commandStatement.Parameters.Add("@superflow_demand", OleDbType.Integer, 50).Value = d;
            commandStatement.Parameters.Add("@perflow_statistical_difference", OleDbType.VarWChar, 40).Value = m;

            dbConnection.Open();
            commandStatement.ExecuteNonQuery();


        }
    }
    protected void Button3_Click(object sender, EventArgs e)
    {
        string str1 = TextBox2.Text;
        string str2 = TextBox3.Text;
        string str3 = TextBox4.Text;
        string str4 = TextBox5.Text;

        String connection = "Provider=Microsoft.ACE.OLEDB.12.0;Data Source=|DataDirectory|\\oildata.mdb;Persist Security Info=True";

        string str = "UPDATE flow_dim SET flow_name = ? , flow_shortname = ? , superflow_demand = ? , perflow_statistical_difference = ? ";
        using (OleDbConnection con = new OleDbConnection(connection))
        {
            using (OleDbCommand cmd = new OleDbCommand(str, con))
            {
                cmd.CommandType = CommandType.Text;
                cmd.Parameters.AddWithValue("flow_name", str1);
                cmd.Parameters.AddWithValue("flow_shortname", str2);
                cmd.Parameters.AddWithValue("superflow_demand", str3);
                cmd.Parameters.AddWithValue("perflow_statistical_difference", str4);

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

    protected void Button7_Click(object sender, EventArgs e)
    {
        if (i > 0)
        {
            i--;
            TextBox1.Text = ds.Tables[0].Rows[i]["flow_id"].ToString();
            TextBox2.Text = ds.Tables[0].Rows[i]["flow_name"].ToString();
            TextBox3.Text = ds.Tables[0].Rows[i]["flow_shortname"].ToString();
            TextBox4.Text = ds.Tables[0].Rows[i]["superflow_demand"].ToString();
            TextBox5.Text = ds.Tables[0].Rows[i]["superflow_statistical_difference"].ToString();
        }

        else
        {
            Response.Write("You have reached the end of records in this category!!");
        }
    }
    protected void Button6_Click(object sender, EventArgs e)
    {
        if (i < recordcount)
        {
            i++;
            TextBox1.Text = ds.Tables[0].Rows[i]["flow_id"].ToString();
            TextBox2.Text = ds.Tables[0].Rows[i]["flow_name"].ToString();
            TextBox3.Text = ds.Tables[0].Rows[i]["flow_shortname"].ToString();
            TextBox4.Text = ds.Tables[0].Rows[i]["superflow_demand"].ToString();
            TextBox5.Text = ds.Tables[0].Rows[i]["superflow_statistical_difference"].ToString();
        }

        else
        {
            Response.Write("You have reached the end of records in this category!!");
        }
    }
}