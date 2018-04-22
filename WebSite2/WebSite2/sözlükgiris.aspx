<%@ Page Language="C#" AutoEventWireup="true" CodeFile="sözlükgiris.aspx.cs" Inherits="sözlükgiris" %>

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
                 <table width="40%" height="30%">
                     <tr>
                         <td align="right"><asp:Label ID="lbkul" runat="server" Text="Kulanıcı Adı :"></asp:Label></td>
                         <td><asp:TextBox ID="txkuladi" runat="server"></asp:TextBox></td>
                     </tr>
                     <tr>
                         <td align="right"><asp:Label ID="lbsifre" runat="server" Text="Şifre :"></asp:Label></td>
                         <td><asp:TextBox ID="txsifre" runat="server"></asp:TextBox></td>
                     </tr>
                     <tr>
                         <td></td>
                         <td><asp:Button ID="btgiris" runat="server" Text="GİRİS" Width="50px" Height="25px" OnClick="btgiris_Click" /></td>
                     </tr>
                     <tr>
                         <td></td>
                         <td><asp:Label ID="lbyanlis" runat="server" ></asp:Label></td>
                     </tr>
                 </table>
                  <table width="40%" height="30%">
                     <tr>
                         <td align="right"><asp:Label ID="Lblkuladi" runat="server" Text="Kulanıcı Adı :"></asp:Label></td>
                         <td><asp:TextBox ID="txtkuladi" runat="server"></asp:TextBox></td>
                     </tr>
                     <tr>
                         <td align="right"><asp:Label ID="lblsifre" runat="server" Text="Şifre :"></asp:Label></td>
                         <td><asp:TextBox ID="txtsifre" runat="server"></asp:TextBox></td>
                     </tr>
                      <tr>
                         <td align="right"><asp:Label ID="lblmail" runat="server" Text="Mail :"></asp:Label></td>
                         <td><asp:TextBox ID="txtmail" runat="server"></asp:TextBox></td>
                     </tr>
                     <tr>
                         <td></td>
                         <td><asp:Button ID="btkaydol" runat="server" Text="KAYDOL" Width="50px" Height="25px" OnClick="btkaydol_Click" /></td>
                     </tr>
                      <tr>
                         <td></td>
                         <td><asp:Label ID="lbkyanlis" runat="server" ></asp:Label></td>
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
