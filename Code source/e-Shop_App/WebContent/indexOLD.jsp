<%@ include file="/WEB-INF/extra/p_meta.jsp" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<link rel="shortcut icon" href="images/icon/icon.jpg" />
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
	
<title>E-shop</title>
</head>
<body>
	<c:if test="${empty sessionScope.client}">
      <%@ include file="/WEB-INF/extra/p_header1.jsp" %><br/>
    </c:if>
    <c:if test="${not empty sessionScope.client}">
      <%@ include file="/WEB-INF/extra/p_header.jsp" %><br/>
    </c:if>
	
    
	<c:if test="${not empty msgDeconnection}">
    	<c:out value="${msgDeconnection}"/>
	</c:if>

	
	<br/>
<%-- 	1: <%= request.getServletContext().getRealPath("/") %><br/> --%>
<%-- 	2: <c:out value="${root }" /><br/> --%>
<%-- 	3:<c:out value="${root}images\articles\2.jpg" /> --%>
	<br/><h1>index</h1>
    <img src="${root}img.png" width="200" height="100"/>
    <img src="<c:url value="${root}images\articles\12.jpg" />" width="200" height="100"/>
    <img src="${root}images\articles\27.jpg" width="200" height="100"/>
    <img src="images\articles\2.jpg" width="200" height="100"/>
    
    <%@ include file="/WEB-INF/extra/p_footer.jsp" %>  	
</body>
</html>