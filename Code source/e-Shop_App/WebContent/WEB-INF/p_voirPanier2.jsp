<%@ include file="/WEB-INF/extra/p_meta.jsp" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
	<link rel="shortcut icon" href="http://younesschaoui.html-5.me/images/image/logo2.png" />    
	<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
	<meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
<!--     <link href="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.0/css/bootstrap.min.css" rel="stylesheet"> -->
    <link href="http://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" rel="stylesheet">	
    
	<style type="text/css">
.quantity {
    float: left;
    margin-right: 15px;
    background-color: #eee;
    position: relative;
    width: 80px;
    overflow: hidden
}

.quantity input {
    margin: 0;
    text-align: center;
    width: 15px;
    height: 15px;
    padding: 0;
    float: right;
    color: #000;
    font-size: 20px;
    border: 0;
    outline: 0;
    background-color: #F6F6F6
}

.quantity input.qty {
    position: relative;
    border: 0;
    width: 100%;
    height: 40px;
    padding: 10px 25px 10px 10px;
    text-align: center;
    font-weight: 400;
    font-size: 15px;
    border-radius: 0;
    background-clip: padding-box
}

.quantity .minus, .quantity .plus {
    line-height: 0;
    background-clip: padding-box;
    -webkit-border-radius: 0;
    -moz-border-radius: 0;
    border-radius: 0;
    -webkit-background-size: 6px 30px;
    -moz-background-size: 6px 30px;
    color: #bbb;
    font-size: 20px;
    position: absolute;
    height: 50%;
    border: 0;
    right: 0;
    padding: 0;
    width: 25px;
    z-index: 3
}

.quantity .minus:hover, .quantity .plus:hover {
    background-color: #dad8da
}

.quantity .minus {
    bottom: 0
}
.shopping-cart {
    margin-top: 20px;
}
    </style>
    <script src="http://code.jquery.com/jquery-1.11.1.min.js"></script>
<!--     <script src="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.0/js/bootstrap.min.js"></script> -->
    <script src="http://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js"></script>

	<title>E-shop (Mon panier)</title>
</head>
<body>
	<%@ include file="/WEB-INF/extra/p_header_1.jsp" %></br>
	
	<c:if test="${empty sessionScope.client}">
       <c:redirect url="/con_authentification"/>  
    </c:if>
    
<script src="https://use.fontawesome.com/c560c025cf.js"></script>
<div class="container">
   <div class="card shopping-cart">
            <div class="card-header bg-dark text-light">
                <i class="fa fa-shopping-cart" aria-hidden="true"></i>
                	Mon panier
                <a href="<c:url value="/con_store"></c:url>" class="btn btn-outline-info btn-sm pull-right">
                	Continuer mes achats
                </a>
                <div class="clearfix"></div>
            </div>
            
 <!-- 	Si la commande est bien passée! -->
	<c:if test="${not empty msg1 }">
	   	<div class="alert alert-success alert-dismissable" style="margin: 20px;" >
		    <a href="#" class="close" data-dismiss="alert" aria-label="close">&times;</a>
		    ${msg1}
		  </div>
	 </c:if>
	 <c:if test="${empty panier and empty msg1}">
    	<div class="alert alert-warning alert-dismissable" style="margin: 20px;">
		    <a href="#" class="close" data-dismiss="alert" aria-label="close">&times;</a>
		    Votre panier est vide pour l'instant.
		  </div>
	  </c:if>
	  
	  <c:if test="${not empty panier }">
            <div class="card-body">
					<div class="row">
                        <div class="col-12 col-sm-12 col-md-2 text-center">
                                
                        </div>
                        <div class="col-12 text-sm-center col-sm-12 text-md-left col-md-6">
                            <h5>Designation</h5>
                        </div>
                        <div class="col-12 col-sm-12 text-sm-center col-md-4 text-md-right row">
                            <div class="col-3 col-sm-3 col-md-6 text-md-right" style="padding-top: 5px">
                                <h5>Prix unitaire</h5>
                            </div>
                            <div class="col-4 col-sm-4 col-md-4">
                                <h5>Quantite</h5>
                            </div>
                            <div class="col-2 col-sm-2 col-md-2 text-right">
                            </div>
                        </div>
                    </div>
                    <hr>
				
				<c:forEach var="art_qtt" items="${panier}">
                    <!-- PRODUCT -->
                    <div class="row">
                        <div class="col-12 col-sm-12 col-md-2 text-center">
                                <img class="img-responsive" src="http://younesschaoui.html-5.me/images/articles/${art_qtt.key.code}-min.jpg" width="120" height="80">
                        </div>
                        <div class="col-12 text-sm-center col-sm-12 text-md-left col-md-6">
                            <h5><small>${fn:substring(art_qtt.key.designation, 0, 30)}...</small></h5>
                        </div>
                        <div class="col-12 col-sm-12 text-sm-center col-md-4 text-md-right row">
                            <div class="col-3 col-sm-3 col-md-6 text-md-right" style="padding-top: 5px">
                                <h6>${art_qtt.key.prix}</h6>
                            </div>
                            <div class="col-4 col-sm-4 col-md-4">
                                <div class="quantity" style="padding: 7px 7px 7px 7px;">
                                    <center>${art_qtt.value}</center>
                                </div>
                            </div>
                            <div class="col-2 col-sm-2 col-md-2 text-right">
                                <a href="<c:url value="/con_panier">
											<c:param name="action" value="supprimer" />
											<c:param name="codeArticle" value="${art_qtt.key.code}" />
										</c:url>">
									<button type="button" class="btn btn-outline-danger btn-xs">
	                                    <i class="fa fa-trash" aria-hidden="true"></i>
	                                </button>
                                </a>
                            </div>
                        </div>
                    </div>
                    <hr>
                    <!-- END PRODUCT -->
                </c:forEach>
                
            </div>
          <c:if test="${not empty panier and not empty montantHT }">
            <div class="card-footer">
                <div class="pull-left" >
                    <a href="<c:url value="/con_commande"> <c:param name="action" value="valider" /> </c:url>" class="btn btn-success pull-left">Passer la commande</a>
                    <div class="pull-right" style="margin: 15px">
                        Le montant HT: <b>${montantHT} DH</b>
                    </div>
                </div>
				<div class="pull-right">
                    <a href="<c:url value="/con_panier"> <c:param name="action" value="vider" /> </c:url>" class="btn btn-danger pull-right">
                        Vider la panier
                    </a>
                </div>
            </div>
          </c:if>
       </c:if>
        </div>
</div>
		

	
	
	
	<br/><br/><%@ include file="/WEB-INF/extra/p_footer2.jsp" %>
</body>
</html>