<%@ include file="/WEB-INF/extra/p_meta.jsp" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
	<link rel="shortcut icon" href="http://younesschaoui.html-5.me/images/image/logo2.png" />    
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<meta charset="utf-8">
    <title>Store</title>
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link href="https://fonts.googleapis.com/icon?family=Material+Icons" rel="stylesheet">
    <link href="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.0/css/bootstrap.min.css" rel="stylesheet">
    <style type="text/css">
body {
    background: #f1f1f1;
}

.product-item {
    padding: 15px;
    background: #fff;
    margin-top: 20px;
    position: relative;
}
.product-item:hover {
    box-shadow: 5px 5px rgba(234, 234, 234, 0.9);
}
.product-item:after {
    content: ".";
    display: block;
    height: 0;
    clear: both;
    visibility: hidden;
    font-size: 0;
    line-height:0;
}
.sticker {
    position: absolute;
    top: 0;
    left: 0;
    width: 63px;
    height: 63px;
}
.sticker-new {
    background: url(http://keenthemes.com/assets/bootsnipp/new.png) no-repeat;
    left: auto;
    right: 0;
}
.pi-img-wrapper {
    position: relative;
}
.pi-img-wrapper div {
    background: rgba(0,0,0,0.3);
    position: absolute;
    left: 0;
    top: 0;
    display: none;
    width: 100%;
    height: 100%;
    text-align: center;
}
.product-item:hover>.pi-img-wrapper>div {
    display: block;
}
.pi-img-wrapper div .btn {
    padding: 3px 10px;
    color: #fff;
    border: 1px #fff solid;
    margin: -13px 5px 0;
    background: transparent;
    text-transform: uppercase;
    position: relative;
    top: 50%;
    line-height: 1.4;
    font-size: 12px;
}
.product-item .btn:hover {
    background: #e84d1c;
    border-color: #c8c8c8;
}

.product-item h3 {
    font-size: 14px;
    font-weight: 300;
    padding-bottom: 4px;
    text-transform: uppercase;
}
.product-item h3 a {
    color: #3e4d5c;
}
.product-item h3 a:hover {
    color: #E02222;
}
.pi-price {
    color: #e84d1c;
    font-size: 18px;
    float: left;
    padding-top: 1px;
}
.product-item .add2cart {
    float: right;
    color: #a8aeb3;
    border: 1px #ededed solid;
    padding: 3px 6px;
    text-transform: uppercase;
}
        .product-item .add2cart:hover {
            color: #fff;
            background: #e84d1c;
            border-color: #e84d1c;
        }
    </style>
    <script src="http://code.jquery.com/jquery-1.11.1.min.js"></script>
    <script src="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.0/js/bootstrap.min.js"></script>
</head>
<body>
	<%@ include file="/WEB-INF/extra/p_header_1.jsp" %></br>
	
	<c:if test="${empty sessionScope.client}">
       <c:redirect url="con_authentification"/>  
    </c:if>
	<c:if test="${not empty msg }">
    	<div class="alert alert-success" role="alert" style="margin-left: 60px; margin-right:60px;">
		  	  BIENVENUE Mr/Mme <strong>${sessionScope.client.prenom} ${sessionScope.client.nom}</strong> dans votre espace e-shop.
			  <button type="button" class="close" data-dismiss="alert" aria-label="Close">
			    <span aria-hidden="true">&times;</span>
			  </button>
		</div>
	</c:if>
	
<div class="container">
    <div class="row">
    
    <c:if test="${empty listeArticles }">
		<div class="alert alert-warning alert-dismissable">
		    <a href="#" class="close" data-dismiss="alert" aria-label="close">&times;</a>
		    <strong>Dommage!</strong> Notre store est vide pour l'instant.
		  </div>		  
	  </c:if>
	  <c:if test="${!empty listeArticles }">
	  <c:forEach var="article" items="${listeArticles}">
<!--         <div class="col-md-4" style="height: 410px; margin-bottom: 20px;"> -->
        <div class="col-md-4">
            <div class="product-item">
              <div class="pi-img-wrapper">
                <img src="http://younesschaoui.html-5.me/images/articles/${article.code}-min.jpg" class="img-responsive" style="height: 300px;"/>
                <div>
                  <a href="<c:url value="/con_article"> 
								<c:param name="codeArticle" value="${article.code}" />
								<c:param name="action" value="voir" />
							</c:url>" class="btn">Voir l'article</a>
                </div>
              </div>
              <h3>${fn:substring(article.designation, 0, 30)}...</h3>
              <span class="glyphicon glyphicon-tags" aria-hidden="true"> ${article.quantite} en stock. </span>
              <h5></h5>
              <div class="pi-price">${article.prix} DH</div>
              <a class="btn add2cart" href="<c:url value="/con_article"> 
								<c:param name="codeArticle" value="${article.code}" />
								<c:param name="action" value="voir" />
							</c:url>">
			     Voir l'article
              </a>
            </div>
        </div>
     </c:forEach>
     </c:if>
    </div>
</div>
	
	
	

	<br/><%@ include file="/WEB-INF/extra/p_footer2.jsp" %>
</body>
</html>