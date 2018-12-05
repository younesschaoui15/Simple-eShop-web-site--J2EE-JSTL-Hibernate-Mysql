<%@ include file="/WEB-INF/extra/p_meta.jsp" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<link rel="shortcut icon" href="images/icon/icon.jpg" />
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>E-shop (Mes commandes)</title>
</head>
<body>
	<%@ include file="/WEB-INF/extra/p_header.jsp" %></br>
	
	<c:if test="${empty sessionScope.client}">
       <c:redirect url="/con_authentification"/>  
    </c:if>
	
	
	 <table border="1"> 
     <tr> 
	     <td>Numéro</td>
	     <td>Date</td> 
	     <td>Montant</td> 
      </tr> 
      <c:if test="${empty mesCmd }">
    	<tr> 
			<td colspan="3">Vous n'avez pas de commandes pour l'instant.</td> 
	      </tr>
	  </c:if>
	  <c:if test="${!empty mesCmd }">
	  <c:forEach var="cmd" items="${mesCmd}">
	      <tr> 
			<td>${cmd.code}</td> 
			<td>${cmd.date}</td> 
			<td>${cmd.montant}</td> 
			<td>
				<a href="<c:url value="/con_commande"> 
							<c:param name="codeCommande" value="${cmd.code}" />
							<c:param name="action" value="voir" />
						</c:url>">
<%--                             <img src="<c:url value="/inc/supprimer.png"/>" alt="Supprimer" /> --%>
					Voir la commande
                </a>
			</td> 
	      </tr> 
      </c:forEach>
	  </c:if>
 
    </table>  
	
	<br/><br/><%@ include file="/WEB-INF/extra/p_footer.jsp" %>
</body>
</html>