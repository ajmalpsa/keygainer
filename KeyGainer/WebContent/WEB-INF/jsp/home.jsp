<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib prefix="spring" uri="http://www.springframework.org/tags"%>    
<!DOCTYPE html>
<html lang="en">

<head>
<link rel="icon" href='<spring:url value="/resources/images/logo.ico"></spring:url>' />
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
  <meta http-equiv="x-ua-compatible" content="ie=edge">
  <title>KeyGainer</title>
 <!-- 

  
  
  <link href="..../resources/css/bootstrap.min.css" rel="stylesheet">
  
  <link href="..../resources/css/mdb.min.css" rel="stylesheet">
  
  <link href="..../resources/css/style.min.css" rel="stylesheet">
  -->
  <!-- ////////////////////////////////// -->
  <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.8.2/css/all.css">
  <link href='<spring:url value="/resources/home/css/bootstrap.min.css"></spring:url>' rel="stylesheet">
  <link href='<spring:url value="/resources/home/css/mdb.min.css"></spring:url>' rel="stylesheet">
  <link href='<spring:url value="/resources/home/css/style.min.css"></spring:url>' rel="stylesheet">
  
  
</head>

<body>

  <!--Main Navigation-->
  <header>

    <!-- Navbar -->
    <nav class="navbar fixed-top navbar-expand-lg navbar-light white scrolling-navbar">
      <div class="container">

        <!-- Brand -->
        <a class="navbar-brand waves-effect" target="_blank">
          <strong class="blue-text">KeyGainer</strong>
        </a>

        <!-- Collapse -->
        <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarSupportedContent"
          aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
          <span class="navbar-toggler-icon"></span>
        </button>

        <!-- Links -->
        <div class="collapse navbar-collapse" id="navbarSupportedContent">

          <!-- Left -->
         

          <!-- Right -->
          

        </div>

      </div>
    </nav>
    <!-- Navbar -->

  </header>
  <!--Main Navigation-->

  <!--Main layout-->
  <main class="mt-5 pt-5">
    <div class="container">

      <!--Section: Jumbotron-->
      <section class="card wow fadeIn" style="background-image: url(https://mdbootstrap.com/img/Photos/Others/gradient1.jpg);">

        <!-- Content -->
        <div class="card-body text-white text-center py-5 px-5 my-5">

          <h1 class="mb-4">
            <h3>
            <div id="counter" class="animated pulse infinite slower">
   						 More than <span class="counter-value" data-count="300">0</span> Teachers<br>
   						 More than <span class="counter-value" data-count="1000">0</span> Contents<br>
   						 More than <span class="counter-value" data-count="10000">0</span> Students<br>
   						 </h3>
            
            </strong>
          </h1>
          <p>
            <strong></strong>
          </p>
          <p class="mb-4">
            <strong>
            "Knowledge is power. Information is liberating. <br>
            Education is the premise of progress, <br>
            in every society, in every family."<br>

			<i>-Kofi Annan</i>
            </strong>
          </p>
          <a target="_blank" href="#myModal" data-toggle="modal" class="btn btn-outline-white btn-lg">Login or SignUp for
            free tutorial
            <i class="fas fa-graduation-cap ml-2"></i>
          </a>

        </div>
        <!-- Content -->
      </section>
      <!--Section: Jumbotron-->

      <hr class="my-5">

      <!--Section: Cards-->

      <!--Section: Cards-->

    </div>
  </main>
  <!--Main layout-->

  <!--Footer-->
  <footer class="page-footer text-center font-small mdb-color darken-2 mt-4 wow fadeIn">

    <!--Call to action-->
    <div class="pt-4">
      <a class="btn btn-outline-white" href="carrierreg" 
        role="button">Start Carrier from here
        <i class="fas fa-chalkboard-teacher ml-2"></i>
      </a>
      <a class="btn btn-outline-white" href="register" role="button">Start
        free tutorial
        <i class="fas fa-graduation-cap ml-2"></i>
      </a>
    </div>
    <!--/.Call to action-->

    <hr class="my-4">

    <!-- Social icons -->
    <div class="pb-4">
      <a>
        <i class="fab fa-facebook-f mr-3"></i>
      </a>

      <a>
        <i class="fab fa-twitter mr-3"></i>
      </a>

      <a>
        <i class="fab fa-youtube mr-3"></i>
      </a>

      <a>
        <i class="fab fa-google-plus-g mr-3"></i>
      </a>

      <a>
        <i class="fab fa-dribbble mr-3"></i>
      </a>

      <a>
        <i class="fab fa-pinterest mr-3"></i>
      </a>

      <a>
        <i class="fab fa-github mr-3"></i>
      </a>

      <a >
        <i class="fab fa-codepen mr-3"></i>
      </a>
    </div>
    <!-- Social icons -->

    <!--Copyright-->
    <div class="footer-copyright py-3">
      © 2019 Copyright:
      <a href="https://mdbootstrap.com/education/bootstrap/" target="_blank"> MDBootstrap.com </a>
    </div>
    <!--/.Copyright-->

  </footer>
  <!--/.Footer-->

  <!-- SCRIPTS -->
  <script type="text/javascript" src='<spring:url value="/resources/home/js/jquery-3.4.1.min.js"></spring:url>'></script>
  <script type="text/javascript" src='<spring:url value="/resources/home/js/popper.min.js"></spring:url>'></script>
  <script type="text/javascript" src='<spring:url value="/resources/home/js/bootstrap.min.js"></spring:url>'></script>
  <script type="text/javascript" src='<spring:url value="/resources/home/js/mdb.min.js"></spring:url>'></script>
  <!-- Initializations -->
  <script type="text/javascript">
    // Animations initialization
    new WOW().init();	

  </script>
          <script type="text/javascript">
          $(document).ready(function() {
  			var a = 0;
  			var oTop = $('#counter').offset().top - window.innerHeight;
  			  if (a == 0 && $(window).scrollTop() > oTop) {
  			    $('.counter-value').each(function() {
  			      var $this = $(this),
  			        countTo = $this.attr('data-count');
  			      $({
  			        countNum: $this.text()
  			      }).animate({
  			          countNum: countTo
  			        },

  			        {

  			          duration: 2000,
  			          easing: 'swing',
  			          step: function() {
  			            $this.text(Math.floor(this.countNum));
  			          },
  			          complete: function() {
  			            $this.text(this.countNum);
  			            //alert('finished');
  			          }

  			        });
  			    });
  			    a = 1;
  			  }


  		});

          
          var request;
          function servsend(){
        	  var username = document.getElementById("username").value;
        	  var password = document.getElementById("password").value;
        	  var url = "/KeyGainer/login?mail="+username+"&password="+password;
              request = new XMLHttpRequest();
              request.onreadystatechange = servrec;
              request.open("GET",url,true);
              request.send();
          }
          function  servrec(){
              if(request.readyState==4){
                  val = request.responseText.trim();
                  if(new String(val).valueOf() == new String("success").valueOf()){
                	  window.location.assign("/KeyGainer/");
                  }
                  else{
                  document.getElementById("print").innerHTML=val;}
              }
          }
        </script>  
  
  <!-- ....................................................... -->
  <style type="text/css">
    body {
		font-family: 'Varela Round', sans-serif;
	}
	.modal-login {
		width: 350px;
	}
	.modal-login .modal-content {
		padding: 20px;
		border-radius: 1px;
		border: none;
	}
	.modal-login .modal-header {
		border-bottom: none;
        position: relative;
		justify-content: center;
	}
	.modal-login h4 {
		text-align: center;
		font-size: 26px;
	}
    .modal-login .form-group {
        margin-bottom: 20px;
    }
	.modal-login .form-control, .modal-login .btn {
		min-height: 40px;
		border-radius: 30px; 
        font-size: 15px;
        transition: all 0.5s;
	}
    .modal-login .form-control {
        font-size: 13px;
    }
    .modal-login .form-control:focus {
        border-color: #a177ff;
    }
	.modal-login .hint-text {
		text-align: center;
		padding-top: 10px;
	}
	.modal-login .close {
        position: absolute;
		top: -5px;
		right: -5px;
	}
	.modal-login .btn {
		background: #a177ff;
		border: none;
		line-height: normal;
	}
	.modal-login .btn:hover, .modal-login .btn:focus {
		background: #8753ff;
	}
	.modal-login .hint-text a {
		color: #999;
	}
	.trigger-btn {
		display: inline-block;
		margin: 100px auto;
	}
</style>

<!-- Modal HTML -->
<div id="myModal" class="modal fade" style="display: none;">
	<div class="modal-dialog modal-login">
		<div class="modal-content">
			<div class="modal-header">				
				<h4 class="modal-title">Sign in</h4>
				<button type="button" class="close" data-dismiss="modal" aria-hidden="true">×</button>
			</div>
			<div class="modal-body">
				<form action="">
					<div class="form-group">
						<span id ="print"></span>
						<input type="email" class="form-control" id="username" name="username" placeholder="Username" required="">
					</div>
					<div class="form-group">
						<input type="password" class="form-control" id="password" name="password" placeholder="Password" required="">
					</div>
					<div class="form-group">
						<input type="button" class="btn btn-primary btn-block btn-lg" value="Sign in" onclick="servsend()">
					</div>
				</form>				
				<p class="hint-text large"><a href="register">New user? SignUp</a></p>
				<p class="hint-text large"><a href="forgotpassword">Forgot Your Password?</a></p>
			</div>
		</div>
	</div>
</div> 
</body>

</html>
    