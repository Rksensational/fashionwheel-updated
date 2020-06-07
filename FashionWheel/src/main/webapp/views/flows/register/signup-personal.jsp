<%-- <%@include file="../shared/flow-header.jsp"%> --%>

<%@taglib prefix="sf" uri="http://www.springframework.org/tags/form"%>
<!-- Page Jsp Codes -->

<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@taglib prefix="spring" uri="http://www.springframework.org/tags"%>

<spring:url var="css" value="/resources/css" />
<spring:url var="js" value="/resources/js" />
<spring:url var="images" value="/resources/images" />

<c:set var="contextRoot" value="${pageContext.request.contextPath}" />
<!DOCTYPE html>
<html lang="en">

<head>
<link rel="shortcut icon"
	href="${pageContext.request.contextPath}/resources/images/favicon.ico" />
<meta name="application-name" content="Fashion Wheel" />
<meta name="msapplication-TileColor" content="#7a7a7a" />
<meta charset="utf-8">
<meta name="viewport"
	content="width=device-width, initial-scale=1, shrink-to-fit=no">
<meta name="description" content="">
<meta name="author" content="">
<meta name="_csrf" content="${_csrf.token}">
<meta name="_csrf_header" content="${_csrf.headerName}">
<title>Fashion Wheel</title>

<script>
	window.menu = '${title}';

	window.contextRoot = '${contextRoot}'
</script>

<!-- BOOTSTRAP RESPONSIVE -->

<!-- Latest compiled and minified CSS -->
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
<!-- jQuery library -->
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
<!-- Latest compiled JavaScript -->
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>


<!-- Bootstrap core CSS -->
<link
	href="${pageContext.request.contextPath}/resources/css/bootstrap.min.css"
	rel="stylesheet">
<!--MDB core Css-->
<link
	href="https://cdnjs.cloudflare.com/ajax/libs/mdbootstrap/4.5.4/css/mdb.min.css"
	rel="stylesheet">

<!-- Custom styles for this template -->
<link
	href="${pageContext.request.contextPath}/resources/css/MintThem.css"
	rel="stylesheet">

<link href="${pageContext.request.contextPath}/resources/css/myhome.css"
	rel="stylesheet">
<link
	href="${pageContext.request.contextPath}/resources/css/flowsregister.css"
	rel="stylesheet">
<%-- 	<link href="${pageContext.request.contextPath}/resources/css/signup.css"
	rel="stylesheet"> --%>




</head>

<body class="bg">

	<div class="wrapper">

		<!-- Navigation -->
		<nav class="navbar navbar navbar-fixed-top">
			<div class="container">
				<div class="navbar-header">
					<a class=" btn btn-info btn-lg "
						href="${flowExecutionUrl}&_eventId_home">Home</a>
				</div>
			</div>
		</nav>


		<div class="row" id="content-main">
			<!-- col-md-4 decide width of the form and col-md-offset of the form -->

			<div class="col-md-4 col-md-offset-4">


				<div class="panel panel-primary">

					<div class="panel-heading" id="tit">
						<h4 id="h7">Sign Up Or Register</h4>
					</div>

					<div class="panel-body">

						<sf:form method="POST" modelAttribute="user"
							class="form-horizontal" id="registerForm">


							<div class="form-group">
								<label class="control-label col-md-4">First Name</label>
								<div class="col-md-8">
									<sf:input type="text" path="firstName" class="form-control"
										placeholder="First Name" />
									<sf:errors path="firstName" cssClass="help-block" element="em" />
								</div>
							</div>


							<div class="form-group">
								<label class="control-label col-md-4">Last Name</label>
								<div class="col-md-8">
									<sf:input type="text" path="lastName" class="form-control"
										placeholder="Last Name" />
									<sf:errors path="lastName" cssClass="help-block" element="em" />
								</div>
							</div>

							<div class="form-group">
								<label class="control-label col-md-4">Email</label>
								<div class="col-md-8">
									<sf:input type="text" path="email" class="form-control"
										placeholder="abc@zyx.com" />
									<sf:errors path="email" cssClass="help-block" element="em" />
								</div>
							</div>

							<div class="form-group">
								<label class="control-label col-md-4">Contact Number</label>
								<div class="col-md-8">
									<sf:input type="text" path="contactNumber" class="form-control"
										placeholder="XXXXXXXXXX" maxlength="10" />
									<sf:errors path="contactNumber" cssClass="help-block"
										element="em" />
								</div>
							</div>

							<div class="form-group">
								<label class="control-label col-md-4">Password</label>
								<div class="col-md-8">
									<sf:input type="password" path="password" class="form-control"
										placeholder="Password" />
									<sf:errors path="password" cssClass="help-block" element="em" />
								</div>
							</div>

							<div class="form-group">
								<label class="control-label col-md-4">Confirm Password</label>
								<div class="col-md-8">
									<sf:input type="password" path="confirmPassword"
										class="form-control" placeholder="Re-type password" />
									<sf:errors path="confirmPassword" cssClass="help-block"
										element="em" />
								</div>
							</div>

							<div class="form-group">
								<label class="control-label col-md-4">Select Role</label>
								<div class="col-md-8">
									<label class="radio-inline"> <sf:radiobutton
											path="role" value="USER" checked="checked" /> User
									</label> <label class="radio-inline"> <sf:radiobutton
											path="role" value="SUPPLIER" /> Supplier
									</label>
								</div>
							</div>
							<br>
							<div class="form-group">
								<div class="col-md-1 col-md-offset-4">
									<button type="submit" name="_eventId_billing"
										class="btn btn-lg btn-primary">
										Next - Add Your Address <span
											class="glyphicon glyphicon-chevron-right"></span>
									</button>
								</div>
							</div>
							<br>


							<div class="agileinfo-follow">
								<h4>Sign Up with</h4>
							</div>
							<div class="agileinfo-social-grids">
								<ul>
									<a href="https://www.facebook.com/" target="blank"><i
										class="fa fa-facebook"></i></a>
									<a href="https://twitter.com/" target="blank"><i
										class="fa fa-twitter"></i></a>
									<a href="https://www.rss.com/" target="https://www.rss.com/"><i
										class="fa fa-rss"></i></a>
									<a href="https://www.instagram.com/?hl=en" target="blank"><i
										class="fa fa-instagram "></i></a>
									<a href="https://www.linkedin.com/" target="blank"><i
										class="fa fa-linkedin" aria-hidden="true"></i></a>
									<a href="https://dribbble.com/" target="blank"><i
										class="fa fa-dribbble" aria-hidden="true"></i></a>
								</ul>
							</div>
							<div class="agileinfo-follow">
								<h4>
									OR<br> <br>Sign in here<br>
									<hr>
									<a class="btn btn-lg btn-secondary"
										href="${pageContext.request.contextPath}/login">Sign in</a>
							</div>
							</h4>


						</sf:form>



					</div>


				</div>


			</div>


		</div>


	</div>


	<!-- Footer -->
	<%@include file="../../Shared/footer.jsp"%>


	<!-- Bootstrap core JavaScript -->
	<script
		src="${pageContext.request.contextPath}/resources/js/jquery.min.js"></script>
	<script
		src="${pageContext.request.contextPath}/resources/js/jquery.validate.js"></script>

	<script
		src="${pageContext.request.contextPath}/resources/js/bootstrap.bundle.min.js"></script>

	<!-- DataTable Plugin -->
	<script
		src="${pageContext.request.contextPath}/resources/js/jquery.dataTables.js"></script>

	<!-- DataTable Bootstrap Script -->
	<script
		src="${pageContext.request.contextPath}/resources/js/dataTables.bootstrap.js"></script>

	<!--  Bootbox Script -->
	<script
		src="${pageContext.request.contextPath}/resources/js/bootbox.min.js"></script>

	<!-- Custom js -->
	<script src="${pageContext.request.contextPath}/resources/js/myhome.js"></script>
	<!-- MDB core JavaScript -->
	<script type="text/javascript"
		src="https://cdnjs.cloudflare.com/ajax/libs/mdbootstrap/4.5.4/js/mdb.min.js"></script>

	<div>
		<script
			src="${pageContext.request.contextPath}/resources/js/responsiveslides.min.js"></script>
		<script>
			// You can also use "$(window).load(function() {"
			$(function() {
				// Slideshow 4
				$("#slider4").responsiveSlides({
					auto : true,
					pager : true,
					nav : false,
					speed : 400,
					namespace : "callbacks",
					before : function() {
						$('.events').append("<li>before event fired.</li>");
					},
					after : function() {
						$('.events').append("<li>after event fired.</li>");
					}
				});

			});
		</script>

	</div>
</body>

</html>



<!-- Page jsp end here -->





