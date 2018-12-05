<%@ include file="/WEB-INF/extra/p_meta.jsp" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
	<link rel="shortcut icon" href="http://younesschaoui.html-5.me/images/image/logo2.png" />    
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link href="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.0/css/bootstrap.min.css" rel="stylesheet">
<style type="text/css">
        @import url(https://fonts.googleapis.com/css?family=Roboto:400,900,700,500,300,100);
@import url(https://fonts.googleapis.com/css?family=Raleway:400,500);
@import url(https://maxcdn.bootstrapcdn.com/font-awesome/4.5.0/css/font-awesome.min.css);
html, body {
    height: 100%;
    width: 100%;
}

body {
    font-family: 'Raleway',sans-serif;
    position: relative;
    /*background: rgba(0, 0, 0, 0) url("../img/ptn.png") repeat scroll 0 0;*/
}

.in-page {
    min-height: 520px;
}

.main {
    position: relative;
}

a {
    color: #1b5a7c;
}

a:hover, a:focus {
    color: #1b5a7c;
}

.btn-cyan {
    background-color: #1b5a7c;
    color: #fff;
}

.btn-cyan:hover {
    color: #fff;
    opacity: 0.9;
}

.form-control:focus {
    border-color: #1b5a7c;
    box-shadow: 0 1px 1px rgba(0, 0, 0, 0.075) inset, 0 0 8px rgba(24, 204, 162, 0.6);
    outline: 0 none;
}

.min-height {
    min-height: 380px;
}

.login-screen {
    background-image: url(http://younesschaoui.html-5.me/images/image/login_bg.jpg);
    background-position: center;
    background-repeat: no-repeat;
    background-attachment: fixed;
    background-size: cover;
    -moz-background-size: cover;
    -webkit-background-size: cover;
    position: fixed;
    top: 0;
    bottom: 0;
    right: 0;
    left: 0;
}

.login-screen:before {
    content: "";
    background: rgba(0,0,0, 0.5);
    position: absolute;
    width: 100%;
    height: 100%;
    top: 0;
    left: 0;
}

.login-center {
    text-align: left;
}

.login {
    width: 320px;
    color: #fff;
}

.login .login-form {
    text-align: left;
}

.login label {
    color: #fff;
}

.login-form .input-group .form-control {
    background: none;
    height: 44px;
    color: #ddd;
}

.login-form .input-group .input-group-addon {
    background: none;
}

.login-form .input-group .input-group-addon .glyphicon {
    color: #1b5a7c;
}

.login-form .input-group .form-control::-moz-placeholder {
    color: #fff;
    opacity: 0.3;
}

.login .sign-btn input.btn {
    background: #1b5a7c;
    border-color: #1b5a7c;
    color: #fff;
    width: 180px;
}

.login .sign-btn a {
    text-decoration: none;
}

.login .checkbox {
    margin-top: 20px;
    margin-bottom: 20px;
}

.login .forgot {
    display: inline-block;
    margin: 20px 0;
}
    </style>
<script src="http://code.jquery.com/jquery-1.11.1.min.js"></script>
<script src="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.0/js/bootstrap.min.js"></script>
<title>E-shop</title>
</head>

<body>
	
	
		
	<div class="login-screen" style="background-image: url(http://younesschaoui.html-5.me/images/image/login_bg.jpg);"></div>
    <%@ include file="/WEB-INF/extra/p_header1_1.jsp" %><br/>
    <div class="login-center">
        <div class="container min-height" style="margin-top: 20px;">
        	<div class="row">
                <div class="col-xs-4 col-md-offset-8">
                    <div class="login" id="card">
                    <div class="front signin_form"> 
                   
					<c:if test="${not empty messageAuth }">
				    	<div class="alert alert-danger alert-dismissable">
  							<a href="#" class="close" data-dismiss="alert" aria-label="close">&times;</a>
						  <strong>Désolé!</strong> Authentification refusée, vérifiez vos informations.
						</div>
					</c:if>
					<c:if test="${not empty message }">
						<div class="alert alert-success alert-dismissable">
  							<a href="#" class="close" data-dismiss="alert" aria-label="close">&times;</a>
						  Compte crée avec succes, <strong>BIENVENUE</strong> dans votre espace e-shop.
						</div>
					</c:if> 
					<c:if test="${not empty message2 }">
						<div class="alert alert-warning alert-dismissable">
  							<a href="#" class="close" data-dismiss="alert" aria-label="close">&times;</a>
						  Compte n'est pas crée. utilisateur existe déjà.
						</div>
					</c:if>
                        <p>Accéder à votre espace e-shop</p>
                          <form method="post" action="con_authentification" class="login-form">
                              <div class="form-group">
                                  <div class="input-group">
                                      <input name="username" type="text" class="form-control" placeholder="Nom d'utilisateur" required>
                                      <span class="input-group-addon">
                                          <i class="glyphicon glyphicon-user"></i>
                                      </span>
                                  </div>
                              </div>
                              <div class="form-group">
                                  <div class="input-group">
                                      <input name="password" type="password" class="form-control" placeholder="Mot de passe" required>
                                      <span class="input-group-addon">
                                          <i class="glyphicon glyphicon-lock"></i>
                                      </span>
                                  </div>
                              </div>
                              
                              <div class="form-group sign-btn">
                                  <input name="auth" type="submit" class="btn" value="S'authentifier">
								  <p></p><p></p>
                                  <p><strong>Nouveau? Créer votre espace.</strong><br>
									<a href="#" id="flip-btn" class="signup signup_link">S'enregistrer</a>
								  </p>
                              </div>
                          </form>
                        </div>
                        
<!--    ----------------------  ENREGISTREMENT ------------------------ -->
                        <div class="back signup_form" style="opacity: 0;">
                        	
                          <p>Nouveau compte pour votre espace e-shop.</p>
                          <form method="post" action="con_enregistement" class="login-form">
                              <div class="form-group">
                                  <div class="input-group">
                                      <input name="username" type="text" class="form-control" placeholder="Nom d'utilisateur"required>
                                      <span class="input-group-addon">
                                          <i class="glyphicon glyphicon-user"></i>
                                      </span>
                                  </div>
                              </div>
                              <div class="form-group">
                                  <div class="input-group">
                                      <input name="password" type="password" class="form-control" placeholder="Mot de passe" required>
                                      <span class="input-group-addon">
                                          <i class="glyphicon glyphicon-lock"></i>
                                      </span>
                                  </div>
                              </div>
							  <div class="form-group">
                                  <div class="input-group">
                                      <input name="prenom" type="text" class="form-control" placeholder="Prénom"required>
                                      <span class="input-group-addon">
                                          <i class="glyphicon glyphicon-user"></i>
                                      </span>
                                  </div>
                              </div>
                              <div class="form-group">
                                  <div class="input-group">
                                      <input name="nom" type="text" class="form-control" placeholder="Nom" required>
                                      <span class="input-group-addon">
                                          <i class="glyphicon glyphicon-user"></i>
                                      </span>
                                  </div>
                              </div>
							  <div class="form-group">
                                  <div class="input-group">
                                      <input name="ville" type="text" class="form-control" placeholder="Ville"required>
                                      <span class="input-group-addon">
                                          <i class="glyphicon glyphicon-screenshot"></i>
                                      </span>
                                  </div>
                              </div>
                              <div class="form-group">
                                  <div class="input-group">
                                      <input name="adresse" type="text" class="form-control" placeholder="Adresse" required>
                                      <span class="input-group-addon">
                                          <i class="glyphicon glyphicon-globe"></i>
                                      </span>
                                  </div>
                              </div>
                              
                              <div class="form-group sign-btn">
                                  <input name="valider_enrg" type="submit" class="btn" value="Valider mes informations">
                                  <br><br>
                                  <p>Avez-vous déjà un espace? <a href="#" id="unflip-btn" class="signup"> Connexion</a></p>
                              </div>
                          </form>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>

<script src="https://cdnjs.cloudflare.com/ajax/libs/jQuery-Flip/1.0.18/jquery.flip.js"></script>    
<script type="text/javascript">
$().ready(function() {
	$("#card").flip({
	  trigger: 'manual'
	});
});


$(".signup_link").click(function() {

	$(".signin_form").css('opacity', '0');
	$(".signup_form").css('opacity', '100');
	
	
	$("#card").flip(true);
	
	return false;
});

$("#unflip-btn").click(function(){
  
	$(".signin_form").css('opacity', '100');
	$(".signup_form").css('opacity', '0');
	
  	$("#card").flip(false);
	
	return false;
	
});
</script>



  <br/><br/>
<%--   <jsp:include page="/WEB-INF/extra/p_footer.jsp" /> --%>
  	<%@ include file="/WEB-INF/extra/p_footer2.jsp" %>
</body>
</html>