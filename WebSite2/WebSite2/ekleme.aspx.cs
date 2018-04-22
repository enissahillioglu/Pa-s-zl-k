using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.OleDb;
using System.IO;


public partial class ekleme : System.Web.UI.Page
{
    pau p = new pau();
    protected void Page_Load(object sender, EventArgs e)
    {
        p.konu_getir(dekleme);
       
    }

    protected void kaydet_Click(object sender, EventArgs e)
    {
        
        string baslik = txbaslik.Text;
        string icerik = txicerik.InnerText;
        // FileUpload image = fresim.SaveAs("C:\\Users\\Mine\\Desktop\\WebSite2\\imagess"+ fresim.FileName);
        int ebaslik = dekleme.SelectedIndex + 1;
        
        if (FileUpload1.HasFile)
        {
            try
            {
                if (FileUpload1.PostedFile.ContentType == "image/jpeg")
                {
                    if (FileUpload1.PostedFile.ContentLength < 10240000)
                    {
                        string filename =Path.GetFileName(FileUpload1.FileName);
                        if (filename != "")
                        {
                            FileUpload1.SaveAs(Server.MapPath("~/paüderesimleri/") + filename);
                            label.Text = filename + " dosyası yüklendi!";
                            p.ekleme(baslik, icerik, ebaslik,filename);

                        }

                    }
                    else
                        label.Text = "Dosya boyutu 100 KB'dan düşük olmalı!";
                }
                else
                   label.Text = "Sadece JPEG formatı kabul edilir.";
            }
            catch (Exception ex)
            {
                label.Text = "Dosya yüklenemedi: " + ex.Message;
            }
        }
    }
    // p.resim_ekle(ebaslik.ToString(), FileUpload1.FileName);

}

    

   
