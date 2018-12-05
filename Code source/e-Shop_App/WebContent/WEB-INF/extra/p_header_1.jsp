<%@ include file="/WEB-INF/extra/p_meta.jsp" %>
<style>

.top-bar{background-color:black;min-height:40px;padding-top:5px;padding-bottom: 0px;}
.top-bar .nav-text {
    color: #00BCD4;
    display: block;
    margin-top: 5px;
}
.top-bar .social{color:#FFF;display:inline-block;padding:5px;text-decoration: none;}

.top-bar .tools{margin:0px;padding:0px;list-style-type:none;}
.top-bar .tools li{list-style-type: none;display:inline-block;}
.top-bar .tools li a {
    display: block;
    text-decoration: none;
    color: #fff;
    padding-left: 15px;
    padding-top: 5px;
}

.navbar-brand {
    /* float: left; */
    height: 50px;
    padding: 3px 15px;
    font-size: 18px;
    line-height: 20px;
    position: absolute;
    z-index: 11;
    margin: 0 auto;
    right: 42%;
}


.navbar-inverse {
    background-color: #009688;
    border-color: #080808;
}

.navbar {
    position: relative;
    min-height: 50px;
    margin-bottom: 0px;
    border: 0px solid #000;;
    border-radius:0px;
   box-shadow: 0 4px 8px 0 rgba(0, 0, 0, 0.2), 0 6px 20px 0 rgba(0, 0, 0, 0.19);
}

.navbar-inverse .navbar-nav > li > a {
    color: #fff;
}
.nav > li > a {
    position: relative;
    display: block;
    padding: 15px 11px;}

.form-control{
    border-color:#fff;
    border-radius:0px;
    background-color:transparent;
}

.btn-default-1 {
    color: #fff;
    background-color: transparent;
    border-color: #fff;
    border-radius: 0px;
}

.cart-heart a{display:inline-block;color:#fff;font-size:20px;padding:5px;}

</style>	

 <nav class="top-bar" style="padding-bottom: 10px;">
     <div class="container">
       <div class="row">
       <div class="col-sm-4 hidden-xs">
		<span class="nav-text">
     	<img src="http://younesschaoui.html-5.me/images/image/logo.png" style="width: 40px; height: 40px; margin-right:15px;"/>                            
               <i class="glyphicon glyphicon-user" aria-hidden="true">
               		<c:if test="${ !empty sessionScope.client }">
				        Utilisateur:  <c:out value="${sessionScope.client.prenom}"/> <c:out value="${sessionScope.client.nom}"/> <br/>
				    </c:if>
               </i>
		</span>
       </div>
       <div class="col-sm-8 text-right hidden-xs" >    
                <a style="margin-right:15px;" href="<c:url value="/con_index"></c:url>">
                	<i class="glyphicon glyphicon-home" aria-hidden="true"></i> Home</a>                  
                <a style="margin-right:15px;" href="<c:url value="/con_store"></c:url>" >
                	<i class="glyphicon glyphicon-barcode" aria-hidden="true"></i> Store</a>                  
                <a style="margin-right:15px;" href="<c:url value="/con_commande"></c:url>"  >
                	<i class="glyphicon glyphicon-gift" aria-hidden="true"></i> Mes commandes</a>                  
                <a style="margin-right:15px;" href="<c:url value="/con_panier"></c:url>">
                	<i class="glyphicon glyphicon-shopping-cart" aria-hidden="true"></i> 
                	 Mon Panier(<c:out value="${ fn:length(sessionScope.cmdArticles) }"/>)</a>                  
                <a style="margin-right:15px;" href="<c:url value="/con_deconnection"></c:url>">
                	<i class="glyphicon  glyphicon-off" aria-hidden="true"></i> Déconnecter</a>                  
             </div>
       </div>
      </div>
    </nav>
