<%@ Page Language="C#" AutoEventWireup="true" CodeFile="ara.aspx.cs" Inherits="ara" %>

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
               <div class="logo"><a href="anasayfa.aspx"><img src="images/logo1.png" width="80%" height="80%" /> </a>
                   
               </div>
               <nav>
                   <ul>
                       <li>
                         <a href="anasayfa.aspx"> ANASAYFA </a>  
                       </li>
                 
                   </ul>
                   <ul>
                       <li>
                           <a href="haberler.aspx"> HABERLER </a>
                          
                       </li>
                   </ul> <ul>
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

        <div class="ort-göster">
 <asp:Repeater ID="Repeater1" runat="server">
            <ItemTemplate>
                <%#Eval("ebaslik") %>
                <br />  
                
                 
                <%#Eval("ekonu") %> 
                <br /><br />
            </ItemTemplate>
        </asp:Repeater>
        </div>
        
           
       
                                                   </div>

    </form>

</body>
</html>
