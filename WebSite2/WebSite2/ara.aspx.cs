using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;
using System.Data.OleDb;
using System.Web.Configuration;




public partial class ara : System.Web.UI.Page
{
   //string bcum = "Provider=Microsoft.Jet.OleDb.4.0;" + "data source=sozluk.mdb";
    protected void Page_Load(object sender, EventArgs e)
    {
        string kelime = Request.QueryString["q"].ToString(); 
        OleDbConnection con = new OleDbConnection("Provider=Microsoft.Jet.OleDb.4.0;" + "data source=sozluk.mdb");
        con.Open();
        OleDbCommand cmd = new OleDbCommand();
        cmd.CommandText = "Select ebaslik,ekonu from ekleme where ekonu like '%"+kelime+"%'";
        cmd.Connection = con;
        cmd.CommandType = CommandType.Text;
        OleDbDataReader dr;
        dr = cmd.ExecuteReader();
        Repeater1.DataSource = dr;
        Repeater1.DataBind();
        dr.Close();


    }

    protected void btnarama_Click(object sender, EventArgs e)
    {
        Response.Redirect("ara.aspx?q=" + txtarama.Text.Trim());

    }
}