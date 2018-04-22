using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data;
using System.Data.OleDb;
using System.Web.UI.WebControls;
using System.Data.Odbc;
using System.IO;
using System.Drawing;
using System.Drawing.Text;






public class pau
{
    string bcum = "Provider=Microsoft.Jet.OleDb.4.0;" + @"data source=C:\Users\user\Downloads\WebSite2\WebSite2\sozluk.mdb";
    public pau()
    {       
    }
    public void ekleme(string baslik, string icerik , int kno ,string foto)
    {
        string sql = "Insert into ekleme (ebaslik,ekonu,eresim,ekategorino ) values "
            + "('" + baslik + "','" + icerik + "','"+foto+"','" + kno + "')";
        OleDbConnection b = new OleDbConnection(bcum);
        b.Open();
        OleDbCommand k = new OleDbCommand(sql, b);
        k.ExecuteNonQuery();
        b.Close();
    }
   
    public void baslik_ekle (string baslik , int konukategori , string konuicerik)
    {
        string sql = "Insert into konular (konubaslik,kkategorino,konuicerik) values "
            + "('" + baslik + "'," + konukategori + ",'" + konuicerik + "')";
        OleDbConnection baglanti = new OleDbConnection(bcum);
        OleDbCommand k = new OleDbCommand(sql,baglanti);
        baglanti.Open();
        k.ExecuteNonQuery();
        baglanti.Close();

    }
    public void yorum_ekle(string konuno, string yorum, string kullanicino)
    {
        string sql = "Insert into yorumlar (konuno,yorum,kullanicino) values "
            + "(" + konuno + ",'" + yorum + "'," + kullanicino + ")";
        OleDbConnection baglanti = new OleDbConnection(bcum);
        OleDbCommand k = new OleDbCommand(sql, baglanti);
        baglanti.Open();
        k.ExecuteNonQuery();
        baglanti.Close();

    }
    public void konu_getir(DropDownList dl)
    {
        OleDbConnection conx = new OleDbConnection("Provider=Microsoft.Jet.OleDb.4.0;" + @"data source=C:\Users\user\Downloads\WebSite2\WebSite2\sozluk.mdb");
        conx.Open();
        OleDbCommand cmdx = new OleDbCommand();
        cmdx.CommandText = "Select ekategoriadi from ekategori";
        cmdx.Connection = conx;
        cmdx.CommandType = CommandType.Text;
        OleDbDataReader drx;
        drx = cmdx.ExecuteReader();
        while (drx.Read())
        {
            dl.Items.Add(drx["ekategoriadi"].ToString());
        }
    }
    public void baslik_getir( DropDownList ddl)
    {
       
        OleDbConnection conx = new OleDbConnection("Provider=Microsoft.Jet.OleDb.4.0;" + @"data source=C:\Users\user\Downloads\WebSite2\WebSite2\sozluk.mdb");
        conx.Open();
        OleDbCommand cmdx = new OleDbCommand();
        cmdx.CommandText = "Select kkategoriadi from kkategori";
        cmdx.Connection = conx;
        cmdx.CommandType = CommandType.Text;
        OleDbDataReader drx;
        drx = cmdx.ExecuteReader();
        while (drx.Read())
        {
            ddl.Items.Add(drx["kkategoriadi"].ToString());
        }      
    }
    public DataTable kategori_getir()
    {

        OleDbConnection conx = new OleDbConnection("Provider=Microsoft.Jet.OleDb.4.0;" + @"data source=C:\Users\user\Downloads\WebSite2\WebSite2\sozluk.mdb");
        conx.Open();
        string sql =  "Select kkategoriadi from kkategori";
        OleDbDataAdapter t = new OleDbDataAdapter(sql, conx);
        DataTable d = new DataTable();
        t.Fill(d);
       
       
        return d;
        
    }
    public void kayit(string kulad,string sifre , string mail)
    {
        string sql = "Insert into kullanicilar (kullaniciadi,kullanicisifresi,kullanicimail) values ('" + kulad + "','" + sifre + "','" + mail + "')";
        OleDbConnection b = new OleDbConnection(bcum);
        OleDbCommand k = new OleDbCommand(sql, b);
        b.Open();
        k.ExecuteNonQuery();
        b.Close();

    }
    public int kullanici_kontrol(string kuladi,string sifre)
    {
        string sql = "Select * from kullanicilar where kullaniciadi='" + kuladi + "' and kullanicisifresi='" + sifre + "'";
        OleDbDataAdapter a = new OleDbDataAdapter(sql, bcum);
        DataTable t = new DataTable();
        a.Fill(t);
        if (t.Rows.Count > 0)
            return Convert.ToInt32(t.Rows[0][0]);
        else
            return 0;
    }
    public void haber_etkinlik_duyuru_getir(int katno )
    {
         OleDbConnection conx = new OleDbConnection("Provider=Microsoft.Jet.OleDb.4.0;" + @"data source=C:\Users\user\Downloads\WebSite2\WebSite2\sozluk.mdb");
         conx.Open();
         OleDbCommand cmdx = new OleDbCommand();
         cmdx.CommandText = "Select ebaslik from ekleme where ekategorino="+katno;
         cmdx.Connection = conx;
         cmdx.CommandType = CommandType.Text;
         OleDbDataReader drx;
         drx = cmdx.ExecuteReader();
                    
    }
    public void resimgetir(int katno )
    {
        OleDbConnection conx = new OleDbConnection("Provider=Microsoft.Jet.OleDb.4.0;" + "data source=sozluk.mdb");
        conx.Open();
        OleDbCommand cmdx = new OleDbCommand();
        cmdx.CommandText = "Select eresim from ekleme where ekategorino=" + katno;
        cmdx.Connection = conx;
        cmdx.CommandType = CommandType.Text;
        OleDbDataReader drx;
        drx = cmdx.ExecuteReader();
       
    }

}