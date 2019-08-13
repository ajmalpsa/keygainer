<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib prefix="spring" uri="http://www.springframework.org/tags"%>  
<%@taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<<jsp:include page='cssnjs.jsp'></jsp:include>
<!DOCTYPE html>
<html lang="en">

<head>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
  <meta http-equiv="x-ua-compatible" content="ie=edge">
  <title>Material Design Bootstrap</title>
  <!-- Font Awesome -->
  <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.8.2/css/all.css">
  <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.8.2/css/all.css">
 
 

  <style>.register{
    background: -webkit-linear-gradient(left, #3931af, #00c6ff);
    margin-top: 3%;
    padding: 3%;
}
.register-left{
    text-align: center;
    color: #fff;
    margin-top: 4%;
}
.register-left input{
    border: none;
    border-radius: 1.5rem;
    padding: 2%;
    width: 60%;
    background: #f8f9fa;
    font-weight: bold;
    color: #383d41;
    margin-top: 30%;
    margin-bottom: 3%;
    cursor: pointer;
}
.register-right{
    background: #f8f9fa;
    border-top-left-radius: 10% 50%;
    border-bottom-left-radius: 10% 50%;
}
.register-left img{
    margin-top: 15%;
    margin-bottom: 5%;
    width: 25%;
    -webkit-animation: mover 2s infinite  alternate;
    animation: mover 1s infinite  alternate;
}
@-webkit-keyframes mover {
    0% { transform: translateY(0); }
    100% { transform: translateY(-20px); }
}
@keyframes mover {
    0% { transform: translateY(0); }
    100% { transform: translateY(-20px); }
}
.register-left p{
    font-weight: lighter;
    padding: 12%;
    margin-top: -9%;
}
.register .register-form{
    padding: 10%;
    margin-top: 10%;
}
.btnRegister{
    float: right;
    margin-top: 10%;
    border: none;
    border-radius: 1.5rem;
    padding: 2%;
    background: #0062cc;
    color: #fff;
    font-weight: 600;
    width: 50%;
    cursor: pointer;
}
.register .nav-tabs{
    margin-top: 3%;
    border: none;
    background: #0062cc;
    border-radius: 1.5rem;
    width: 28%;
    float: right;
}
.register .nav-tabs .nav-link{
    padding: 2%;
    height: 34px;
    font-weight: 600;
    color: #fff;
    border-top-right-radius: 1.5rem;
    border-bottom-right-radius: 1.5rem;
}
.register .nav-tabs .nav-link:hover{
    border: none;
}
.register .nav-tabs .nav-link.active{
    width: 100px;
    color: #0062cc;
    border: 2px solid #0062cc;
    border-top-left-radius: 1.5rem;
    border-bottom-left-radius: 1.5rem;
}
.register-heading{
    text-align: center;
    margin-top: 8%;
    margin-bottom: -15%;
    color: #495057;
}

.mdb-main-label{
z-index: 1 !important;
}





</style>
  
</head>

<body>

  <!--Main Navigation-->
  <header>

    <!-- Navbar -->
    <nav class="navbar fixed-top navbar-expand-lg navbar-light white scrolling-navbar">
      <div class="container">

        <!-- Brand -->
        <a class="navbar-brand waves-effect" href="/KeyGainer/">
          <strong class="blue-text">MDB</strong>
        </a>

        <!-- Collapse -->
        <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarSupportedContent"
          aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
          <span class="navbar-toggler-icon"></span>
        </button>

        <!-- Links -->
        

      </div>
    </nav>
    <!-- Navbar -->

  </header>
  <!--Main Navigation-->
<!--Main layout-->
  <main class="mt-1 pt-4">
    <div class="container">

      <!--Section: Jumbotron-->
            <!--Section: Jumbotron-->

      <!--Section: Cards-->
      
      <!--Section: Cards-->

    </div>
  </main>
  <!--Main layout-->
   <form:form method="post" action="save" onsubmit="return validate()"> 
<div class="container register">
                <div class="row">
                    <div class="col-md-3 register-left">
                        <img src="https://image.ibb.co/n7oTvU/logo_white.png" alt=""/>
                        <h3>Welcome</h3>
                        <p>You are 30 seconds away from earning your own money!</p>
                        <input type="submit" name="" value="Login" onclick="location.href = '/KeyGainer'"/><br/>
                    </div>
                    <div class="col-md-9 register-right">
                        
                        <div class="tab-content" id="myTabContent">
                            <div class="tab-pane fade show active" id="home" role="tabpanel" aria-labelledby="home-tab">
                                <h3 class="register-heading">Register</h3>
                                <div class="row register-form">
                                
                                    <div class="col-md-6">
                                       <div class="md-form">  											
											<input type="text"name="name" id="name" class="form-control" required="">
  											<label for="inputIconEx2">Name</label>
  											
										</div>
										
										<div class="md-form">
  											
 											<input type="email" id="emailid" name="emailid" class="form-control" onkeyup="crunchifyAjax()" required>
  											<label for="inputIconEx2">Email</label>
  											<span class="error text-danger" id="res"></span>
										</div>
                                   		<div class="md-form">
  											
 											<input type="password" minlength=8 name="password" id="password" class="form-control" required="">
  											<label for="inputIconEx2">Password</label>
										</div>
										<div class="md-form">
  											
 											<input type="password" minlength=8 id="passwordTwo" class="form-control" oninput="check(this)" required="">
  											<label for="inputIconEx2">Confirm Password</label>
  											<span class="error text-danger" id="error"></span>
										</div>
                                        
                                    </div>
                                    <div class="col-md-6">
                                    <div class="md-form">
  										<input type="text" name="dob" id="dob" class="form-control datepicker" required="">
  										<label for="date-picker-example">Date of Birth</label>
									</div>      
                            <div class="md-form">
  								
 								<input type="tel" name="phone" id="phone" class="form-control" required="" pattern="[789][0-9]{9}">
  								<label for="inputIconEx2">Phone</label>
							</div>
							
							<div class="md-form">
								<select class="mdb-select md-form colorful-select dropdown-primary" id="gender" name="gender" required="">
  									<option value="" selected disabled>Gender</option>
  									<option value="male">Male</option>
  									<option value="female">Female</option>
  									<option value="other">Other</option>
  									
								</select>
								
							</div>
							 <div class="md-form">

                                        </div>
                                        <input type="submit" class="btnRegister" onclick="" value="Register"/>
                                    </div>
                                </div>
                                
                            </div>

                        </div>
                    </div>
                </div>

            </div>
            <input type="text" name = "role" id="role" value ="teacher" hidden="">
            <input type="text" name = "approved" id="approved" value ="0" hidden="">
            </form:form>
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
 
	<script type="text/javascript">
	function crunchifyAjax() {
		$.ajax({
		url : 'ajaxtest',
		type : 'GET',
		data : {
		mailid: $("#emailid").val()
		},
		success : function(data){
		var count = parseInt(data);
		if(count==0){
			$("#res").text("");
		}
		else{
			$("#res").text("already used");
		}
		}
		});
	}
		

	function validate(){
		var msg = $("#res").text();
		if(msg==0){
			return true;
		}
		else{
		return false;}
	}
	
	function check(input) {
        if (input.value != document.getElementById('password').value) {
            input.setCustomValidity('Password Must be Matching.');
        } else {
            // input is valid -- reset the error message
            input.setCustomValidity('');
        }
    }
	</script>
	

  <script>// Material Select Initialization
  $('.datepicker').pickadate({
	// Escape any “rule” characters with an exclamation mark (!).
	format: 'yyyy-mm-dd',
	formatSubmit: 'yyyy-mm-dd',
	hiddenPrefix: 'prefix__',
	hiddenSuffix: '__suffix'
	})
  
  
  
$(document).ready(function() {
$('.mdb-select').materialSelect();
});</script>
  <script type="text/javascript">
    // Animations initialization
    
    new WOW().init();	

  </script>
</body>

</html>
    