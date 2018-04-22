using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.OleDb;
using System.Web.UI.HtmlControls; 



public partial class sözlük : System.Web.UI.Page
{
    protected System.Web.UI.WebControls.DataList DataList1;
    public string id;
    protected void Page_Load(object sender, EventArgs e)
    {


       
        konularigetir();
       
        //get metoduyla gönderilen paylaşım id'sini yakalar
        string a = Request.QueryString["id"];
        if (a != null)
        {
            paylasimsec(a);
        }

        //get metoduyla gönderilen paylaşım kategorisini yakalar
        string k = Request.QueryString["kategori"];
        if (k != null)
        {
            kategorisec(k);
          
        }
    }

    protected void giris_Click(object sender, EventArgs e)
    {

    }

    protected void baslik_Click(object sender, EventArgs e)
    {
        Response.Redirect("sözlükbaslik.aspx");
    }

    protected void btarama_Click(object sender, EventArgs e)
    {
        Response.Redirect("sarama.aspx?q=" + tarama.Text.Trim());

    }

    protected void LinkButton2_Command(object sender, CommandEventArgs e)
    {

        Response.Redirect("sözlük.aspx?id=" + e.CommandArgument.ToString());
        OleDbConnection con = new OleDbConnection("Provider=Microsoft.Jet.OleDb.4.0;" + @"data source=C:\Users\user\Downloads\WebSite2\WebSite2\sozluk.mdb");
        con.Open();
        string sql= "Select y.yorum,k.kullaniciadi from yorumlar y,kullanicilar k where k.kullanicino=y.kullanicino and y.konuno=" + e.CommandArgument.ToString();
        OleDbDataAdapter t = new OleDbDataAdapter(sql, con);
        DataTable d = new DataTable();
        t.Fill(d);
      Rpt2.DataSource = d;
       Rpt2.DataBind();
        sbaslik.Text = ((LinkButton)sender).Text;
        if (sbaslik.Text != "")
            Panel1.Visible = true;
        con.Close();
       





        // Rpt2.DataSource = b;
        // Rpt2.DataBind();

        //    Button b = new Button();
        //b.Width = 100;
        //b.Height = 50;
        //b.Text = "dsadasd";
        //Panel a=(Panel)Rpt2.FindControl("Panel1");
        //a.Controls.Add(b);

        // HtmlGenericControl mydiv = (HtmlGenericControl)Rpt2.FindControl("dede");
        //mydiv.Controls.Add(b);





    }

    protected void Button1_Click(object sender, EventArgs e)
    {
        pau p = new pau();
        p.yorum_ekle(Request.QueryString["id"], TextArea1.Text, Session["kulno"].ToString());
        Response.Redirect("sözlük.aspx?id="+ Request.QueryString["id"]);
    }
    void konularigetir()
    {

        OleDbConnection con = new OleDbConnection("Provider=Microsoft.Jet.OleDb.4.0;" + @"data source=C:\Users\user\Downloads\WebSite2\WebSite2\sozluk.mdb");
        con.Open();
        OleDbCommand cmd = new OleDbCommand();
        cmd.CommandText = "Select konuno,konubaslik  from konular order by konubaslik ";
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

    void paylasimsec(string a)
    {

        OleDbConnection con2 = new OleDbConnection("Provider=Microsoft.Jet.OleDb.4.0;" + @"data source=C:\Users\user\Downloads\WebSite2\WebSite2\sozluk.mdb");
        con2.Open();
        OleDbCommand cmd2 = new OleDbCommand();
        cmd2.CommandText = "Select y.yorumno ,y.yorum,kul.kullaniciadi from kullanicilar kul,yorumlar y where y.kullanicino=kul.kullanicino and y.konuno=" + a;
        cmd2.Connection = con2;
        cmd2.CommandType = CommandType.Text;
        OleDbDataReader dr2;
        dr2 = cmd2.ExecuteReader();
        //while (dr.Read())
        // {
        if (Session["kulno"] != null)
            Panel1.Visible = true;
        Rpt2.DataSource = dr2;

        Rpt2.DataBind();
        con2.Close();
    }
    void kategorisec(string k)
    {

        OleDbConnection v = new OleDbConnection("Provider=Microsoft.Jet.OleDb.4.0;" + @"data source=C:\Users\user\Downloads\WebSite2\WebSite2\sozluk.mdb");
        v.Open();
        string sql = "Select k.konuno,k.konubaslik  from konular k,kkategori ka where k.kkategorino=ka.kkategorino and ka.kkategoriadi='" + k + "' order by k.konubaslik ";
        OleDbDataAdapter t = new OleDbDataAdapter(sql, v);
        DataTable d = new DataTable();
        t.Fill(d);
        Rpt2.Visible = false;
        lv2.DataSource = d;
        lv2.DataBind();
        //sbaslik.Text = ((LinkButton)sender).Text;
        //if (sbaslik.Text != "")


        v.Close();
    }
}