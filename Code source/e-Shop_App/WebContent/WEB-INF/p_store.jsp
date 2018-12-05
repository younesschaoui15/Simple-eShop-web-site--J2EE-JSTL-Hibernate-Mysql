<%@ include file="/WEB-INF/extra/p_meta.jsp" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<link rel="shortcut icon" href="images/icon/icon.jpg" />
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>E-shop</title>
</head>
<body>
	<%@ include file="/WEB-INF/extra/p_header.jsp" %></br>
	
	<c:if test="${empty sessionScope.client}">
       <c:redirect url="con_authentification"/>  
    </c:if>
	<c:if test="${!empty msg }">
    	<c:out value="${msg}"/>
	</c:if>
	
	 <table border="1"> 
     <tr> 
	     <td>Code</td> 
	     <td>Designation</td> 
	     <td>Prix</td> 
	     <td>Quantité</td>
      </tr> 
      <c:if test="${empty listeArticles }">
    	<tr> 
			<td colspan="4">La table des articles est vide.</td> 
	      </tr>
	  </c:if>
	  <c:if test="${!empty listeArticles }">
    	<c:forEach var="article" items="${listeArticles}">
		      <tr> 
				<td>${article.code}</td> 
				<td>${article.designation}</td> 
				<td>${article.prix}</td> 
				<td>${article.quantite}</td> 
				<td>
					<a href="<c:url value="/con_article"> 
								<c:param name="codeArticle" value="${article.code}" />
								<c:param name="action" value="voir" />
							</c:url>">
<%--                             <img src="<c:url value="/inc/supprimer.png"/>" alt="Supprimer" /> --%>
						Voir l'article
                    </a>
				</td> 
		      </tr> 
	    </c:forEach>
	  </c:if>
 
    </table>  
	

	<br/><br/><%@ include file="/WEB-INF/extra/p_footer.jsp" %>
</body>
</html>