<%@ include file="/WEB-INF/extra/p_meta.jsp" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
	<link rel="shortcut icon" href="http://younesschaoui.html-5.me/images/image/logo2.png" />    
	<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
	<script src="https://code.jquery.com/jquery-1.10.2.js"></script>
	<meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link href="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.0/css/bootstrap.min.css" rel="stylesheet">
    
    <style type="text/css">
/*****************globals*************/
body {
  font-family: 'open sans';
  overflow-x: hidden; }

img {
  max-width: 100%; }

.preview {
  display: -webkit-box;
  display: -webkit-flex;
  display: -ms-flexbox;
  display: flex;
  -webkit-box-orient: vertical;
  -webkit-box-direction: normal;
  -webkit-flex-direction: column;
      -ms-flex-direction: column;
          flex-direction: column; }
  @media screen and (max-width: 996px) {
    .preview {
      margin-bottom: 20px; } }

.preview-pic {
  -webkit-box-flex: 1;
  -webkit-flex-grow: 1;
      -ms-flex-positive: 1;
          flex-grow: 1; }

.preview-thumbnail.nav-tabs {
  border: none;
  margin-top: 15px; }
  .preview-thumbnail.nav-tabs li {
    width: 18%;
    margin-right: 2.5%; }
    .preview-thumbnail.nav-tabs li img {
      max-width: 100%;
      display: block; }
    .preview-thumbnail.nav-tabs li a {
      padding: 0;
      margin: 0; }
    .preview-thumbnail.nav-tabs li:last-of-type {
      margin-right: 0; }

.tab-content {
  overflow: hidden; }
  .tab-content img {
    width: 100%;
    -webkit-animation-name: opacity;
            animation-name: opacity;
    -webkit-animation-duration: .3s;
            animation-duration: .3s; }

.card {
  margin-top: 50px;
  background: #eee;
  padding: 3em;
  line-height: 1.5em; }

@media screen and (min-width: 997px) {
  .wrapper {
    display: -webkit-box;
    display: -webkit-flex;
    display: -ms-flexbox;
    display: flex; } }

.details {
  display: -webkit-box;
  display: -webkit-flex;
  display: -ms-flexbox;
  display: flex;
  -webkit-box-orient: vertical;
  -webkit-box-direction: normal;
  -webkit-flex-direction: column;
      -ms-flex-direction: column;
          flex-direction: column; }

.colors {
  -webkit-box-flex: 1;
  -webkit-flex-grow: 1;
      -ms-flex-positive: 1;
          flex-grow: 1; }

.product-title, .price, .sizes, .colors {
  text-transform: UPPERCASE;
  font-weight: bold; }

.checked, .price span {
  color: #ff9f1a; }

.product-title, .rating, .product-description, .price, .vote, .sizes {
  margin-bottom: 15px; }

.product-title {
  margin-top: 0; }

.size {
  margin-right: 10px; }
  .size:first-of-type {
    margin-left: 40px; }

.color {
  display: inline-block;
  vertical-align: middle;
  margin-right: 10px;
  height: 2em;
  width: 2em;
  border-radius: 2px; }
  .color:first-of-type {
    margin-left: 20px; }

.add-to-cart, .like {
  background: #ff9f1a;
  padding: 1.2em 1.5em;
  border: none;
  text-transform: UPPERCASE;
  font-weight: bold;
  color: #fff;
  -webkit-transition: background .3s ease;
          transition: background .3s ease; }
  .add-to-cart:hover, .like:hover {
    background: #b36800;
    color: #fff; }

.not-available {
  text-align: center;
  line-height: 2em; }
  .not-available:before {
    font-family: fontawesome;
    content: "\f00d";
    color: #fff; }

.orange {
  background: #ff9f1a; }

.green {
  background: #85ad00; }

.blue {
  background: #0076ad; }

.tooltip-inner {
  padding: 1.3em; }

@-webkit-keyframes opacity {
  0% {
    opacity: 0;
    -webkit-transform: scale(3);
            transform: scale(3); }
  100% {
    opacity: 1;
    -webkit-transform: scale(1);
            transform: scale(1); } }

@keyframes opacity {
  0% {
    opacity: 0;
    -webkit-transform: scale(3);
            transform: scale(3); }
  100% {
    opacity: 1;
    -webkit-transform: scale(1);
            transform: scale(1); } }

/*# sourceMappingURL=style.css.map */
    </style>
    <script src="http://code.jquery.com/jquery-1.11.1.min.js"></script>
    <script src="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.0/js/bootstrap.min.js"></script>
    <link href="https://maxcdn.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css" rel="stylesheet">
    <link href="https://fonts.googleapis.com/css?family=Open+Sans:400,700" rel="stylesheet">
	<title>E-shop</title>
</head>

<body>
	<%@ include file="/WEB-INF/extra/p_header_1.jsp" %></br>
	
	<c:if test="${empty sessionScope.client}">
       <c:redirect url="/con_authentification"/>  
    </c:if>
	
    <c:if test="${empty article }">
		<div class="alert alert-warning" role="alert" style="margin-left: 60px; margin-right:60px;">
		  	  <strong>L'article n'existe pas.</strong>
			  <button type="button" class="close" data-dismiss="alert" aria-label="Close">
			    <span aria-hidden="true">&times;</span>
			  </button>
		</div>
	  </c:if>
	  
     <c:if test="${!empty article }">  
	  
	 <form method="get" action="con_article" >  
	  
    	<div class="container" style="margin: 0 auto 0 auto; width:90%;">
	   
		<div class="card" style="margin-top: 0px;">
			<div class="container-fliud">
				<div class="wrapper row">
				
					<div class="preview col-md-6">
						<div class="preview-pic tab-content">
						  <div class="tab-pane active" id="pic-1">
							<img src="http://younesschaoui.html-5.me/images/articles/${article.code}-min.jpg" />
						  </div>
						</div>
					</div>
					
					<div class="details col-md-6">
						<h4 class="product-title">Designation</h4>
						<div class="rating">
							<div class="stars">
								<span class="fa fa-star checked"></span>
								<span class="fa fa-star checked"></span>
								<span class="fa fa-star checked"></span>
								<span class="fa fa-star checked"></span>
								<span class="fa fa-star checked"></span>
							</div>
							<span class="review-no">
								<c:if test="${article.quantite == 0}">
				                    <span style="color: red;"><strong>Rupture de stock.</strong></span>
				                </c:if>
				                <c:if test="${article.quantite > 0}">
				                	<span style="color: green;"><strong>En stock</strong> ${article.quantite} disponible.</span> 
				                </c:if>
							</span>
						</div>
						<p class="product-description">${article.designation}</p>
						<h4 class="price">Prix: <span>${article.prix} </span>DH</h4>
						<c:if test="${article.quantite > 0}">
							<h5 class="colors">Quantité: 
								<select id="selectedQtt" name="quantiteCommandee" class="custom-select">
									<c:forEach var = "qtt" begin = "1" end = "${article.quantite}">
										<option value="${qtt}"><c:out value = "${qtt}"/></option>
							      	</c:forEach>
								</select>
							</h5>
						</c:if>
						<div class="action">
							<c:if test="${article.quantite > 0}">
								<input type="hidden" name="codeArticle" value="${article.code}">
								<input type="hidden" name="action" value="ajouterAuPanier">
<!-- 								<i class="fa fa-shopping-cart" style="font-size:20px; margin-right:10px"></i> -->
<!-- 								<input  type="submit" value="Ajouter au panier" class="add-to-cart btn btn-default"> -->
		                    </c:if>
                    
							<button class="add-to-cart btn btn-default" type="submit" >
								<i class="fa fa-shopping-cart" style="font-size:20px; margin-right:10px"></i>  Ajouter au panier
							</button>
						</div>
					</div>
					
				</div>
			</div>
		</div>
	</div>   
	 
	</form>
</c:if>
	
	
	
	<br/><br/><%@ include file="/WEB-INF/extra/p_footer2.jsp" %>
</body>
</html>