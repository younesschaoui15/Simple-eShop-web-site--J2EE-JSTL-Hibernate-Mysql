<%@ include file="/WEB-INF/extra/p_meta.jsp" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<link rel="shortcut icon" href="images/icon/icon.jpg" />
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<script src="https://code.jquery.com/jquery-1.10.2.js"></script>
<title>E-shop</title>
</head>
<body>
	<%@ include file="/WEB-INF/extra/p_header.jsp" %></br>
	
	<c:if test="${empty sessionScope.client}">
       <c:redirect url="/con_authentification"/>  
    </c:if>
	
	<form method="get" action="con_article">
	 <table border="1"> 
     <tr> 
	     <td>Code</td> 
	     <td>Designation</td> 
	     <td>Prix</td> 
	     <td>Status</td>
      </tr> 
      <c:if test="${empty article }">
    	<tr> 
			<td>L'article n'existe pas.</td> 
	      </tr>
	  </c:if>
	  <c:if test="${!empty article }">
		      <tr> 
				<td>${article.code}</td> 
				<td>${article.designation}</td> 
				<td>${article.prix}</td>
				<c:if test="${article.quantite == 0}">
                    <td>Rupture de stock </td>
                </c:if>
                <c:if test="${article.quantite > 0}">
                    <td>
<!-- 						<select id="selectedQtt" name="quantiteCommandee" onmousedown="if(this.options.length>6){this.size=6;}"  onchange='this.size=0;' onblur="this.size=0;"> -->
						<select id="selectedQtt" name="quantiteCommandee">
							<c:forEach var = "qtt" begin = "1" end = "${article.quantite}">
								<option value="${qtt}"><c:out value = "${qtt}"/></option>
<%-- 								 <option value="${month.key}" ${month.key == selectedMonth ? 'selected' : ''}>${month.value}</option> --%>
					      	</c:forEach>
						</select>
						(${article.quantite} disponible)
                    </td>
                </c:if>
				 
				<td>					
					<c:if test="${article.quantite > 0}">
<%-- 					<a href="<c:url value="/con_article">  --%>
<%-- 								<c:param name="codeArticle" value="${article.code}" /> --%>
<%-- 								<c:param name="quantiteCommandee" value="${param.quantite}" /> --%>
<%-- 								<c:param name="action" value="ajouterAuPanier" /> --%>
<%-- 							</c:url>"> --%>
<%--                             <img src="<c:url value="/inc/supprimer.png"/>" alt="Supprimer" /> --%>
<%-- 						Ajouter au panier --%>
						<input type="hidden" name="codeArticle" value="${article.code}">
						<input type="hidden" name="action" value="ajouterAuPanier">
						<input type="submit" value="Ajouter au panier" />
                    </a>
                    </c:if>
				</td> 
		      </tr> 
	  </c:if>
 
    </table>  
	</form>
	
	<br/><br/><%@ include file="/WEB-INF/extra/p_footer.jsp" %>
</body>
</html>