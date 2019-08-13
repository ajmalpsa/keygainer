<jsp:include page="cssnjs.jsp"></jsp:include>
<%@taglib prefix="spring" uri="http://www.springframework.org/tags"%>   
<!DOCTYPE html>
<html lang="en">

<head>
<link rel="icon" href='<spring:url value="/resources/images/logo.ico"></spring:url>' />
<meta charset="utf-8">
<meta name="viewport"
	content="width=device-width, initial-scale=1, shrink-to-fit=no">
<meta http-equiv="x-ua-compatible" content="ie=edge">
<title>KeyGainer Register</title>
<!-- Font Awesome -->

<link rel="stylesheet"
	href="https://use.fontawesome.com/releases/v5.7.0/css/all.css">

<style type="text/css">
html, body, header, .view {
	height: 100%;
}

@media ( max-width : 740px) {
	html, body, header, .view {
		height: 1000px;
	}
}

@media ( min-width : 800px) and (max-width: 850px) {
	html, body, header, .view {
		height: 650px;
	}
}

@media ( min-width : 800px) and (max-width: 850px) {
	.navbar
	:not
	 
	(
	.top-nav-collapse
	 
	)
	{
	background
	:
	 
	#1C2331
	 
	!
	important
	;
	
	
}
}
</style>
</head>

<body>

	<!-- Navbar -->
		<!-- Navbar -->

	<!-- Full Page Intro -->
	<div class="view full-page-intro"
		style="background-image: url('http://getwallpapers.com/wallpaper/full/0/f/1/891619-cool-wallpaper-of-study-1920x1080.jpg'); background-repeat: no-repeat; background-size: cover;">

		<!-- Mask & flexbox options-->
		<div
			class="mask rgba-black-light d-flex justify-content-center align-items-center">

			<!-- Content -->
			<div class="container">

				<!--Grid row-->
				<div class="row wow fadeIn">

					<!--Grid column-->
					<div class="col-md-6 mb-4 white-text text-center text-md-left">

						<h2 class="display-8 font-weight-bold">
						<div id="counter" class="animated pulse infinite slower">
   						 More than <span class="counter-value" data-count="300">0</span> Teachers<br>
   						 More than <span class="counter-value" data-count="1000">0</span> Contents<br>
   						 More than <span class="counter-value" data-count="10000">0</span> Students<br>
   						 </div></h2>

						<hr class="hr-light">

						<p>
							<strong>Learn With Us</strong>
						</p>

						<p class="mb-4 d-none d-md-block">
							<strong>"No matter how busy you may think you are, 
							you must find time for reading, or 
							surrender yourself to self-chosen ignorance."
<p>-Atwood H. Townsend</strong>
						</p>

						<a 
							href="/KeyGainer/"
							class="btn btn-indigo btn-lg">Already have account? Login<i
							class="fas fa-graduation-cap ml-2"></i>
						</a>

					</div>
					<!--Grid column-->

					<!--Grid column-->
					<div class="col-md-8 col-xl-6 mb-10">

						<!--Card-->
						<div class="card">

							<!--Card content-->
							<div class="card-body">





								<!--Card content-->


								<!-- Form -->
								<form method="post" action="save">

									<div class="form-row">
										<div class="col">
											<!-- First name -->
											<div class="md-form md-outline">
												<input type="text" id="name" name="name"
													class="form-control" required=""> <label
													for="materialRegisterFormFirstName">Name</label>
											</div>
										</div>

									</div>

									<!-- E-mail -->
									<div class="form-row md-outline">
										<div class="col">
											<div class="md-form md-outline">
												<input type="email" id="emailid" name="emailid"
													class="form-control" required="" onkeyup="mailcheck()">
												<label for="emailid">E-mail</label>
											</div>
										</div>
										<div class="col">
											<!-- Last name -->
											<div class="md-form md-outline">
												<input type="text" name="phone" id="phone"
													class="form-control" required="required"
													pattern="[789][0-9]{9}"> <label for="phone">Phone</label>
											</div>
										</div>
									</div>

									<!-- Password -->
									<div class="md-form md-outline input-group mt-0 mb-3">
										<input type="password" name="password" id="password" class="form-control"
											aria-describedby="materialRegisterFormPasswordHelpBlock"
											required="">
										<div class="input-group-append">
											<span class="input-group-text md-addon"><i
												class="far fa-eye" data-toggle="tooltip"
												data-placement="top" title="Show Password"
												onclick="showpassword()"></i></span>
										</div>
										<label for="password">Password</label>
									</div>

									<div class="form-row">
										<div class="col">
											<div class="md-form md-outline">
												<input type="text" required="required" name="dob" id="dob"
													class="form-control datepicker"> <label for="dob">Date
													of Birth</label>

											</div>
										</div>
										<div class="col">
											<div class="md-form md-outline">
												<select
													class="mdb-select md-form colorful-select dropdown-primary"
													id="gender" name="gender" required="">
													<option value="" selected disabled>Gender</option>
													<option value="male">Male</option>
													<option value="female">Female</option>
													<option value="other">Other</option>

												</select>

											</div>
										</div>
									</div>




									<input type="text" name="role" id="role" value="student"
										hidden=""> <input type="text" name="approved"
										id="approved" value="1" hidden="">
									<!-- Sign up button -->
									<button
										class="btn btn-outline-info btn-rounded btn-block my-4 waves-effect z-depth-0"
										type="submit">Sign in</button>


								</form>
								<!-- Form -->



								<!-- Material form register -->
								<!-- Form -->

							</div>

						</div>
						<!--/.Card-->

					</div>
					<!--Grid column-->

				</div>
				<!--Grid row-->

			</div>
			<!-- Content -->

		</div>
		<!-- Mask & flexbox options-->

	</div>
	<!-- Full Page Intro -->


	<script type="text/javascript"
		src="https://mdbootstrap.com/wp-content/themes/mdbootstrap4/js/compiled-4.8.5.min.js">
		<script type="text/javascript">
		// Animations initialization
		new WOW().init();
	</script>
	<script type="text/javascript">
		$('.datepicker').pickadate({
			// Escape any “rule” characters with an exclamation mark (!).
			format : 'yyyy-mm-dd',
			formatSubmit : 'yyyy-mm-dd',
			hiddenPrefix : 'prefix__',
			hiddenSuffix : '__suffix'
		})
		$(document).ready(function() {
			$('.mdb-select').materialSelect();
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

		function mailcheck() {
			var element = $("#emailid").get(0);
			$
					.ajax({
						url : 'ajaxtest',
						type : 'GET',
						data : {
							mailid : $("#emailid").val()
						},
						success : function(data) {
							var count = parseInt(data);
							if (count == 0) {
								element.setCustomValidity('');
							} else {
								element
										.setCustomValidity('Already registered with this mail-id');
							}
						}
					});
		}

		function showpassword() {
			var input = $('#password');
			if (input.attr("type") === "password") {
				input.attr("type", "text");
			} else {
				input.attr("type", "password");
			}
		}
	</script>

</body>

</html>
