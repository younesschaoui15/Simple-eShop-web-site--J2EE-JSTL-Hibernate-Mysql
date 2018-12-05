<%@ include file="/WEB-INF/extra/p_meta.jsp" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<link rel="shortcut icon" href="images/icon/icon.jpg" />
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>S'enregistrer</title>
</head>
<body>
	
	<%@ include file="/WEB-INF/extra/p_header1.jsp" %><br/>
	
	<br/>
	<c:if test="${not empty message }">
    	<c:out value="${message}"/>
	</c:if>
	
	<form method="post" action="con_enregistement">
		Nom d'utilisateur: <input type="text" name="username"/> </br>
		Mot de passe: <input type="password" name="password"/> </br>
		Nom: <input type="text" name="nom"/> </br>
		Prénom: <input type="text" name="prenom"/> </br>
		Ville: <input type="text" name="ville"/> </br>
		Adresse: <input type="text" name="adresse"/> </br>
		<input type="submit" name="valider_enrg" value="Valider mes informations"/>
	</form>
	
	<br/><br/><%@ include file="/WEB-INF/extra/p_footer.jsp" %>
</body>
</html>