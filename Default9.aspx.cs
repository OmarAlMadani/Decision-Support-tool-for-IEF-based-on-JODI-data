using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.OleDb;

public partial class Default9 : System.Web.UI.Page
{
    public Int32 m;
    protected void Page_Load(object sender, EventArgs e)
    {
        string conString = "Provider=Microsoft.ACE.OLEDB.12.0;Data Source=|DataDirectory|\\oildata.mdb;Persist Security Info=True";

        string queryString = "SELECT * FROM table1";

        using (OleDbConnection connection = new OleDbConnection(conString))
        {
            OleDbCommand command = new OleDbCommand(queryString, connection);
            connection.Open();
            OleDbDataReader reader = command.ExecuteReader();

            reader.Read();
            m = reader.GetInt32(0);
            Response.Write("<script>alert('Exception:')</script>");
            reader.Close();
        }
        
        if (m ==1)
        {
            DropDownList4.Visible = false;
            DropDownList5.Visible = false;
        }
        else if (m == 2)
        {
            DropDownList5.Visible = false;
        }

       }
    protected void Button1_Click(object sender, EventArgs e)
    {
        if (DropDownList1.Visible == true)
        {
            Session["First"] = DropDownList1.SelectedValue;
            chouse.fnam = DropDownList1.SelectedValue;
        }
        if (DropDownList4.Visible == true)
        {
            Session["Sacand"] = DropDownList4.SelectedValue;
            chouse.sname = DropDownList4.SelectedValue;
        }
        if (DropDownList5.Visible == true)
        {
            Session["Therd"] = DropDownList5.SelectedValue;
            chouse.thname = DropDownList5.SelectedValue;
        }
        Server.Transfer("~/Default21.aspx",false); 
    }
}