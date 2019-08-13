<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<!DOCTYPE html>
<jsp:include page="cssnjs.jsp"></jsp:include>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<html lang="en">

<head>
<link rel="icon" href='<spring:url value="/resources/images/logo.ico"></spring:url>' />
<meta charset="utf-8">
<meta name="viewport"
	content="width=device-width, initial-scale=1, shrink-to-fit=no">
<meta http-equiv="x-ua-compatible" content="ie=edge">
<title>Add Content</title>

<!-- 

  
  
  <link href="..../resources/css/bootstrap.min.css" rel="stylesheet">
  
  <link href="..../resources/css/mdb.min.css" rel="stylesheet">
  
  <link href="..../resources/css/style.min.css" rel="stylesheet">
  -->
<link rel="stylesheet"
	href="https://use.fontawesome.com/releases/v5.8.2/css/all.css">
<link
	href='http://fonts.googleapis.com/css?family=Alegreya:400,300,700&effect=shadow-multiple'
	rel='stylesheet' type='text/css'>
<!-- ////////////////////////////////// -->
<!-- 
<link
	href='<spring:url value="/resources/css/bootstrap.min.css"></spring:url>'
	rel="stylesheet">
<link
	href='<spring:url value="/resources/css/mdb.min.css"></spring:url>'
	rel="stylesheet">
<link
	href='<spring:url value="/resources/css/style.min.css"></spring:url>'
	rel="stylesheet">-->


</head>

<body>

	<!--Main Navigation-->
	<header>

		<!-- Navbar -->
		<nav
			class="navbar fixed-top navbar-expand-lg navbar-light white scrolling-navbar">
			<div class="container">

				<!-- Brand -->
				<a class="navbar-brand waves-effect"
					href="/KeyGainer/"> <strong
					class="blue-text">KeyGainer</strong>
				</a>

				<!-- Collapse -->
				<button class="navbar-toggler" type="button" data-toggle="collapse"
					data-target="#navbarSupportedContent"
					aria-controls="navbarSupportedContent" aria-expanded="false"
					aria-label="Toggle navigation">
					<span class="navbar-toggler-icon"></span>
				</button>

				<!-- Links -->
				<div class="collapse navbar-collapse" id="navbarSupportedContent">

					<!-- Left -->
					<ul class="navbar-nav mr-auto">
            <li class="nav-item ">
              <a class="nav-link waves-effect" href="/KeyGainer/">Home
                <span class="sr-only">(current)</span>
              </a>
            </li>
            <li class="nav-item">
              <a class="nav-link waves-effect" href="/KeyGainer/contentshome/1">Contents</a>
            </li>
            <li class="nav-item active">
              <a class="nav-link waves-effect" href="#">Add Content</a>
            </li>
                        <li class="nav-item">
              <a class="nav-link waves-effect" href="/KeyGainer/contentshome/1">My Content</a>
            </li>
            
          </ul>

					<!-- Right -->
					<ul class="navbar-nav nav-flex-icons">
            <li class="nav-item">
              <b class="nav-link border border-light rounded ">
                <i class="fas fa-user-circle"></i>${sessionScope.user.name}
              </b>
            </li>
            <li class="nav-item">
              <a href="/KeyGainer/logout" class="nav-link waves-effect">
                <i class="fas fa-sign-out-alt"></i> Logout
              </a>
            </li>
          </ul>

				</div>

			</div>
		</nav>
		<!-- Navbar -->

	</header>
	<!--Main Navigation-->


	<!--Main layout-->

	<main class="mt-5 pt-5">
	<div class="container">

		<div class="col-md-8 col-lg-12 mb-4">

			<!--Card-->
			<div class="card">

				<!--Card image-->
				<div class="view"
					style="background-color: #00bfff; text-align: center;">
					<p class="font-effect-shadow-multiple"
						style="font-size: 30px; color: white; font-family: 'Alegreya', sans-serif !important;">Add
						Content</p>

					</a>
				</div>

				<!--Card content-->
				<div class="card-body text-center">
					<form id="UploadForm" action="uploadfiles" method="post"
						enctype="multipart/form-data">
						<!-- Name -->
						<input type="text" id="title" maxlength="50" name="title" class="form-control"
							placeholder="Title" required=""><br>

						<textarea rows="5" name="content" id="content"
							class="form-control" required="" placeholder="Content"></textarea>

						<br>

						<!-- Subject -->
						<select id="SubjectID" name="SubjectID" required=""
							class="browser-default custom-select">
							<option selected disabled="">Select Subject</option>
							<c:forEach var="sub" items="${list}">
								<option value="${sub.subjectId}">${sub.name}</option>
							</c:forEach>
						</select> <br>
						<!-- File input -->

						<div class="input-group">

							<div class="input-group-prepend">
								<span class="input-group-text" id="inputGroupFileAddon01">Upload
									Video</span>
							</div>
							<div class="custom-file">
								<input type="file" class="custom-file-input" id="myfile"
									name="myfile" aria-describedby="inputGroupFileAddon01" accept="video">
								<label class="custom-file-label" for="myfile"></label>
							</div>
						</div>

						<div class="text-center mt-4">
							<button class="btn btn-info btn-md waves-effect waves-light"
								type="submit" onclick="upload()">Post</button>
						</div>
					</form>
				</div>

			</div>
			<!--/.Card-->

		</div>
	</div>



	</main>

	<!--Main layout-->

	<!--Footer-->
	<footer
		class="page-footer text-center font-small mdb-color darken-2 mt-4 wow fadeIn">

		<!--Call to action-->
		
		<!--/.Call to action-->

		<hr class="my-4">

		<!-- Social icons -->
		<div class="pb-4">
			<a href="https://www.facebook.com/mdbootstrap" target="_blank"> <i
				class="fab fa-facebook-f mr-3"></i>
			</a> <a href="https://twitter.com/MDBootstrap" target="_blank"> <i
				class="fab fa-twitter mr-3"></i>
			</a> <a href="https://www.youtube.com/watch?v=7MUISDJ5ZZ4"
				target="_blank"> <i class="fab fa-youtube mr-3"></i>
			</a> <a href="https://plus.google.com/u/0/b/107863090883699620484"
				target="_blank"> <i class="fab fa-google-plus-g mr-3"></i>
			</a> <a href="https://dribbble.com/mdbootstrap" target="_blank"> <i
				class="fab fa-dribbble mr-3"></i>
			</a> <a href="https://pinterest.com/mdbootstrap" target="_blank"> <i
				class="fab fa-pinterest mr-3"></i>
			</a> <a href="https://github.com/mdbootstrap/bootstrap-material-design"
				target="_blank"> <i class="fab fa-github mr-3"></i>
			</a> <a href="http://codepen.io/mdbootstrap/" target="_blank"> <i
				class="fab fa-codepen mr-3"></i>
			</a>
		</div>
		<!-- Social icons -->

		<!--Copyright-->
		<div class="footer-copyright py-3">
			© 2019 Copyright: <a
				href="https://mdbootstrap.com/education/bootstrap/" target="_blank">
				MDBootstrap.com </a>
		</div>
		<!--/.Copyright-->

	</footer>
	<!--/.Footer-->

	<!-- SCRIPTS -->
	<!-- <script type="text/javascript"
		src='<spring:url value="/resources/js/jquery-3.4.1.min.js"></spring:url>'></script>
	<script type="text/javascript"
		src='<spring:url value="/resources/js/popper.min.js"></spring:url>'></script>
	<script type="text/javascript"
		src='<spring:url value="/resources/js/bootstrap.min.js"></spring:url>'></script>
	<script type="text/javascript"
		src='<spring:url value="/resources/js/mdb.min.js"></spring:url>'></script>

	<script src="http://malsup.github.com/jquery.form.js"></script>-->

	<!-- Initializations -->
	<script type="text/javascript">
		// Animations initialization
		new WOW().init();
	</script>
	<script type="text/javascript">
		
	</script>

	<!-- ....................................................... -->

	<!-- Modal HTML -->
</body>

</html>
