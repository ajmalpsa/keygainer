<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<!DOCTYPE html>
<html lang="en">
<head>
	<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
	<meta name="viewport" content="width=device-width, initial-scale=1.0">
	<title>Keygainer Admin</title>
	<link href='<spring:url value="/resources/bootstrap/css/bootstrap.min.css"></spring:url>' rel="stylesheet">
        <link href='<spring:url value="/resources/bootstrap/css/bootstrap.min.css"></spring:url>' rel="stylesheet">
        <link href='<spring:url value="/resources/css/theme.css"></spring:url>' rel="stylesheet">
        <link href='<spring:url value="/resources/images/icons/css/font-awesome.css"></spring:url>' rel="stylesheet">
        <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.8.2/css/all.css">
	<link type="text/css" href='http://fonts.googleapis.com/css?family=Open+Sans:400italic,600italic,400,600' rel='stylesheet'>
</head>
<body>

	<div class="navbar navbar-fixed-top">
		<div class="navbar-inner">
			<div class="container">
				<a class="btn btn-navbar" data-toggle="collapse" data-target=".navbar-inverse-collapse">
					<i class="icon-reorder shaded"></i>
				</a>

			  	<a class="brand" href="adm-panel">
			  		k-Admin
			  	</a>

				<div class="nav-collapse collapse navbar-inverse-collapse">
						
				
					<ul class="nav pull-right">
						
						
						<li><a href="#">
							Support
						</a></li>
						<li class="nav-user dropdown">
							<a href="#" class="dropdown-toggle" data-toggle="dropdown">
								<img src="images/user.png" class="nav-avatar" />
								<b class="caret"></b>
							</a>
							<ul class="dropdown-menu">
								<li><a href="#">Your Profile</a></li>
								<li><a href="#">Edit Profile</a></li>
								<li><a href="#">Account Settings</a></li>
								<li class="divider"></li>
								<li><a href="logout">Logout</a></li>
							</ul>
						</li>
					</ul>
				</div><!-- /.nav-collapse -->
			</div>
		</div><!-- /navbar-inner -->
	</div><!-- /navbar -->



	<div class="wrapper">
		<div class="container">
			<div class="row">
				

				<div class="span9">
					<div class="content">

						

						<div class="module">
							<div class="module-head">
								<h3>Pending Approvals</h3>
							</div>
							<div class="module-body table">
								<table cellpadding="0" cellspacing="0" border="0" class="datatable-1 table table-bordered table-striped	 display" width="100%">
									<thead>
										<tr>
											<th>User ID</th>
											<th>Name</th>
											<th>Email ID</th>
											<th>Role</th>
											<th>Phone</th>
											<th>Approve/Deny</th>
											<th>Profile</th>
										</tr>
									</thead>
									<tbody>
									<c:forEach var="user" items="${list}">
										<c:if test="${user.approved==0 }">
										<tr class="odd gradeX">
											<td>${user.userID}</td>
											<td>${user.name}</td>
											<td>${user.emailid}</td>
											<td class="center"> ${user.role}</td>
											<td class="center">${user.phone}</td>
											<td  class="center"><button value='${user.userID}' class="btn btn-small btn-success" onclick="aprove(this.value)"><b>✓</b></button> &nbsp;&nbsp;  <a class="btn btn-small btn-danger">✖</a></td>
											<td><a href="user/${user.userID}" class="btn btn-small">View</a></td>
										</tr>
										</c:if>
									</c:forEach>
									</tbody>
									
								</table>
							</div>
						</div><!--/.module-->

					<br />
						
					</div><!--/.content-->
				</div><!--/.span9-->
			</div>
		</div><!--/.container-->
	</div><!--/.wrapper-->

	<div class="footer">
		<div class="container">
			 

			<b class="copyright">&copy; 2014 Edmin - EGrappler.com </b> All rights reserved.
		</div>
	</div>

	<script type="text/javascript" src='<spring:url value="/resources/scripts/jquery-1.9.1.min.js"></spring:url>'></script>
	<script type="text/javascript" src='<spring:url value="/resources/scripts/jquery-ui-1.10.1.custom.min.js"></spring:url>'></script>
	<script type="text/javascript" src='<spring:url value="/resources/bootstrap/js/bootstrap.min.js"></spring:url>'></script>
	<script type="text/javascript" src='<spring:url value="/resources/scripts/datatables/jquery.dataTables.js"></spring:url>'></script>
	<script>
	function aprove(val){
		var id = val;
		var result = confirm("Approve ? "+id);
		if (result) {
			window.open("/KeyGainer/approveuser/"+id,"_self");
		}
		else{	
			alert("canceled");
		}
	}
	</script>
	<script>
		$(document).ready(function() {
			$('.datatable-1').dataTable();
			$('.dataTables_paginate').addClass("btn-group datatable-pagination");
			$('.dataTables_paginate > a').wrapInner('<span />');
			$('.dataTables_paginate > a:first-child').append('<i class="icon-chevron-left shaded"></i>');
			$('.dataTables_paginate > a:last-child').append('<i class="icon-chevron-right shaded"></i>');
		} );
	</script>
</body>