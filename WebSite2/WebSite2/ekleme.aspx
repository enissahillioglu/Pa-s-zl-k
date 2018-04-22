<%@ Page Language="C#" AutoEventWireup="true" CodeFile="ekleme.aspx.cs" Inherits="ekleme" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    
    <style type="text/css">
        #txicerik {
            width: 544px;
            height: 250px;
        }
        #kaydet{
    
    width:70px;
    height:25px;
    background-color:GrayText;
    margin:10px;

}
.ekleme{
    width:100%;
    height:100%;
    background:#05042c;
                color:white;


}
.ekleme1{
    border-radius:5px;
     background:#2e2d2d;

}
.image{
    background:white;
    height:50px;
    width:80px;
}
        .auto-style1 {
            height: 38px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
    <div class="ekleme" >
        <table width="70%" height="60%" align="center"  class="ekleme1">
            <tr>
                <td align="center"  ><asp:Label ID="baslik" runat="server" Text="Konu başlığı" ></asp:Label> </td>
                <td align="center"><asp:TextBox ID="txbaslik" runat="server" Width="66%" Height="40px"></asp:TextBox> </td>
            </tr>
            <tr>
                <td align="center"><asp:Label ID="icerik" runat="server" Text="Konu İçeriği"></asp:Label></td>
                <td align="center"><textarea id="txicerik" runat="server" class="icerik-textarea" ></textarea></td>
            </tr>
            <tr>
                <td  align="center" class="auto-style1"> <asp:Label ID="lkonu" runat="server" Text="Kategori"></asp:Label></td>
                <td  align="center" class="auto-style1"><asp:DropDownList ID="dekleme" runat="server" Height="23px" Width="172px" ></asp:DropDownList></td>
            </tr>
            <tr>
                <td align="center"><asp:Label ID="resim" runat="server" Text="Konu Resimi"></asp:Label></td>
                <td align="center"  ><asp:Button ID="rkaydet" runat="server" Text="KAYDET"  />
                    <asp:FileUpload ID="FileUpload1" runat="server" />
                </td>
            </tr>
            <tr>
                <td></td>
                <td align="center"><asp:Button ID="kaydet" runat="server" Text="KAYDET" CssClass="kaydet" OnClick="kaydet_Click" /></td>
                <asp:Label ID="label" runat="server"></asp:Label>
            </tr>
        </table>

    
    </div>
    </form>
</body>
</html>
