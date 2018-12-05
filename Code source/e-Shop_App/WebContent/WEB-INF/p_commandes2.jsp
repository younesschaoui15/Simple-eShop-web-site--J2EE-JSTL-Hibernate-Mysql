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

<title>E-shop (Mes commandes)</title>
</head>

<body>
	<%@ include file="/WEB-INF/extra/p_header_1.jsp" %></br>
	
	<c:if test="${empty sessionScope.client}">
       <c:redirect url="/con_authentification"/>  
    </c:if>
    
	<div class="container" >
    <div class="row">
        <div class="col-sm-12 col-md-10 col-md-offset-1">
            <table class="table table-hover">
                <thead>
                    <tr>
                        <th style="color: #3A72A1;"><strong>Numéro</strong></th>
                        <th style="color: #3A72A1;"><strong>Date</strong></th>
                        <th class="text-center" style="color: #3A72A1;"><strong>Montant</strong></th>
                        <th> </th>
                    </tr>
                </thead>
              <c:if test="${empty mesCmd }">
		    	<tr> 
					<td colspan="4">
						<div class="alert alert-warning alert-dismissable" style="margin: 20px;">
						    <a href="#" class="close" data-dismiss="alert" aria-label="close">&times;</a>
						    Vous n'avez pas de commandes pour l'instant.
						  </div>
					</td> 
			      </tr>
			  </c:if>
              <tbody>
            <c:if test="${not empty mesCmd }">
                <c:forEach var="cmd" items="${mesCmd}">
                    <tr>
                        <td class="col-sm-8 col-md-6">
                            <h5 class="media-heading">${cmd.code}</h5>
						</td>
                        <td class="col-sm-2 col-md-2">
							${cmd.date}
                        </td>
                        <td class="col-sm-2 col-md-2 text-center">
							<strong>${cmd.montant}</strong>
						</td>
                        <td class="col-sm-1 col-md-1 pull-center">
                        	<a href="<c:url value="/con_commande"> 
										<c:param name="codeCommande" value="${cmd.code}" />
										<c:param name="action" value="voir" />
									</c:url>">
								<button type="button" class="btn btn-info">
									<span class="glyphicon glyphicon-eye-open"></span> Voir la commande
								</button>
			                </a>
							
						</td>
                    </tr>
                 </c:forEach>
              </c:if>
                    <tr>
                        <td>   
                        	<a href="<c:url value="/con_store"></c:url>">
								<button type="button" class="btn btn-default">
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