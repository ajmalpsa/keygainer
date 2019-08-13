<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib prefix="spring" uri="http://www.springframework.org/tags"%>  

<!DOCTYPE html>
<html lang="en">
<head>
<link rel="icon" href='<spring:url value="/resources/images/logo.ico"></spring:url>' />
	<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
	<meta name="viewport" content="width=device-width, initial-scale=1.0">
	<title>Login</title>
	<link href='<spring:url value="/resources/bootstrap/css/bootstrap.min.css"></spring:url>' rel="stylesheet">
	<link href='<spring:url value="/resources/bootstrap/css/bootstrap-responsive.min.css"></spring:url>' rel="stylesheet">
	<link href='<spring:url value="/resources/css/theme.css"></spring:url>' rel="stylesheet">
	<link href='<spring:url value="/resources/images/icons/css/font-awesome.css"></spring:url>' rel="stylesheet">
	<link type="text/css" href='http://fonts.googleapis.com/css?family=Open+Sans:400italic,600italic,400,600' rel='stylesheet'>
</head>
<body>

	<div class="navbar navbar-fixed-top">
		<div class="navbar-inner">
			<div class="container">
				<a class="btn btn-navbar" data-toggle="collapse" data-target=".navbar-inverse-collapse">
					<i class="icon-reorder shaded"></i>
				</a>

			  	<a class="brand" href="#">
			  		k-Admin
			  	</a>

				<div class="nav-collapse collapse navbar-inverse-collapse">
				
					<ul class="nav pull-right">

						<li><a href="#">
							Sign Up
						</a></li>

						

						<li><a href="forgotpassword">
							Forgot your password?
						</a></li>
					</ul>
				</div><!-- /.nav-collapse -->
			</div>
		</div><!-- /navbar-inner -->
	</div><!-- /navbar -->



	<div class="wrapper">
		<div class="container">
			<div class="row">
				<div class="module module-login span4 offset4">
					<form class="form-vertical">
						<div class="module-head">
							<h3>Sign In</h3>
						</div>
						<div class="module-body">
						<div class="control-group">
								<div class="controls row-fluid">
									<span class="span12" id="print"></span>
								</div>
							</div>
							<div class="control-group">
								<div class="controls row-fluid">
									<input class="span12" type="text" id="username" placeholder="Username">
								</div>
							</div>
							<div class="control-group">
								<div class="controls row-fluid">
									<input class="span12" type="password" id=password placeholder="Password">
								</div>
							</div>
						</div>
						<div class="module-foot">
							<div class="control-group">
								<div class="controls clearfix">
									<button type="button" class="btn btn-primary pull-right" onclick="servsend()">Login</button>
									<label class="checkbox">
										<input type="checkbox"> Remember me
									</label>
								</div>
							</div>
						</div>
					</form>
				</div>
			</div>
		</div>
	</div><!--/.wrapper-->

	<div class="footer">
		<div class="container">
			 

			<b class="copyright">&copy; 2014 Edmin - EGrappler.com </b> All rights reserved.
		</div>
	</div>
	<script type="text/javascript" src='<spring:url value="/resources/scripts/jquery-1.9.1.min.js"></spring:url>'></script>
	<script type="text/javascript" src='<spring:url value="/resources/scripts/jquery-ui-1.10.1.custom.min.js"></spring:url>'></script>
	<script type="text/javascript" src='<spring:url value="/resources/bootstrap/js/bootstrap.min.js"></spring:url>'></script>
	
	<script type="text/javascript">
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
                	  window.location.assign("/KeyGainer/adm-panel");
                  }
                  else{
                  document.getElementById("print").innerHTML=val;}
              }
          }
        </script>  
	
</body>