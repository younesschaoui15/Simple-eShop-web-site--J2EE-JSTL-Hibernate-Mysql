<%@ include file="/WEB-INF/extra/p_meta.jsp" %>
<header>
	<c:if test="${ not empty sessionScope.client }">
        Utilisateur:  <c:out value="${ sessionScope.client.prenom }"/> <c:out value="${ sessionScope.client.nom }"/> <br/>
    </c:if>
    
    <a href="<c:url value="/con_index"></c:url>"         	   >Home</a>
	<a href="<c:url value="/con_authentification"></c:url>"    >Connexion</a>
</header>