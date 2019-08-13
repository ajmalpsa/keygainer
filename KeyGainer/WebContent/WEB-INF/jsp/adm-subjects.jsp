<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@taglib uri="http://www.springframework.org/tags/form" prefix="form"%>


<!DOCTYPE html>
<html lang="en">
<head>
<link rel="icon"
	href='<spring:url value="/resources/images/logo.ico"></spring:url>' />
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>Subjects</title>
<link
	href='<spring:url value="/resources/bootstrap/css/bootstrap.min.css"></spring:url>'
	rel="stylesheet">
<link
	href='<spring:url value="/resources/bootstrap/css/bootstrap.min.css"></spring:url>'
	rel="stylesheet">
<link href='<spring:url value="/resources/css/theme.css"></spring:url>'
	rel="stylesheet">
<link
	href='<spring:url value="/resources/images/icons/css/font-awesome.css"></spring:url>'
	rel="stylesheet">
<link type="text/css"
	href='http://fonts.googleapis.com/css?family=Open+Sans:400italic,600italic,400,600'
	rel='stylesheet'>
</head>
<body>

	<div class="navbar navbar-fixed-top">
		<div class="navbar-inner">
			<div class="container">
				<a class="btn btn-navbar" data-toggle="collapse"
					data-target=".navbar-inverse-collapse"> <i
					class="icon-reorder shaded"></i>
				</a> <a class="brand" href="adm-panel"> k-Admin </a>

				<div class="nav-collapse collapse navbar-inverse-collapse">


					<ul class="nav pull-right">

						
						<li><a href="#"> Support </a></li>
						<li class="nav-user dropdown"><a href="#"
							class="dropdown-toggle" data-toggle="dropdown"> <img
								src="images/user.png" class="nav-avatar" /> <b class="caret"></b>
						</a>
							<ul class="dropdown-menu">
								<li><a href="#">Your Profile</a></li>
								<li><a href="#">Edit Profile</a></li>
								<li><a href="#">Account Settings</a></li>
								<li class="divider"></li>
								<li><a href="#">Logout</a></li>
							</ul></li>
					</ul>
				</div>
				<!-- /.nav-collapse -->
			</div>
		</div>
		<!-- /navbar-inner -->
	</div>
	<!-- /navbar -->



	<div class="wrapper">
		<div class="container">
			<div class="row">


				<div class="span9">
					<div class="content">

						<div class="module">
							<div class="module-head">
								<h3>Tables</h3>
							</div>

						</div>

						<div class="module">
							<div class="module-head">
								<h3>DataTables</h3>
							</div>
							<div class="module-body table">
								<table cellpadding="0" cellspacing="0" border="0"
									class="datatable-1 table table-bordered table-striped	 display"
									width="100%">
									<thead>
										<tr>

											<th>Name</th>
											<th>Description</th>
										</tr>
									</thead>
									<tbody>
										<c:forEach var="sub" items="${list}">
											<tr class="odd gradeX">
												<td>${sub.name}</td>
												<td>${sub.description}</td>
												<td>
									<button class="btn btn-info btn-small" sub-name="${sub.name}" desc="${sub.description}"
													sub-id="${sub.subjectId}" data-toggle="modal" data-target="#myModal">
														Edit Subject</button>
												</td>
											</tr>
										</c:forEach>
										<tr class="odd gradeX">
											<form method="post" action="addsubject">
												<td>
													<div class="form-group">
														<input type="text" class="form-control" name="Name"
															id="Name" placeholder="Add Subject" required="">
													</div>
												</td>
												<td>
													<div class="form-group">
														<input type="text" class="form-control" name="Description"
															id="Description" placeholder="Description" required="">
													</div>
												</td>
												<td><button class="btn btn-info btn-small">Add
														Subject</button></td>
											</form>
										</tr>
									</tbody>

								</table>
							</div>
						</div>
						<!--/.module-->

						<br />

					</div>
					<!--/.content-->
				</div>
				<!--/.span9-->
			</div>
		</div>
		<!--/.container-->
	</div>
	<!--/.wrapper-->

	<div class="footer">
		<div class="container">


			<b class="copyright">&copy; 2014 Edmin - EGrappler.com </b> All
			rights reserved.
		</div>
	</div>

	<!-- Modal -->
	<div class="modal fade" id="myModal" role="dialog">
		<div class="modal-dialog">

			<!-- Modal content-->
			<div class="modal-content">
				<div class="modal-header">
					<button type="button" class="close" data-dismiss="modal">&times;</button>
					<h4 class="modal-title">Edit Subject</h4>
				</div>
				<div class="modal-body">
					<form id = "myform" method="post" action="editsubject">
						<div class="control-group">
							
							<div class="controls">
								<label class="control-label" for="Name">Subject :</label> <input type="text" name="Name" value=""
									placeholder="Subject" required="">
							</div>
							<div class="controls">
							<label class="control-label" for="Description">Description :</label><input type="text" name="Description"
									placeholder="Description" required="" >
							</div>
							<input name="SubjectId" hidden="">
							
							<div class="controls">
							
							<input type="submit" class="btn btn-info btn-small"
									value="Save" >
							</div>
						</div>
					</form>
				</div>
				<div class="modal-footer">
					<button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
				</div>
			</div>

		</div>
	</div>


	<script type="text/javascript"
		src='<spring:url value="/resources/scripts/jquery-1.9.1.min.js"></spring:url>'></script>
	<script type="text/javascript"
		src='<spring:url value="/resources/scripts/jquery-ui-1.10.1.custom.min.js"></spring:url>'></script>
	<script type="text/javascript"
		src='<spring:url value="/resources/bootstrap/js/bootstrap.min.js"></spring:url>'></script>
	<script type="text/javascript"
		src='<spring:url value="/resources/scripts/datatables/jquery.dataTables.js"></spring:url>'></script>
		<script src="https://ajax.googleapis.com/ajax/libs/jquery/2.1.1/jquery.min.js"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js" integrity="sha384-Tc5IQib027qvyjSMfHjOMaLkfuWVxZxUPnCJA7l2mCWNIpG9mGCD8wGNIcPD7Txa" crossorigin="anonymous"></script>
		
	<script type="text/javascript">
	$('#myModal').on('show.bs.modal', function (e) {
		  // get information to update quickly to modal view as loading begins
		  var opener=e.relatedTarget;//this holds the element who called the modal
		   
		   //we get details from attributes
		  var subname=$(opener).attr('sub-name');
		  var desc  = $(opener).attr('desc');
		  var subid  = $(opener).attr('sub-id');
		//set what we got to our form
		console.log(subid);
		  $('#myform').find('[name="Name"]').val(subname);
		  $('#myform').find('[name="Description"]').val(desc);
		  $('#myform').find('[name="SubjectId"]').val(subid);
		   
		});
	</script>
	<script>
		$(document).ready(
				function() {
					$('.datatable-1').dataTable();
					$('.dataTables_paginate').addClass(
							"btn-group datatable-pagination");
					$('.dataTables_paginate > a').wrapInner('<span />');
					$('.dataTables_paginate > a:first-child').append(
							'<i class="icon-chevron-left shaded"></i>');
					$('.dataTables_paginate > a:last-child').append(
							'<i class="icon-chevron-right shaded"></i>');
				});
	</script>
</body>