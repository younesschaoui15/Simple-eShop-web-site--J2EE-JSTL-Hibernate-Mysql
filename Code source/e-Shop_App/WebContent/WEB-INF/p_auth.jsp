<%@ include file="/WEB-INF/extra/p_meta.jsp" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<link rel="shortcut icon" href="images/icon/icon.jpg" />
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>E-shop</title>
</head>
<body>
	
	<%@ include file="/WEB-INF/extra/p_header1.jsp" %><br/>
	
	<br/><c:if test="${not empty messageAuth }">
    	<c:out value="${messageAuth}"/>
	</c:if>
	 
	<form method="post" action="con_authentification">
		Nom d'utilisateur: <input type="text" name="username" required/> </br>
		Mot de passe: <input type="password" name="password" required/> </br>
		<input type="submit" name="auth" value="S'authentifier"/>
		<a href="p_enregistrer.jsp">S'enregistrer</a>
	</form>
<!-- 	<form method="post" action="con_enregistement"> -->
<!-- 		<input type="submit" name="demande_enrg" value="S'enregistrer"/> -->
<!-- 	</form> -->

  <br/><br/>
<%--   <jsp:include page="/WEB-INF/extra/p_footer.jsp" /> --%>
  	<%@ include file="/WEB-INF/extra/p_footer.jsp" %>
</body>
</html>