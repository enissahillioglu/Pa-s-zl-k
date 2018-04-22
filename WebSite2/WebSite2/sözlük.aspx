<%@ Page Language="C#" AutoEventWireup="true" CodeFile="sözlük.aspx.cs" Inherits="sözlük" %>
<script runat="server">
    protected    void giris_Click(object sender,EventArgs e)
    {
        Response.Redirect("sözlükgiris.aspx");
    }
    protected  void giris1_Click(object sender,EventArgs e)
    {
        Response.Redirect("sözlükgiris.aspx");
    }
    protected void git(object sender , EventArgs e)
    {
        Response.Redirect("anasayfa.aspx");
    }
   
</script>
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
                          <asp:LinkButton ID="lbuton" href="?kategori=Gündem" runat="server" > Gündem </asp:LinkButton> 
                       </li>
                   </ul>
                   <ul>
                       <li>
                          <asp:LinkButton ID="lbuton1" href="?kategori=Spor" runat="server"> #Spor </asp:LinkButton> 
                          
                       </li>
                   </ul>
                   <ul>
                       <li>
                          <asp:LinkButton ID="lbuton2" href="?kategori=Aşk" runat="server"> #Aşk </asp:LinkButton> 
                          
                       </li>
                   </ul>
                   <ul>
                       <li>
                          <asp:LinkButton ID="lbuton3" href="?kategori=Siyaset" runat="server"> #Siyaset </asp:LinkButton> 
                          
                       </li>
                   </ul>
                    <ul>
                       <li>
                          <asp:LinkButton ID="lbuton4" href="?kategori=İtiraf" runat="server"> #İtiraf </asp:LinkButton> 
                          
                       </li>
                   </ul> <ul>
                       <li>
                          <asp:LinkButton ID="lbuton5" href="?kategori=Goygoy" runat="server"> #Goygoy </asp:LinkButton> 
                          
                       </li>
                   </ul>
               </nav>
               <div class="kaydol">
                  <asp:Button ID="kayıt" CssClass="kayıt" runat="server" Text="KAYDOL"  OnClick="giris_Click" />
                  <asp:Button ID="giris" CssClass="giris" runat="server" Text="GİRİŞ" OnClick="giris1_Click"  />
                    <asp:Button ID="baslik" CssClass="baslik" runat="server" Text="Başlık Ekle" OnClick="baslik_Click" />
               </div>
               <div class="slogo"><a href="anasayfa.aspx"><img src="images/logo1.png" width="100px" height="50px" /> </a>
               </div>
               
               <div class="arama" >
                   <asp:TextBox ID="tarama" CssClass="tarama" runat="server" placeholder="arama" />
                   <asp:button ID="btarama" cssClass="btarama" text="ara" runat="server" OnClick="btarama_Click" />
               </div>
               
           </header>
         <div class="sicerik">
             <div class="ssolbolum">
                  <div class="menü"  >
                     <asp:Listview ID="Repeater1" runat="server"  >
                          <ItemTemplate>
                            
                            <asp:LinkButton class="yorumbasligi" ID="LinkButton2" CommandArgument='<%# Eval("konuno") %>' OnCommand="LinkButton2_Command" CommandName="Sil" runat="server" Text='<%# Eval("konubaslik") %>' Font-Bold="False" Font-Size="Large"> </asp:LinkButton>
                             
                              <br />
                              
                          </ItemTemplate>
                      </asp:Listview>

                                            
                      
                 </div>
             </div>
             <div class="ssagbolum">
                 

                
                
                 <div class="menü1">
                      <div class="baslik1">
                   <asp:Label ID="sbaslik" runat="server" CssClass="baslik1" Font-Bold="True" Font-Size="X-Large"> </asp:Label>  
                 </div>
                  <asp:ListView class="rpt2" ID="Rpt2" runat="server">
                          <ItemTemplate>
                             
                                       <div class ="baslikdiv2">
                                            <div class ="baslikdiv" >
                                                 <%#  Eval("yorum") %>
                                            </div>
                                           <div class="detay" id="dede"> 
                                                <%#  Eval("kullaniciadi") %>
                                           </div>
                                        </div>
                                         

                          </ItemTemplate>
                      </asp:ListView>
                     <asp:ListView class="rpt3" ID="lv2" runat="server">
                          <ItemTemplate>
                             
                                      
                                            <div class ="baslikdiv2" >
                                                 <div class ="baslikdiv" >
                                                 <asp:LinkButton ID="lbuton1" href='<%# "?id="+ Eval("konuno") %>' runat="server">  <%#  Eval("konubaslik") %> </asp:LinkButton> 
                          </div>
                                                
                                            </div>
                                           
                                         

                          </ItemTemplate>
                      </asp:ListView>
                     <asp:Panel ID="Panel1" runat="server" Visible="False">
                         <div> 
                               <asp:TextBox id="TextArea1" TextMode="multiline" Columns="50" Rows="5" runat="server" />
                         </div>
                       
                         <asp:Button ID="Button1" runat="server" Text="Yorumu Gönder" OnClick="Button1_Click"  />

                     </asp:Panel>
                     
                                           
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
