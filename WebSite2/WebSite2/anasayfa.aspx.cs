using System;
using System.Collections.Generic;
using System.Data;
using System.Data.OleDb;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class anasayfa : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        OleDbConnection con = new OleDbConnection("Provider=Microsoft.Jet.OleDb.4.0;" + @"data source=C:\Users\user\Downloads\WebSite2\WebSite2\sozluk.mdb");
        con.Open();
        OleDbCommand cmd = new OleDbCommand();
        cmd.CommandText = "Select eklemeno,ekonu,ebaslik,eresim  from ekleme ";
        cmd.Connection = con;
        cmd.CommandType = CommandType.Text;
        OleDbDataReader dr;
        dr = cmd.ExecuteReader();
        //while (dr.Read())
        // {
        listview1.DataSource = dr;

        listview1.DataBind();
        con.Close();


        OleDbConnection con2 = new OleDbConnection("Provider=Microsoft.Jet.OleDb.4.0;" + @"data source=C:\Users\user\Downloads\WebSite2\WebSite2\sozluk.mdb");

        con2.Open();
        OleDbCommand cmd2 = new OleDbCommand();
        cmd2.CommandText = "Select Top 5 k.konubaslik,k.konuno  from konular k,yorumlar y where y.konuno=k.konuno GROUP BY k.konubaslik,k.konuno ORDER BY COUNT(y.konuno) DESC ";
        cmd2.Connection = con2;
        cmd2.CommandType = CommandType.Text;
        OleDbDataReader dr2;
        dr2 = cmd2.ExecuteReader();
       
        list_populer.DataSource = dr2;

        list_populer.DataBind();
        con2.Close();
    }

    protected void btnarama_Click(object sender, EventArgs e)
    {
        Response.Redirect("ara.aspx?q=" + txtarama.Text.Trim());
    }



   

    

    
}