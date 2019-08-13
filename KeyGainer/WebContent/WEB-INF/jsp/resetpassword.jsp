<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib prefix="spring" uri="http://www.springframework.org/tags"%>  

<!DOCTYPE html>
<html lang="en">
<head>
<link rel="icon" href='<spring:url value="/resources/images/logo.ico"></spring:url>' />
	<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
	<meta name="viewport" content="width=device-width, initial-scale=1.0">
	<title>Reset Password</title>
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

						

						
					</ul>
				</div><!-- /.nav-collapse -->
			</div>
		</div><!-- /navbar-inner -->
	</div><!-- /navbar -->



	<div class="wrapper">
		<div class="container">
			<div class="row">
				<div class="module module-login span4 offset4">
					<form id="savechanges" class="form-vertical" method="post">
						<div class="module-head">
							<h3>Change Password</h3>
						</div>
						<div class="module-body">
						<div class="comtrol-group">
						<span id="print"></span>
						</div>
						<div id=hidethis>
							<div class="control-group">
								<div class="controls row-fluid">
									<input class="span12" type="password" name="password" id="password" placeholder="Enter password" required="required">
								</div>
							</div>
							<div class="control-group">
								<div class="controls row-fluid">
									<input class="span12" type="password" name="re-password" id = "re-password" oninput="check(this)" placeholder="Re-enter password" required="required">
								</div>
							</div>
							<input name="userid" value="${token.userid}" hidden="">
							</div>
						</div>
						<div class="module-foot">
							<div id="hidethis2" class="control-group">
								<div class="controls clearfix">
									<button type="submit" class="btn btn-primary pull-right" >Change Password</button>
									
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
	function check(input) {
        if (input.value != document.getElementById('password').value) {
            input.setCustomValidity('Password Must be Matching.');
        } else {
            // input is valid -- reset the error message
            input.setCustomValidity('');
        }
    }
	</script>
	<script type="text/javascript">
	$('#savechanges').submit(function(e){
		e.preventDefault();
		var form = $(this);
		$.ajax({
	           url: '/KeyGainer/passwordchanged',
	           type: "POST",
	           data: form.serialize(), // serializes the form's elements.
	           success: function(data)
	           {
	               //alert(data); // show response from the php script.
	               $('#print').html(data);
	               $('#hidethis').hide();
	               $('#hidethis2').hide();
	           }
	         });

		
	});
	
	</script>
	
	
</body>