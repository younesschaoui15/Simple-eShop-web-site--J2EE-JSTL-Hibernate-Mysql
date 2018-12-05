<style>
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

<footer class="footer">
    <div class="container">
        <div class="row">
        <div class="col-sm-3">
            <h4 class="title">E-Shop CHAOUI</h4>
            <span class="acount-icon">          
          <a style="margin-right:15px;" href="<c:url value="/con_index"></c:url>">
                	<i class="glyphicon glyphicon-home" aria-hidden="true"></i> Home</a>                  
                <a style="margin-right:15px;" href="<c:url value="/con_store"></c:url>" >
                	<i class="glyphicon glyphicon-barcode" aria-hidden="true"></i> Store</a>                  
                <a style="margin-right:15px;" href="<c:url value="/con_commande"></c:url>"  >
                	<i class="glyphicon glyphicon-gift" aria-hidden="true"></i> Mes commandes</a>                  
                <a style="margin-right:15px;" href="<c:url value="/con_panier"></c:url>">
                	<i class="glyphicon glyphicon-shopping-cart" aria-hidden="true"></i> Mon Panier</a>                  
                <a style="margin-right:15px;" href="<c:url value="/con_deconnection"></c:url>">
                	<i class="glyphicon  glyphicon-off" aria-hidden="true"></i> Déconnecter</a>        
          </span>
        </div>
	</div>
        <hr>
        
        <div class="row text-center"> © 2018. Développé par Youness CHAOUI.</div>
    </div>
        
        
    </footer>
