<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib prefix="spring" uri="http://www.springframework.org/tags"%>  
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>
<jsp:include page="cssnjs.jsp"></jsp:include>
<jsp:useBean id="obj" class="com.keygainer.controller.LoginController"></jsp:useBean>

    

<!DOCTYPE html>
<html lang="en">

<head>
<link rel="icon" href='<spring:url value="/resources/images/logo.ico"></spring:url>' />
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
  <meta http-equiv="x-ua-compatible" content="ie=edge">
  <title>KeyGainer</title>
  <!-- Font Awesome -->
  <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.8.2/css/all.css">
  <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.8.2/css/all.css">
<!--   <link href='<spring:url value="/resources/css/bootstrap.min.css"></spring:url>' rel="stylesheet">
  <link href='<spring:url value="/resources/css/mdb.min.css"></spring:url>' rel="stylesheet">
  <link href='<spring:url value="/resources/css/style.min.css"></spring:url>' rel="stylesheet"> -->
</head>

<body>

  <!--Main Navigation-->
  <header>

    <!-- Navbar -->
    <nav class="navbar fixed-top navbar-expand-lg navbar-light white scrolling-navbar">
      <div class="container">

        <!-- Brand -->
        <a class="navbar-brand waves-effect" href="#">
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
          <ul class="navbar-nav mr-auto">
            <li class="nav-item active">
              <a class="nav-link waves-effect" href="#">Home
                <span class="sr-only">(current)</span>
              </a>
            </li>
            <li class="nav-item">
              <a class="nav-link waves-effect" href="contentshome/1">Contents
              </a>
            </li>
            
          </ul>

          <!-- Right -->
          <ul class="navbar-nav nav-flex-icons">
            <li class="nav-item">
              <b class="nav-link border border-light rounded ">
                <i class="fas fa-user-circle"></i> ${sessionScope.user.name}
              </b>
            </li>
            <li class="nav-item">
              <a href="logout" class="nav-link waves-effect">
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

      <!--Section: Jumbotron-->
      <section class="card blue-gradient wow fadeIn">

        <!-- Content -->
        <%
        
        %>
        <div class="card-body text-white text-center py-5 px-5 my-5">

          <h1 class="mb-4">
            <strong>"<span id="quote-text"></span>"</strong>
          </h1>
          <p>
            <strong></strong>
          </p>
          <p class="mb-4">
            <strong>-<span id="quote-author"></span></strong>
          </p>
          <a href="contentshome/1" class="btn btn-outline-white btn-lg">Start
            free tutorial
            <i class="fas fa-graduation-cap ml-2"></i>
          </a>

        </div>
        <!-- Content -->
      </section>
      <!--Section: Jumbotron-->

      <!--Section: Cards-->
      <section class="pt-5">

        <!-- Heading & Description -->
        <div class="wow fadeIn">
          <!--Section heading-->
          <h2 class="h1 text-center mb-5">What is MDB?</h2>
          <!--Section description-->
          <p class="text-center">MDB is world's most popular Material Design framework for building responsive,
            mobile-first websites
            and apps. </p>
          <p class="text-center mb-5 pb-5">Trusted by over
            <strong>400 000</strong> developers and designers. Easy to use & customize. 400+ material UI elements,
            templates
            & tutorials.</p>
        </div>
        <!-- Heading & Description -->

        
        
        
        
        
        
        <!--Grid row-->
        <c:set var="count" value="1" scope="page" />
        <c:forEach var="contents" items="${contents}">
         <div class="jumbotron page" id = "page${count}">
        <div class="row wow fadeIn" >

          <!--Grid column-->
          <div class="col-lg-5 col-xl-4 mb-4">
            <!--Featured image-->
            <div class="view overlay rounded z-depth-1-half">
              <div class="view overlay">
                <div class="embed-responsive embed-responsive-16by9">
						<video class="embed-responsive-item"
							src='<spring:url value="${content.getVideoURL()}"></spring:url>'></video>
					</div>
              </div>
            </div>
          </div>
          <!--Grid column-->

          <!--Grid column-->
          <div class="col-lg-7 col-xl-7 ml-xl-4 mb-4">
            <h3 class="mb-3 font-weight-bold dark-grey-text">
              <strong><c:out value="${contents.title}"></c:out></strong>
            </h3>
            <p class="grey-text"> <c:out value="${fn:substring(contents.ctext, 0, 200)}"></c:out> </p>
            <p>
              <strong>Subject: <i> <c:out value="${contents.subject.getName()}"></c:out></i> <br>
              		Uploader: <i><c:out value="${contents.user.getName()}"></c:out></i></strong>
            </p>
            <a href="contents/${contents.contentID}" class="btn btn-primary btn-md">Start
              tutorial
              <i class="fas fa-play ml-2"></i>
            </a>
          </div>
          <!--Grid column-->

        </div>
        </div>
        <hr class="mb-5">
        <c:set var="count" value="${count + 1}" scope="page"/>
        </c:forEach>
       

        



        
        <!--Pagination-->
        <nav class="d-flex justify-content-center wow fadeIn">
          <ul class="pagination pg-blue">
			<a href="contentshome/1">More...</a>
            </ul>
        </nav>
        <!--Pagination-->

      </section>
      
      
      <!--Section: Cards-->

    </div>
  </main>
  <!--Main layout-->

  <!--Footer-->
  <footer class="page-footer text-center font-small mdb-color darken-2 mt-4 wow fadeIn">

    <!--Call to action-->
    
    <!--/.Call to action-->

    <hr class="my-4">

    <!-- Social icons -->
    <div class="pb-4">
      <a href="https://www.facebook.com/mdbootstrap" target="_blank">
        <i class="fab fa-facebook-f mr-3"></i>
      </a>

      <a href="https://twitter.com/MDBootstrap" target="_blank">
        <i class="fab fa-twitter mr-3"></i>
      </a>

      <a href="https://www.youtube.com/watch?v=7MUISDJ5ZZ4" target="_blank">
        <i class="fab fa-youtube mr-3"></i>
      </a>

      <a href="https://plus.google.com/u/0/b/107863090883699620484" target="_blank">
        <i class="fab fa-google-plus-g mr-3"></i>
      </a>

      <a href="https://dribbble.com/mdbootstrap" target="_blank">
        <i class="fab fa-dribbble mr-3"></i>
      </a>

      <a href="https://pinterest.com/mdbootstrap" target="_blank">
        <i class="fab fa-pinterest mr-3"></i>
      </a>

      <a href="https://github.com/mdbootstrap/bootstrap-material-design" target="_blank">
        <i class="fab fa-github mr-3"></i>
      </a>

      <a href="http://codepen.io/mdbootstrap/" target="_blank">
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
 <!-- <script type="text/javascript" src='<spring:url value="/resources/js/jquery-3.4.1.min.js"></spring:url>'></script>
  <script type="text/javascript" src='<spring:url value="/resources/js/popper.min.js"></spring:url>'></script>
  <script type="text/javascript" src='<spring:url value="/resources/js/bootstrap.min.js"></spring:url>'></script>
  <script type="text/javascript" src='<spring:url value="/resources/js/mdb.min.js"></spring:url>'></script> -->
  <!-- Initializations -->
  <script type="text/javascript">
    // Animations initialization
    new WOW().init();	

  </script>
  <script type="text/javascript">
  $(function() {
	  var url = 'http://api.forismatic.com/api/1.0/?method=getQuote&lang=en&format=jsonp&jsonp=?';
      $.getJSON(url, function(data) {
          $('#quote-text').text(data.quoteText); 
          $('#quote-author').text(data.quoteAuthor);
      });
  });
  </script>
</body>

</html>
    