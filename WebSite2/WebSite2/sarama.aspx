<%@ Page Language="C#" AutoEventWireup="true" CodeFile="sarama.aspx.cs" Inherits="sarama" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <link href="style.css" rel="stylesheet" />
</head>
<body>
     <form id="form1" runat="server">
     <div id="wrapper">
           <header >
               <div class="logo"><img src="images/logo2.png" /><a href="sözlük.aspx">LOGO </a> 
                   
               </div>
               <nav>
                   <ul>
                       <li>
                           Gündem
                       </li>
                   </ul>
                   <ul>
                       <li>
                           #Spor
                          
                       </li>
                   </ul>
                   <ul>
                       <li>
                       #Aşk
                          
                       </li>
                   </ul>
                   <ul>
                       <li>
                       #Siyaset
                          
                       </li>
                   </ul>
                    <ul>
                       <li>
                       #İtiraf
                          
                       </li>
                   </ul> <ul>
                       <li>
                       #Goygoy
                          
                       </li>
                   </ul>
               </nav>
               <div class="kaydol">
                  <asp:Button ID="kayıt" CssClass="kayıt" runat="server" Text="KAYDOL"   />
                  <asp:Button ID="giris" CssClass="giris" runat="server" Text="GİRİŞ"   />
                    <asp:Button ID="baslik" CssClass="baslik" runat="server" Text="Başlık Ekle" />
               </div>
               <div class="slogo"><a href="anasayfa.aspx"><img src="images/logo1.png" width="100px" height="50px" /> </a>
               </div>
               
               <div class="arama" >
                   <asp:TextBox ID="tarama" CssClass="tarama" runat="server" placeholder="arama"  />
                   <asp:button ID="btarama" cssClass="btarama" text="ara" runat="server" OnClick="btarama_Click"  />
               </div>
               
           </header>
         <div class="sicerik">
             <div class="ssolbolum">
                  <div class="menü">
                     
                      <asp:Repeater ID="rpt" runat="server">
                          <ItemTemplate>
                              <br />
                              <%#  Eval("konubaslik") %>
                              

                          </ItemTemplate>
                      </asp:Repeater>
                      <iframe id="frame" onscroll="yes" style="width:25%; height:100%; overflow:hidden; border:none;"> khfdkjgsd</iframe>
                      
                 </div>
             </div>
             <div class="ssagbolum">
                 

                
                 <div class="baslik1">
                   <br /> <br /><asp:Label ID="sbaslik" runat="server" Text="Başlıklar" CssClass="baslik1"></asp:Label>  
                 </div>
                 <div class="menü1">
                  <asp:Repeater ID="Rpt2" runat="server">
                          <ItemTemplate>
                              <br />
                                            <%#  Eval("yorum") %>
                                       
                          </ItemTemplate>
                      </asp:Repeater>
                      <iframe id="frames" class="menü1" onscroll="yes" style="width:25%; height:100%; overflow:hidden; border:none;"> khfdkjgsd</iframe>
             </div>
                 </div>
              <footer ">
                              Tüm Hakları Saklıdır 

           </footer>
         </div>
         </div>
    </form>
</body>
</html>
