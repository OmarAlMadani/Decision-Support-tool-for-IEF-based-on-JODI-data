﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.OleDb;

public partial class Default11 : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void Button2_Click1(object sender, EventArgs e)
    {
       

        String connection = "Provider=Microsoft.ACE.OLEDB.12.0;Data Source=|DataDirectory|\\oildata.mdb;Persist Security Info=True";

        using (OleDbConnection conn = new OleDbConnection(connection))
        {
            string commandString = "INSERT INTO flow_dim (flow_name,flow_shortname,superflow_demand,perflow_statistical_difference) values ('" + TextBox2.Text + "','" + TextBox3.Text + "','" + TextBox4.Text + "','" + TextBox5.Text + "')";

            OleDbCommand commandStatement = new OleDbCommand(commandString, conn);
            conn.Open();

            commandStatement.ExecuteNonQuery();
            conn.Close();
            Response.Write("<script>alert('record Have been added successfully')</script>");

        }
    }
    protected void  Button5_Click(object sender, EventArgs e)
{

}
}