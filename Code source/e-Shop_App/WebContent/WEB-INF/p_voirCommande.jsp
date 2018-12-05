<%@ include file="/WEB-INF/extra/p_meta.jsp" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
	<link rel="shortcut icon" href="http://younesschaoui.html-5.me/images/image/logo2.png" />    
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>E-shop</title>
</head>
<body>
	<%@ include file="/WEB-INF/extra/p_header.jsp" %><br/>
	
	<c:if test="${empty sessionScope.client}">
       <c:redirect url="/con_authentification"/>  
    </c:if>
	
	<c:if test="${!empty commande }">
    	Commande N°: <c:out value="${commande.code}" /> <br/>
    	Date commande: <c:out value="${commande.date}" /><br/>
    	Le montant HT: <c:out value="${commande.montant} " /> DH<br/>
    </c:if>

	 <table border="1"> 
     <tr> 
	     <td>Code d'article</td> 
	     <td>Designation</td> 
	     <td>Prix unitaire</td> 
	     <td>Quantité commandée</td>
      </tr> 
      
      <c:if test="${empty commande.cmd_art }">
    	<tr><td colspan="4">La commande est vide.</td></tr>
	  </c:if>
	  <c:if test="${!empty commande.cmd_art }">
    	<c:forEach var="cmd_art" items="${commande.cmd_art}">
    		
		      <tr> 
				<td>${cmd_art.cmd_Art_PK.article.code}</td>
				<td>${cmd_art.cmd_Art_PK.article.designation}</td> 
				<td>${cmd_art.cmd_Art_PK.article.prix}</td>
				<td>${cmd_art.quantite}</td>
				<td>
					<a href="<c:url value="/con_article">
								<c:param name="codeArticle" value="${cmd_art.cmd_Art_PK.article.code}" />
 								<c:param name="action" value="voir" />
							</c:url>">
<%--                             <img src="<c:url value="/inc/supprimer.png"/>" alt="Supprimer" /> --%>
						Voir l'article
                    </a>
				</td> 
		      </tr> 
	    </c:forEach>
	  </c:if>
 
    </table><br/>

	
	<br/><br/><%@ include file="/WEB-INF/extra/p_footer.jsp" %>
</body>
</html>