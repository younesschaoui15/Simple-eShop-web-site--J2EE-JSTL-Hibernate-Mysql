<%@ include file="/WEB-INF/extra/p_meta.jsp" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="utf-8">
	<link rel="shortcut icon" href="http://younesschaoui.html-5.me/images/image/logo2.png" />    
	<title>E-Shop</title>
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link href="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.0/css/bootstrap.min.css" rel="stylesheet">
    
	<style type="text/css">
		.top-bar{background-color:black;min-height:40px;padding-top:5px;padding-bottom: 0px;}
		.top-bar .nav-text {
			color: #00BCD4;
			display: block;
			margin-top: 5px;
		}
		.top-bar .social{color:#FFF;display:inline-block;padding:5px;text-decoration: none;}

		.top-bar .tools{margin:0px;padding:0px;list-style-type:none;}
		.top-bar .tools li{list-style-type: none;display:inline-block;}
		.top-bar .tools li a {
			display: block;
			text-decoration: none;
			color: #fff;
			padding-left: 15px;
			padding-top: 5px;
		}

		.navbar-brand {
			/* float: left; */
			height: 50px;
			padding: 3px 15px;
			font-size: 18px;
			line-height: 20px;
			position: absolute;
			z-index: 11;
			margin: 0 auto;
			right: 42%;
		}


		.navbar-inverse {
			background-color: #009688;
			border-color: #080808;
		}

		.navbar {
			position: relative;
			min-height: 50px;
			margin-bottom: 0px;
			border: 0px solid #000;;
			border-radius:0px;
		   box-shadow: 0 4px 8px 0 rgba(0, 0, 0, 0.2), 0 6px 20px 0 rgba(0, 0, 0, 0.19);
		}

		.navbar-inverse .navbar-nav > li > a {
			color: #fff;
		}
		.nav > li > a {
			position: relative;
			display: block;
			padding: 15px 11px;}

		.form-control{
			border-color:#fff;
			border-radius:0px;
			background-color:transparent;
		}

		.btn-default-1 {
			color: #fff;
			background-color: transparent;
			border-color: #fff;
			border-radius: 0px;
		}

		.cart-heart a{display:inline-block;color:#fff;font-size:20px;padding:5px;}

		/*CROUSELE START///////////////////////////*/

		.carousel-caption {
			position: absolute;
			right: 15%;
			bottom: 35px;
			width: 60%;
			left: 15%;
			z-index: 10;
			padding-top: 20px;
			padding-bottom: 20px;
			color: #fff;
			text-align: left;
			text-shadow: 0 1px 2px rgba(0, 0, 0, .6);
		}

		@media screen and (min-width:768px){
			.carousel-caption h3{font-size: 52px;} 
			.carousel-caption p{font-size: 32px;} 
			.carousel-caption{padding-bottom:160px;}
		}


		/*FOOTER START///////////////////*/

		.footer {
			padding: 50px 0 20px 0;
			background-color: #35404f;
			color: #878c94;
		}
		.footer .title{text-align: left;color:#fff;font-size:25px;}


		.footer .social-icon{padding:0px;margin:0px;}
		.footer .social-icon a{display:inline-block;color:#fff;font-size:25px;padding:5px;}
		.footer .acount-icon a{display:block;color:#fff;font-size:18px;padding:5px;text-decoration:none;}
		.footer .acount-icon .fa{margin-right:25px;}


		.footer .category a {
			text-decoration: none;
			color: #fff;
			display: inline-block;
			padding: 5px 20px;
			margin: 1px;
			border-radius:4px;
			margin-top: 6px;
			background-color: black;
			border: solid 1px #fff;
		}

		.footer .payment{margin:0px;padding:0px;list-style-type:none}
		.footer .payment li{list-style-type:none}
		.footer .payment li a {
			text-decoration: none;
			display: inline-block;
			color: #fff;
			float: left;
			font-size: 25px;
			padding: 10px 10px;
		}
    </style>
    <script src="http://code.jquery.com/jquery-1.11.1.min.js"></script>
    <script src="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.0/js/bootstrap.min.js"></script>
	<title>Trial</title> 
	<link href="https://fonts.googleapis.com/icon?family=Material+Icons" rel="stylesheet">
	<link href="css/bootstrap.css" rel="stylesheet" type="text/css">
	<link href="css/font-awesome.css" rel="stylesheet" type="text/css">
	<link href="css/style.css" rel="stylesheet" type="text/css">
	<script src="https://use.fontawesome.com/07b0ce5d10.js"></script>
</head>

<body>
    <c:if test="${empty sessionScope.client}">
      <%@ include file="/WEB-INF/extra/p_header1_1.jsp" %>
    </c:if>
    <c:if test="${not empty sessionScope.client}">
      <%@ include file="/WEB-INF/extra/p_header_1.jsp" %>
    </c:if>

<!--====================== NAVBAR MENU START===================-->
<!--  <nav class="navbar navbar-inverse" height="50px"> -->
<!--   <div class="container"> -->
<%-- 	<c:if test="${not empty msgDeconnection}"> --%>
<%--     	<c:out value="${msgDeconnection}"/> --%>
<%-- 	</c:if> --%>
<!--   </div> -->
<!-- </nav> -->

<!--=================CAROUSELE START====================--> 
  <div id="myCarousel" class="carousel slide" data-ride="carousel">
	  <!-- Indicators -->
	  <ol class="carousel-indicators">
	    <li data-target="#myCarousel" data-slide-to="0" class="active"></li>
	    <li data-target="#myCarousel" data-slide-to="1"></li>
	    
	  </ol>

  <!-- Wrapper for slides -->
  <div class="carousel-inner" role="listbox">
    <div class="item active">
       <img src="http://younesschaoui.html-5.me/images/image/imgSilder2-min.jpg" width="1366px" height="700px">
      <div class="carousel-caption hidden-xs">
        <h3>Nouvelles collections..</h3>
        <p>Nouveaux articles<br> de toutes les marques.</p>
          <a href="<c:url value="/con_store"></c:url>" >
          	<button class="btn btn-danger">VOIR NOS ARTICLES DANS LE STORE.</button>
          </a>
      </div>
    </div>
    <div class="item">
       <img src="http://younesschaoui.html-5.me/images/image/imgSilder1-min.jpg" width="1366px" height="700px">
      <div class="carousel-caption hidden-xs">
        <h3>Bon endroit ..</h3>
        <p>Pour les bons prix</p>
          <a href="<c:url value="/con_store"></c:url>" > 
          	<button class="btn btn-danger">VOIR NOS ARTICLES DANS LE STORE.</button>
          </a>
      </div>
    </div>
  </div>

  <!-- Left and right controls -->
  <a class="left carousel-control" href="#myCarousel" role="button" data-slide="prev">
    <span class="glyphicon glyphicon-chevron-left" aria-hidden="true"></span>
    <span class="sr-only">Previous</span>
  </a>
  <a class="right carousel-control" href="#myCarousel" role="button" data-slide="next">
    <span class="glyphicon glyphicon-chevron-right" aria-hidden="true"></span>
    <span class="sr-only">Next</span>
  </a>
</div>
    
    
    
<!--   FOOTER  -->
    
   <%@ include file="/WEB-INF/extra/p_footer2.jsp" %> 	

</body>
</html>