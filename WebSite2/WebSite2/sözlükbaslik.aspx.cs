using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.OleDb;

public partial class sözlükbaslik : System.Web.UI.Page
{
    pau p = new pau();
    protected void Page_Load(object sender, EventArgs e)

    {
        OleDbConnection con = new OleDbConnection("Provider=Microsoft.Jet.OleDb.4.0;" + @"data source=C:\Users\user\Downloads\WebSite2\WebSite2\sozluk.mdb");
        con.Open();
        OleDbCommand cmd = new OleDbCommand();
        cmd.CommandText = "Select konubaslik from konular order by konubaslik";
        cmd.Connection = con;
        cmd.CommandType = CommandType.Text;
        OleDbDataReader dr;
        dr = cmd.ExecuteReader();
        //while (dr.Read())
        // {
        rpt.DataSource = dr;
        rpt.DataBind();
        dr.Close();
        // }
        p.baslik_getir(konular);
      

    }

    protected void btac_Click(object sender, EventArgs e)
    {
        try
        {
            string baslik = txkonu.Text;
            string kicerik = icerik.InnerText;
            int kategorino =Convert.ToInt32( konular.SelectedIndex+1);
            p.baslik_ekle(baslik, kategorino,  kicerik);
            Response.Redirect("sözlük.aspx");
        }
        catch
        {
            return;
        }




    }

    protected void konular_SelectedIndexChanged(object sender, EventArgs e)
    {

    }

    protected void konular_Load(object sender, EventArgs e)
    {
      
       
    }
    protected void btarama_Click(object sender, EventArgs e)
    {
        Response.Redirect("sarama.aspx?q=" + tarama.Text.Trim());

    }

    protected void btarama_Click1(object sender, EventArgs e)
    {
        Response.Redirect("sarama.aspx?q=" + tarama.Text.Trim());

    }
}