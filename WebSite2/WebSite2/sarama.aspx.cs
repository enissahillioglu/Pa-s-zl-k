using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.OleDb;

public partial class sarama : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        string kelime = Request.QueryString["q"].ToString();
        OleDbConnection con = new OleDbConnection("Provider=Microsoft.Jet.OleDb.4.0;" + "data source=sozluk.mdb");
        con.Open();
        OleDbCommand cmd = new OleDbCommand();
        cmd.CommandText = "Select konubaslik from konular where konubaslik like '%" + kelime + "%'";

        cmd.Connection = con;
        cmd.CommandType = CommandType.Text;
        OleDbDataReader dr;
        dr = cmd.ExecuteReader();
         rpt.DataSource = dr;
        rpt.DataBind();
        dr.Close();

        OleDbConnection cony = new OleDbConnection("Provider=Microsoft.Jet.OleDb.4.0;" + "data source=sozluk.mdb");
        cony.Open();
        OleDbCommand cmdy = new OleDbCommand();
        cmdy.CommandText = "Select yorum from yorumlar where yorum like '%" + kelime + "%'";
        cmdy.Connection = con;
        cmdy.CommandType = CommandType.Text;
        OleDbDataReader dry;
        dry = cmdy.ExecuteReader();
        Rpt2.DataSource = dry;
        Rpt2.DataBind();
        dry.Close();

    }

    protected void tarama_TextChanged(object sender, EventArgs e)
    {

    }

    protected void btarama_Click(object sender, EventArgs e)
    {
        Response.Redirect("sarama.aspx?q=" + tarama.Text.Trim());

    }
}