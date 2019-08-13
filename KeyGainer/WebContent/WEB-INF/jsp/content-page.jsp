<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<jsp:include page="cssnjs.jsp"></jsp:include>
<!DOCTYPE html>
<html lang="en">

<head>
<meta charset="utf-8">
<link rel="icon" href='<spring:url value="/resources/images/logo.ico"></spring:url>' />
<meta name="viewport"
	content="width=device-width, initial-scale=1, shrink-to-fit=no">
<meta http-equiv="x-ua-compatible" content="ie=edge">
<title>${content.getTitle()}</title>
<!-- Font Awesome -->
<link rel="stylesheet"
	href="https://use.fontawesome.com/releases/v5.8.2/css/all.css">
<link rel='stylesheet'
	href='//maxcdn.bootstrapcdn.com/font-awesome/4.2.0/css/font-awesome.min.css'>
<style type="text/css">
    .star-rating {
  font-family: 'FontAwesome';
  margin: 50px auto;
}
.star-rating > fieldset {
  border: none;
  display: inline-block;
}
.star-rating > fieldset:not(:checked) > input {
  position: absolute;
  top: -9999px;
  clip: rect(0, 0, 0, 0);
}
.star-rating > fieldset:not(:checked) > label {
  float: right;
  width: 1em;
  padding: 0 0.05em;
  overflow: hidden;
  white-space: nowrap;
  cursor: pointer;
  font-size: 150%;
  color: #028df7;
}
.star-rating > fieldset:not(:checked) > label:before {
  content: '\f006  ';
}
.star-rating > fieldset:not(:checked) > label:hover,
.star-rating > fieldset:not(:checked) > label:hover ~ label {
  color: #2f9ff5;
  text-shadow: 0 0 3px #2f9ff5;
}
.star-rating > fieldset:not(:checked) > label:hover:before,
.star-rating > fieldset:not(:checked) > label:hover ~ label:before {
  content: '\f005  ';
}
.star-rating > fieldset > input:checked ~ label:before {
  content: '\f005  ';
}
.star-rating > fieldset > label:active {
  position: relative;
  top: 2px;
}







</style>

</head>


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
					<li class="nav-item	"><a class="nav-link waves-effect"
						href="/KeyGainer/">Home <span class="sr-only">(current)</span>
					</a></li>
					<li class="nav-item"><a class="nav-link waves-effect"
						href="/KeyGainer/contentshome/1">Contents</a></li>
					
				</ul>

				<!-- Right -->
				<ul class="navbar-nav nav-flex-icons">
            <li class="nav-item">
              <b class="nav-link border border-light rounded ">
                <i class="fas fa-user-circle"></i> ${sessionScope.user.name}
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

	<!--Section: Post-->
	<section class="mt-4">

		<!--Grid row-->
		<div class="row">

			<!--Grid column-->
			<div class="col-md-8 mb-4">
				<div class="card mb-4 wow fadeIn"
					style="visibility: visible; animation-name: fadeIn;">

					<!--Card content-->
					<div class="card-body text-center">

						<p class="h5 my-4">
							<c:out value="${content.getTitle()}"></c:out>
						</p>


						<p class="">
							<span id="rating">Article Rating:
							<c:forEach var="rating" begin="1" end="${i}">
							<i class="fas fa-star py-2 px-1"></i>
							</c:forEach>
							<c:forEach var="nonrating" begin="1" end="${j}">
							<i class="far fa-star py-2 px-1"></i>
							</c:forEach>
							</span>
						</p>




					</div>

				</div>

				<!--Featured video-->
				<div class="card mb-4 wow fadeIn">


					<div class="embed-responsive embed-responsive-16by9">
						<video controls="controls" class="embed-responsive-item"
							src='<spring:url value="${content.getVideoURL()}"></spring:url>'></video>
					</div>

				</div>

				<!--Card-->
				<div class="card mb-4 wow fadeIn">

					<!--Card content-->
					<div class="card-body">

						<p class="h5 my-4">
							Subject:
							<c:out value="${subjects.getName()}"></c:out>
						</p>


						

						<p class="h5 my-4">
							<c:out value="${content.getTitle()}"></c:out>
						</p>

						<c:out value="${content.getCtext()}"></c:out>

					</div>
						<blockquote class="blockquote">
							

							
							<!-- rating -->
							<div class="star-rating">
  <fieldset><c:out value="${message}"></c:out>: <br>
    <input type="radio" id="star5" name="rating" value="5" /><label for="star5" title="Outstanding">5 stars</label>
    <input type="radio" id="star4" name="rating" value="4" /><label for="star4" title="Very Good">4 stars</label>
    <input type="radio" id="star3" name="rating" value="3" /><label for="star3" title="Good">3 stars</label>
    <input type="radio" id="star2" name="rating" value="2" /><label for="star2" title="Poor">2 stars</label>
    <input type="radio" id="star1" name="rating" value="1" /><label for="star1" title="Very Poor">1 star</label>
  </fieldset>
</div>
<div id="message" class="alert alert-info" role="alert">
  <span id="alertmessage"></span>
</div>
							
						</blockquote>
						
				</div>
				<!--/.Card-->

				<!--Card-->
				<div class="card mb-4 wow fadeIn">

					<div class="card-header font-weight-bold">
						<span>About author</span> <span class="pull-right"> <a
							href=""> <i class="fab fa-facebook-f mr-2"></i>
						</a> <a href=""> <i class="fab fa-twitter mr-2"></i>
						</a> <a href=""> <i class="fab fa-instagram mr-2"></i>
						</a> <a href=""> <i class="fab fa-linkedin-in mr-2"></i>
						</a>
						</span>
					</div>

					<!--Card content-->
					<div class="card-body">

						<div class="media d-block d-md-flex mt-3">
							<img class="d-flex mb-3 mx-auto z-depth-1"
								src='<spring:url value="/resources/images/user.png"></spring:url>'
								alt="Generic placeholder image" style="width: 100px;">
							<div class="media-body text-center text-md-left ml-md-3 ml-0">
								<a href="/KeyGainer/profile/${user.userID}" class="mt-0 font-weight-bold"><h5>${user.getName()}</h5></a>
								At vero eos et accusamus et iusto odio dignissimos ducimus qui
								blanditiis praesentium voluptatum deleniti atque corrupti quos
								dolores et quas molestias excepturi sint occaecati cupiditate
								non provident, similique sunt in culpa qui officia deserunt
								mollitia animi, id est laborum et dolorum fuga.
							</div>
						</div>

					</div>

				</div>
				<!--/.Card-->

				<!--Comments-->
				<c:forEach var="comments" items="${commentlist}">

	<div class="card">
		<div class="card-body">
			<h5 class="card-title">
				<i class="fas fa-user-circle"> </i>
				<c:out value="${comments.user.name}"></c:out>
			</h5>
			<p class=" mx-2 card-text text-dark" style="font-size: 18px;">
				<c:out value="${comments.commentDetail}"></c:out>
			</p>
			<a class="card-link mx-2 text-black-50" style="font-size: 12px;"><fmt:formatDate
					type="both" dateStyle="short" timeStyle="short"
					value="${comments.commentDateTime}" /></a>
					<c:if test="${sessionScope.uid==comments.user.userID}">
					 <a href="/KeyGainer/deletecomment?id=${comments.commentID}&cid=${content.contentID}"	class="card-link text-black-50" style="font-size: 12px;">delete</a>
					 </c:if>
				 <a
						class="card-link text-black-50" style="font-size: 12px;">report</a>
			<a class="card-link text-black-50" style="font-size: 12px;"
				onclick="showthis(${comments.commentID})">reply</a>
		</div>
		<c:forEach var="reply" items="${replies}">
			<c:if test="${comments.commentID==reply.commentID}">
				<div class=" mx-5 my-1">
					<h5 class="card-title">
						<i class="fas fa-user-circle"> </i>
						<c:out value="${reply.user.name}"></c:out>
					</h5>
					<p class="mx-2 card-text text-dark" style="font-size: 18px;">
						<c:out value="${reply.body}"></c:out>
					</p>
					<a class="card-link mx-2 text-black-50" style="font-size: 12px;"><fmt:formatDate
							type="both" dateStyle="short" timeStyle="short"
							value="${reply.replyTime}" /></a>
							<c:if test="${sessionScope.uid==reply.user.userID}">
							<a class="card-link text-black-50" href="/KeyGainer/deletereply?id=${reply.replyID}&cid=${content.contentID}" style="font-size: 12px;">delete</a>
							</c:if>
						<a
						class="card-link text-black-50" style="font-size: 12px;">report</a>

				</div>
			</c:if>
		</c:forEach>
		<form action="/KeyGainer/addreply" method="post">
			<div class="input-group mx-5 w-75" id="answer_${comments.commentID}">
				<input type="text" name="commentid" value="${comments.commentID}"
					hidden="">
					<input type = "text" name = "contentid"  value="${content.contentID}" hidden>
				<textarea class="form-control" placeholder="Your Answer"
					aria-label="" aria-describedby="button-addon4" name="reply"></textarea>
				<div class="input-group-append" id="MaterialButton-addon4">
					<button class="btn btn-md btn-primary m-0 px-5" type="submit">Post</button>

				</div>
			</div>
		</form>

	</div>

</c:forEach>
<div class="card mb-3 wow fadeIn"
	style="visibility: visible; animation-name: fadeIn;">
	<div class="card-header font-weight-bold">Doubts? Ask...</div>
	<div class="card-body">

		<!-- Default form reply -->
		<form action="/KeyGainer/addcomment" method="post">

			<!-- Comment -->


			<div class="input-group">
				<textarea class="form-control" placeholder="Your Question"
					aria-label="" name="comment" required=""
					aria-describedby="button-addon4"></textarea>
					<input type = "text" name = "contentid"  value="${content.contentID}" hidden>
				<div class="input-group-append" id="MaterialButton-addon4">
					<button class="btn btn-md btn-primary m-0 px-4" type="submit">Post</button>

				</div>
			</div>
		</form>
		<!-- Default form reply -->



	</div>
</div>

				
				
				
			</div>
			<!--Grid column-->

			<!--Grid column-->
			<div class="col-md-4 mb-4">

				<!--Card: Jumbotron-->
				<div class="card blue-gradient mb-4 wow fadeIn">

					<!-- Content -->
					<div class="card-body text-white text-center"></div>
					<!-- Content -->
				</div>
				<!--Card: Jumbotron-->

				<!--Card : Dynamic content wrapper-->
				<div class="card mb-4 text-center wow fadeIn">

					<div class="card-header">Do you want to get informed about
						new articles?</div>

					<!--Card content-->
					<div class="card-body">

						<!-- Default form login -->
						<form>

							<!-- Default input email -->
							<label for="defaultFormEmailEx" class="grey-text">Your
								email</label> <input type="email" id="defaultFormLoginEmailEx"
								class="form-control"> <br>

							<!-- Default input password -->
							<label for="defaultFormNameEx" class="grey-text">Your
								name</label> <input type="text" id="defaultFormNameEx"
								class="form-control">

							<div class="text-center mt-4">
								<button class="btn btn-info btn-md" type="submit">Sign
									up</button>
							</div>
						</form>
						<!-- Default form login -->

					</div>

				</div>
				<!--/.Card : Dynamic content wrapper-->

				<!--Card-->
				<div class="card mb-4 wow fadeIn">

					<div class="card-header">Related articles</div>

					<!--Card content-->
					<div class="card-body">

						<ul class="list-unstyled">
							<li class="media"><img class="d-flex mr-3"
								src="https://mdbootstrap.com/img/Photos/Others/placeholder7.jpg"
								alt="Generic placeholder image">
								<div class="media-body">
									<a href="">
										<h5 class="mt-0 mb-1 font-weight-bold">List-based media
											object</h5>
									</a> Cras sit amet nibh libero, in gravida nulla (...)
								</div></li>
							<li class="media my-4"><img class="d-flex mr-3"
								src="https://mdbootstrap.com/img/Photos/Others/placeholder6.jpg"
								alt="An image">
								<div class="media-body">
									<a href="">
										<h5 class="mt-0 mb-1 font-weight-bold">List-based media
											object</h5>
									</a> Cras sit amet nibh libero, in gravida nulla (...)
								</div></li>
							<li class="media"><img class="d-flex mr-3"
								src="https://mdbootstrap.com/img/Photos/Others/placeholder5.jpg"
								alt="Generic placeholder image">
								<div class="media-body">
									<a href="">
										<h5 class="mt-0 mb-1 font-weight-bold">List-based media
											object</h5>
									</a> Cras sit amet nibh libero, in gravida nulla (...)
								</div></li>
						</ul>

					</div>

				</div>
				<!--/.Card-->

			</div>
			<!--Grid column-->

		</div>
		<!--Grid row-->

	</section>
	<!--Section: Post-->

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
		</a> <a href="https://www.youtube.com/watch?v=7MUISDJ5ZZ4" target="_blank">
			<i class="fab fa-youtube mr-3"></i>
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
<script type="text/javascript">
	$( document ).ready(function() {
		var crating = '${rating}';
		$('div[id^=answer_]').hide();
	    $("input[name=rating][value=" + crating + "]").prop('checked', true);
	    
	});
	
	$("input[type=radio]").change(function() {
		var id = '${content.contentID}';
		$.ajax({
			url : '/KeyGainer/addrating',
			type : 'GET',
			data : {
				rating : $("input[name='rating']:checked").val(),
				contentid : id

			},
			success : function(data) {
				var count = parseInt(data);
				if (count == 1) {
					alert("Thanks for the rating");
				} else {
					alert("You cant rate this Article");
				}
			}
		});
	});
	function showthis(divid){
		if($('div[id=answer_'+divid+']').is(':hidden'))
		{  
			$('div[id=answer_'+divid+']').slideDown();    
		}
		else{
			$('div[id=answer_'+divid+']').slideUp();  
		}
		
	}
	
	</script>
<script type="text/javascript">
	//Animations initialization
	new WOW().init();
</script>



</html>
