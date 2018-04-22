using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

/// <summary>
/// Class1 için özet açıklama
/// </summary>
public class baslik 
{
    private string kullaniciadi;
    private string yorum;

    public baslik()
    {

        //
        //TODO: Buraya oluşturucu mantığı ekleyin
        //
    }

    public string Yorum
    {
        get
        {
            return yorum;
        }

        set
        {
            yorum = value;
        }
    }

    public string Kullaniciadi
    {
        get
        {
            return kullaniciadi;
        }

        set
        {
            kullaniciadi = value;
        }
    }
}