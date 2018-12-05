<%@ include file="/WEB-INF/extra/p_meta.jsp" %>
<header>
	<c:if test="${ !empty sessionScope.client }">
        Utilisateur:  <c:out value="${ sessionScope.client.prenom }"/> <c:out value="${ sessionScope.client.nom }"/> <br/>
    </c:if>
    
	<a href="<c:url value="/con_index"></c:url>"         >Home</a>
	<a href="<c:url value="/con_store"></c:url>"         >Store</a>
	<a href="<c:url value="/con_commande"></c:url>"      >Mes commandes</a>
	<a href="<c:url value="/con_panier"></c:url>"        >Mon panier
													(<c:out value="${ fn:length(sessionScope.cmdArticles) }"/>)</a>
	<a href="<c:url value="/con_deconnection"></c:url>"  >Déconnecter</a>
</header>