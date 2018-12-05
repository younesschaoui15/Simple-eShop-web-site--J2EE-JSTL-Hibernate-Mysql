<%@ include file="/WEB-INF/extra/p_meta.jsp" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<link rel="shortcut icon" href="images/icon/icon.jpg" />
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>E-shop (Mon panier)</title>
</head>
<body>
	<%@ include file="/WEB-INF/extra/p_header.jsp" %><br/>
	
	<c:if test="${empty sessionScope.client}">
       <c:redirect url="/con_authentification"/>  
    </c:if>
	
<!-- 	Si la commande est bien passée! -->
	<c:if test="${!empty msg1 }">
    	<h4> ${msg1} </h4>
    </c:if>
    
	 <table border="1"> 
     <tr> 
	     <td>Code d'article</td> 
	     <td>Designation</td> 
	     <td>Prix unitaire</td> 
	     <td>Quantité commandée</td>
      </tr> 
      
      <c:if test="${empty panier }">
    	<tr><td colspan="4">Le panier est vide.</td></tr>
	  </c:if>
	  <c:if test="${!empty panier }">
    	<c:forEach var="art_qtt" items="${panier}">
    		
		      <tr> 
				<td>${art_qtt.key.code}</td>
				<td>${art_qtt.key.designation}</td> 
				<td>${art_qtt.key.prix}</td> 
                <td>${art_qtt.value}</td>
				<td>
					<a href="<c:url value="/con_panier">
								<c:param name="action" value="supprimer" />
								<c:param name="codeArticle" value="${art_qtt.key.code}" />
							</c:url>">
<%--                             <img src="<c:url value="/inc/supprimer.png"/>" alt="Supprimer" /> --%>
						Supprimer
                    </a>
				</td> 
		      </tr> 
	    </c:forEach>
	  </c:if>
 
    </table><br/>
    
    <c:if test="${not empty panier and not empty montantHT }">
    	<h4> Le montant HT: ${montantHT} DH</h4>
		<a href="<c:url value="/con_commande"> <c:param name="action" value="valider" /> </c:url>"> Passer la commande. </a><br/>
		<a href="<c:url value="/con_panier"> <c:param name="action" value="vider" /> </c:url>"> Vider le panier. </a><br/>
	</c:if>	
	
	<br/><br/><%@ include file="/WEB-INF/extra/p_footer.jsp" %>
</body>
</html>