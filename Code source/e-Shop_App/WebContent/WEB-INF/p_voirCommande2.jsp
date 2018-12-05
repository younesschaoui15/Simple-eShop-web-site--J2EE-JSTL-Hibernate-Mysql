<%@ include file="/WEB-INF/extra/p_meta.jsp" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<link rel="shortcut icon" href="http://younesschaoui.html-5.me/images/image/logo2.png" />    
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<!-- <link href="http://netdna.bootstrapcdn.com/twitter-bootstrap/2.3.2/css/bootstrap-combined.min.css" rel="stylesheet"> -->
<link href="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.0/css/bootstrap.min.css" rel="stylesheet">
<script src="http://code.jquery.com/jquery-1.11.1.min.js"></script>
<!-- <script src="http://netdna.bootstrapcdn.com/twitter-bootstrap/2.3.2/js/bootstrap.min.js"></script> -->
<script src="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.0/js/bootstrap.min.js"></script>
<title>E-shop</title>
</head>

<body>
	<%@ include file="/WEB-INF/extra/p_header_1.jsp" %><br/>
	
	<c:if test="${empty sessionScope.client}">
       <c:redirect url="/con_authentification"/>  
    </c:if>

	<c:if test="${empty commande }">
		<c:redirect url="/con_commande"/>  
	</c:if>
	
<div class="container">
    <div class="row">
        <div class="col-sm-12 col-md-10 col-md-offset-1">
            <table class="table table-hover table-striped">
				<thead>
					<tr>
                        <td style="color: #3A72A1;"><h5 ><span class="glyphicon glyphicon-check"></span> <strong>N° Commande:</strong></h5></td>
                        <td class="text-right" ><h5><strong>${commande.code}</strong></h5></td>
                        <td></td>
                        <td></td>
                        <td></td>
                    </tr>
                    <tr>
                        <td style="color: #3A72A1;"><h5><span class="glyphicon glyphicon-check"></span> <strong>Date Commande:</strong></h5></td>
                        <td class="text-right" ><h5><strong>${commande.date}</strong></h5></td>
                        <td></td>
                        <td></td>
                        <td></td>
                    </tr>
                    <tr>
                        <td style="color: #3A72A1;"><h3><span class="glyphicon glyphicon-usd"></span><strong>Total:</strong></h3></td>
                        <td class="text-right" ><h3><strong>${commande.montant} DH</strong></h3></td>
                        <td></td>
                        <td></td>
                        <td></td>
                    </tr>
				</thead>
                <thead>
                    <tr>
                        <th style="color: #3A72A1;">N° Article</th>
                        <th style="color: #3A72A1;">Designation</th>
                        <th class="text-center" style="color: #3A72A1;">Prix unitaire</th>
                        <th class="text-center" style="color: #3A72A1;">Quantité commandée</th>
                        <th> </th>
                    </tr>
                </thead>
                <tbody>
              <c:if test="${empty commande.cmd_art }">
		    	<tr>
		    		<td colspan="5">
		    			<div class="alert alert-warning alert-dismissable" style="margin: 20px;">
						    <a href="#" class="close" data-dismiss="alert" aria-label="close">&times;</a>
						    La commande est vide.
						  </div>
		    		</td>
		    	</tr>
			  </c:if>
			  
			  <c:if test="${not empty commande.cmd_art }">
		    	<c:forEach var="cmd_art" items="${commande.cmd_art}">
                    <tr>
                        <td class="col-sm-2 col-md-2">
							<h5 class="media-heading"><a href="">${cmd_art.cmd_Art_PK.article.code}</a></h5>
						</td>
                        <td class="col-sm-8 col-md-6" style="text-align: left">
							${fn:substring(cmd_art.cmd_Art_PK.article.designation, 0, 50)}...
                        </td>
                        <td class="col-sm-2 col-md-2 text-center"><strong>${cmd_art.cmd_Art_PK.article.prix}</strong></td>
                        <td class="col-sm-3 col-md-3 text-center">
<%-- 							<input type="text" value="${cmd_art.quantite}"> --%>
							<div style="padding: 7px 7px 7px 7px; background-color: #E9E7E7;">
								<strong>${cmd_art.quantite}</strong>
							</div>
						</td>
                        <td class="col-sm-1 col-md-1">
	                        <a href="<c:url value="/con_article">
									<c:param name="codeArticle" value="${cmd_art.cmd_Art_PK.article.code}" />
	 								<c:param name="action" value="voir" />
								</c:url>">
								<button type="button" class="btn btn-primary">
		                            <span class="glyphicon glyphicon-eye-open"></span> Voir l'article.
		                        </button>
		                    </a>
                        </td>
                    </tr>
                  </c:forEach>
                </c:if>
                <tr>
                        <td>   
                        	<a href="<c:url value="/con_store"></c:url>">
								<button type="button" class="btn btn-info">
									Continuer mes achats <span class="glyphicon glyphicon-play"></span>
								</button>
							</a>
						</td>
                        <td>   </td>
                        <td>   </td>
                        <td>   </td>
                        <td>   </td>
                    </tr>
                </tbody>
            </table>
        </div>
    </div>
</div>
	
	<br/><br/><%@ include file="/WEB-INF/extra/p_footer2.jsp" %>
</body>
</html>