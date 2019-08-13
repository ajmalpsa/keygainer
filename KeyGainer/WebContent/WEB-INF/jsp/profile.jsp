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
  <meta charset="utf-8">
  
  <link rel="icon" href='<spring:url value="/resources/images/logo.ico"></spring:url>' />
  <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
  <meta http-equiv="x-ua-compatible" content="ie=edge">
  <title>${user.name}</title>
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
        <a class="navbar-brand waves-effect" href="https://mdbootstrap.com/docs/jquery/" target="_blank">
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
            <li class="nav-item">
              <a class="nav-link waves-effect" href="/KeyGainer">Home
                <span class="sr-only">(current)</span>
              </a>
            </li>
            <li class="nav-item">
              <a class="nav-link waves-effect" href="/KeyGainer/contenthome/1">Contents</a>
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
    
    
    <div class="container w-75">
				<!--Grid row-->
				<div class="row pt-lg-2 mt-lg-2">
					<!--Grid column-->

					<!--Grid column-->
					<!--Grid column-->

					<!--Form-->
					<div class="card wow fadeInRight" data-wow-delay="0.3s">
						<div class="card-body card-body-cascade ">

							<!-- Title -->
							
							<!-- Card -->
<div class="testimonial-card">

  

  <!-- Avatar -->
  <div class="avatar mx-auto white">
    <img src="https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQubaanvUN0Rgz7fPKpoe0DLp2jGkkjiAY7v937MOAqRhjv-au2" class="rounded-circle" alt="woman avatar">
  </div>

  

</div>
<!-- Card -->
							
							
							
							
							
							
							
							
							
							
							
														<h4 class="card-title text-center">
							
								<strong>${user.name}</strong>
							</h4>
							<!-- Subtitle -->
		<div class="text-center">
		<h6 class="font-weight-bold indigo-text py-2">Biography</h6>
							<!-- Text -->
							<p class="card-text">Lorem ipsum dolor sit amet, consectetur
								adipisicing elit. Exercitationem perspiciatis voluptatum a, quo
								nobis, non commodi quia repellendus sequi nulla voluptatem dicta
								reprehenderit, placeat laborum ut beatae ullam suscipit veniam.
							</p>
		
		</div>
							<div class="container">
							
								<div class="row">
								<div class = "col-md-2">
							</div>
									<div class="col-md-5">
										<div class="md-form">

											<b>Name :</b> ${user.name}
										</div>
										<div class="md-form">

											<b>Phone :</b> ${user.phone}
										</div>
										<div class="md-form">

											<b>Registration Date :</b> ${user.reg_date}
										</div>


									</div>
									<div class="col-md-5 ">
										<div class="md-form">
											<b>Email :</b> ${user.emailid}
										</div>
										<div class="md-form">
											<b>Date of Birth :</b> ${user.dob}
										</div>
										<c:if test="${user.role == 'teacher'}">
										<div class="md-form">
											<b>Contents Written :</b> ${count}
										</div>
										</c:if>
									</div>

								</div>

							</div>

							<!-- Linkedin -->
							<div class="text-center">
							<a class="px-2 fa-lg li-ic"><i class="fab fa-linkedin-in"></i></a>
							<!-- Twitter -->
							<a class="px-2 fa-lg tw-ic"><i class="fab fa-twitter"></i></a>
							<!-- Dribbble -->
							<a class="px-2 fa-lg fb-ic"><i class="fab fa-facebook-f"></i></a>
							</div>
							
							<div class="fixed-action-btn" style="bottom: 45px; right: 24px;">
  <a class="btn-floating btn-lg red" data-toggle="modal" data-target="#modalContactForm">
    <i class="fas fa-pencil-alt" data-toggle="tooltip" title="Write Feedback About This User"></i>
  </a>
</div>

						</div>


					</div>
					<!--/.Form-->

					<!--Grid column-->
				</div>
				<!--Grid row-->
			</div>
    
    
    
    <!-- Modal -->
    <form id="feedback">
    <div class="modal fade" id="modalContactForm" tabindex="-1" role="dialog" aria-labelledby="myModalLabel"
  aria-hidden="true">
  <div class="modal-dialog" role="document">
  
    <div class="modal-content" >
      <div class="modal-header text-center">
        <h4 class="modal-title w-100 font-weight-bold">Write Feedback about this user</h4>
        <button type="button" class="close" data-dismiss="modal" aria-label="Close">
          <span aria-hidden="true">&times;</span>
        </button>
      </div>
      <div class="modal-body mx-3" id="hidethis">
        
		
        <div class="md-form mb-5">
          <i class="fas fa-tag prefix grey-text"></i>
          <input type="text" name="subject" class="form-control validate" placeholder="Subject" required="">
          
        </div>

        <div class="md-form">
          <i class="fas fa-pencil prefix grey-text"></i>
          <textarea name="message" class="md-textarea form-control" rows="4" placeholder="Your Feedback" required=""></textarea>
    <input type = "text" name="about" value="${user.userID}" hidden="">
        </div>

      </div>
      <div class="" role="alert" id="showthis">
  		
  		</div>
      <div class="modal-footer d-flex justify-content-center">
        <button type="submit" id="submitbutton" class="btn btn-primary btn-rounded"><i class="far fa-paper-plane"></i></button>
      </div>
      
    </div>
    
  </div>
</div>
</form>
    
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

  
  $("#feedback").submit(function(e) {

	    e.preventDefault(); // avoid to execute the actual submit of the form.

	    var form = $(this);
	    var url = form.attr('action');

	    $.ajax({
	           type: "POST",
	           url: '/KeyGainer/submitfeedback',
	           data: form.serialize(), // serializes the form's elements.
	           success: function(data)
	           {
	        	   //$('#modalContactForm').click();
	        	   $('#hidethis').hide();
	        	   $('#showthis').addClass('alert alert-info');
	        	   $('#showthis').text("Feedback sent.");
	        	   $('#submitbutton').hide();
	        	   
	           }
	         });
  });

	
  
  
  </script>
</body>

</html>
    