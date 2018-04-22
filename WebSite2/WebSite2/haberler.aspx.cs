using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.OleDb;

public partial class haberler : System.Web.UI.Page
{
    pau p = new pau();
    protected void Page_Load(object sender, EventArgs e)
    {
        OleDbConnection con = new OleDbConnection("Provider=Microsoft.Jet.OleDb.4.0;" + @"data source=C:\Users\user\Downloads\WebSite2\WebSite2\sozluk.mdb");
        con.Open();
        OleDbCommand cmd = new OleDbCommand();
        cmd.CommandText = "Select top 1 ebaslik from ekleme where ekategorino =1";
        cmd.Connection = con;
        cmd.CommandType = CommandType.Text;
        OleDbDataReader dr;
        dr = cmd.ExecuteReader();
        //while (dr.Read())
        // {
        Repeater1.DataSource = dr;
        Repeater1.DataBind();
        con.Close();
    }
    protected void btnarama_Click3(object sender, EventArgs e)
    {
        Response.Redirect("ara.aspx?q=" + txtarama.Text.Trim());

    }
}