<%@ Page Language="C#" AutoEventWireup="true" CodeFile="duyurular.aspx.cs" Inherits="duyurular" %>

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
                          <a href="anasayfa.aspx">  ANASAYFA
                       </li>
                   </ul>
                   <ul>
                       <li>
                           <a href="haberler.aspx"> HABERLER </a>
                          
                       </li>
                   </ul>
                   <ul>
                       <li>  DUYURULAR 
                          
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
                   <asp:TextBox ID="txtarama" CssClass="txtarama" runat="server" placeholder="arama"  />
                   <asp:button ID="btnarama" cssClass="btnarama" text="ara" runat="server" OnClick="btnarama_Click1"  />
               </div>
               
           </header>
           
        <div class="banneralan">
            <div class="banner"><img src="image/duyuru.jpg" width="100%" height="100%" /></div>
            <div class="banner"><img src="image/duyuru1.png"  width="100%" height="100%" /></div>
            <div class="banner"><img src="image/duyuru2.jpg"  width="100%"height="100%" /></div>

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
                         <a href="https://www.accuweather.com/en/tr/denizli/317679/weather-forecast/317679"
                                class="aw-widget-legal"></a>
                            <div id="awcc1523527032021" class="aw-widget-current"
                                data-locationkey="317679" data-unit="c" data-language="tr"
                                data-useip="false" data-uid="awcc1523527032021">
                            </div>
                            <script type="text/javascript" src="https://oap.accuweather.com/launch.js"></script>
                        <div class="ilkalan1">
                            <div class="sol-ilkalan1">

                            </div>
                            <div class="sag-ilkalan1">
                                <asp:Label ID="lbl" runat="server" Text="akjkdg" ></asp:Label>
                            </div>
                        </div>
                        <div class="ilkalan2">
                            <div class="sol-ilkalan2">

                            </div>
                            <div class="sag-ilkalan2">

                            </div>

                        </div>
                        <div class="ilkalan3">
                            <div class="sol-ilkalan3">

                            </div>
                            <div class="sag-ilkalan3">

                            </div>

                        </div>

                                
                    </div>
                            
                     
                    <div class="sagbolum">
                           <div class="populer"><img src="images/populer.jpg" width="100%px" height="100%" />
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
