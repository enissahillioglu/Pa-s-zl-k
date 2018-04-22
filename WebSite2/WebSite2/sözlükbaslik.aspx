<%@ Page Language="C#" AutoEventWireup="true" CodeFile="sözlükbaslik.aspx.cs" Inherits="sözlükbaslik" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <link href="style.css" rel="stylesheet" />
    <style type="text/css">
        #icerik {
            width: 256px;
            height: 58px;
        }
    </style>
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
               <div class="slogo"><a href="anasayfa.aspx"><img src="images/logo1.png" width="100px" height="50px" /> </a>
               </div>
               <div class="arama" >
                   <asp:TextBox ID="tarama" CssClass="tarama" runat="server" placeholder="arama" />
                   <asp:button ID="btarama" cssClass="btarama" text="ara" runat="server" OnClick="btarama_Click1" />
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
                                            <iframe onscroll="yes" style="width:25%; height:100%; overflow:hidden; border:none;"> khfdkjgsd</iframe>

                 </div>
             </div>
             <div class="ssagbolum">
                 <table width="60%" height="40%">
                     <tr>
                         <td align="right">  <asp:Label ID="skonu" runat="server" Text="Konu başlığı :"></asp:Label></td>
                         <td><asp:TextBox ID="txkonu" runat="server" Width="88%" Height ="30px"></asp:TextBox> </td>
                     </tr>
                     <tr>
                         <td align="right"><asp:Label ID="Konu" runat="server" Text="Konu :"></asp:Label> </td>
                         <td align="center"><asp:DropDownList ID="konular" runat="server" Width="90px" OnLoad="konular_Load" OnSelectedIndexChanged="konular_SelectedIndexChanged"></asp:DropDownList></td>
                     </tr>
                     <tb>
                         <td align="right"><asp:Label ID="kicerik" runat="server" Text="Konu İçeriği :"></asp:Label></td>
                         <td align="center"><textarea id="icerik" runat="server"></textarea></td>
                     </tb>
                     <tr>
                         <td></td>
                         <td><asp:Button ID="btac" runat="server" Text="AÇ" Width="55px" Height="35px" OnClick="btac_Click" /></td>
                     </tr>
                 </table>

             </div>
              <footer>
                              Tüm Hakları Saklıdır 

           </footer>
         </div>
         </div>
    </form>
</body>
</html>
