<%@ Page Language="C#" AutoEventWireup="true" CodeFile="anasayfa.aspx.cs" Inherits="anasayfa" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Pau Sözlük</title>
    <link href="style.css" rel="stylesheet" />
</head>
<body>
    <div class="sitekalip">
<form id="form1" runat="server">
     <div id="wrapper">
           <header >
               <div class="logo"><img src="images/logo1.png" width="80%" height="80%" /><a href="anasayfa.aspx"> </a>
                   
               </div>
               <nav>
                   <ul>
                       <li>
                           ANASAYFA
                       </li>
                 
                   </ul>
                   <ul>
                       <li>
                           <a href="haberler.aspx"> HABERLER </a>
                          
                       </li>
                   </ul>
                   <ul>
                       <li> <a href="duyurular.aspx">  DUYURULAR </a>
                          
                       </li>
                   </ul>
                   <ul>
                       <li> <a href="etkinlikler.aspx">  ETKİNLİKLER</a>
                          
                       </li>
                   </ul>
               </nav>
              <div class="logoiki"><a href="sözlük.aspx"><img src="images/logo2.png" width="100px" height="15px" /> </a>
                   
               </div>
               <div class="arama-wrap" >
                   <asp:TextBox ID="txtarama" CssClass="txtarama" runat="server" placeholder="arama" />
                   <asp:button ID="btnarama" cssClass="btnarama" text="ara" runat="server" OnClick="btnarama_Click" />
               </div>
               
           </header>
           
        <div class="banneralan">
            <div class="banner"><img src="image/haber.jpg" width="100%" height="100%" /></div>
            <div class="banner"><img src="image/duyuru.jpg"  width="100%" height="100%" /></div>
            <div class="banner"><img src="image/images.jpg"  width="100%"height="100%" /></div>

        </div>
             <div class="icerik">
                 <div class="ortalan">
                     <style type="text/css">
                            #takip {
                                position: fixed;
                                right: 0;
                                top: 80px;
                                z-index: 999999;
                            }

                            .takip {
                                background-image: url('http://n1311.hizliresim.com/1h/k/un8hq.png');
                                background-repeat: no-repeat;
                                height: 42px;
                                width: 42px;
                                top: 10px;
                                margin-left: auto;
                            }

                                .takip:hover {
                                    cursor: pointer;
                                }

                            .facebook {
                                background-position: 0px 0px;
                            }

                            .twitter {
                                background-position: 0px -42px;
                            }
                            /*.flickr {background-position: 0px -84px;}*/
                            /*.friendfeed {background-position: 0px -126px;}*/
                            /*.vimeo {background-position: 0px -168px;}*/
                            .youtube {
                                background-position: 0px -210px;
                            }
                            /*.linkedin {background-position: 0px -252px;}*/
                            /*.rss {background-position: 0px -294px;}*/
                            .facebook:hover {
                                background-position: 0px 0px;
                            }
                        </style>
                        <div id="takip">
                            <div class="facebook takip" onclick="takipler('https://www.facebook.com/profile.php?id=100000188687879')">
                                
                            </div>
                            <div class="twitter takip" onclick="takipler('https://twitter.com/?lang=tr')">
                            </div>



                            <div class="youtube takip" onclick="takipler('https://www.youtube.com/channel/UCKWmkJFC1Yj7_DKClPD6mFw?view_as=subscriber')">
                            </div>


                        </div>
                        <script type="text/javascript">
                            $(document).ready(function () {
                                $(".takip").mouseover(function () {
                                    $(this).filter(':not(:animated)').animate({ width: 135 }, { duration: 500 });
                                });
                                $(".takip").mouseout(function () {
                                    $(this).animate({ width: 42 });
                                });
                            });
                            function takipler(link) {
                                window.open(link);
                            }
                        </script>

                    <div class="solbolum">   
                         
                      <div>
                        <asp:Listview ID="listview1" runat="server"  >
                          <ItemTemplate>
                            <div class="post">
                            <div class="sol">
                                <asp:Image ID="Image1" CssClass="rsm" runat="server" imageurl='<%# Eval("eresim")%>' />
                            </div>
                            <div class="sag">
                                <div class="sag-ust"> 
                                    <asp:Label ID="Labelll" CssClass="aciklama" runat="server" Text='<%#Eval("ebaslik")%>' Font-Bold="True" Font-Size="X-Large"></asp:Label>
                                <br>
                               
                                <asp:Label ID="aciklama" CssClass="aciklama" runat="server" Text='<%#Eval("ekonu").ToString().Length>=500?Eval("ekonu").ToString().Substring(0,499):Eval("ekonu").ToString() %>'></asp:Label>
                              
                                </div>
                               
                            </div>
                        </div>
                              <div class="sag-alt">
                                  <asp:Label ID="Label2" runat="server" Text="Tarih"></asp:Label>
                                  <asp:Button ID="Button1" runat="server" Text="Devamını oku" />
                                  <asp:Label ID="Label1" runat="server" Text="Yazar ismi"></asp:Label>
                               </div>
                              <br />
                              
                          </ItemTemplate>
                      </asp:Listview>
                        
                        </div> 
                                
                    </div>
                            
                     
                    <div class="sagbolum">
                           <div class="populer">
                               <asp:Label ID="Label3" runat="server" Text="Popüler" Font-Bold="True" Font-Size="X-Large"></asp:Label>
                               <asp:ListView ID="list_populer" runat="server">
                                    <ItemTemplate >

                                       <div class ="baslikdiv2">
                                            <div class ="baslikdiv" >
                                            <asp:LinkButton ID="Label4" runat="server" href='<%# "./sözlük.aspx?id="+Eval("konuno")%>' Text='<%#Eval("konubaslik")%>'></asp:LinkButton>
                                                
                                            </div> </div>


                                       
                                    </ItemTemplate>
                               </asp:ListView>
                             
                        </div>
                          
                    </div>
                 
                 </div>
                        
               </div>

       
          

           <footer>
              Tüm Hakları Saklıdır
           </footer>
       </div>
    </form>
    </div>
    
</body>
</html>
