using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.OleDb;

public partial class sözlükgiris : System.Web.UI.Page
{
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
    }
    pau p = new pau();
    protected void btkaydol_Click(object sender, EventArgs e)
    {
        string kullaniciadi = txtkuladi.Text;
        string sifre = txtsifre.Text;
        string mail = txtmail.Text;
        if (kullaniciadi == "admin" && sifre == "admin" )
        {
            Session["admin"] = "admin";
            lbkyanlis.Text = "admin alınamaz";

        }
        else
        {
            Session["kullanici"] = "kul";
            p.kayit(kullaniciadi, sifre, mail);
            Response.Redirect("sözlük.aspx");
           
            

        }
    }
   
    protected void btgiris_Click(object sender, EventArgs e)
    {
        string kuladi = txkuladi.Text;
        string sifre = txsifre.Text;
       int kulno=p.kullanici_kontrol(kuladi, sifre);
        Session["kullanici"] = "kul";

        if (kuladi=="" && sifre=="")
        {
            lbyanlis.Text = "Boş değer girilemez";

        }
        else
        if (kulno == 0)
            lbyanlis.Text = "Yanlış değer girilemez";

        else
        {
            Session["kulno"] = kulno;
            if (Session["kulno"] != null)
                
               Response.Redirect("sözlük.aspx");
        }
       
    }

    protected void btarama_Click1(object sender, EventArgs e)
    {
        Response.Redirect("sarama.aspx?q=" + tarama.Text.Trim());

    }
}