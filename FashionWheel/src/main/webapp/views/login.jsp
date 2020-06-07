
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@taglib prefix="spring" uri="http://www.springframework.org/tags"%>

<spring:url var="css" value="/resources/css" />
<spring:url var="js" value="/resources/js" />
<spring:url var="images" value="/resources/images" />

<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<c:set var="contextRoot" value="${pageContext.request.contextPath}" />
<!DOCTYPE html>
<html lang="en">

<head>
<link rel="shortcut icon"
	href="${pageContext.request.contextPath}/resources/images/favicon.ico" />
<meta name="application-name" content="Fashion Wheel" />
<meta name="msapplication-TileColor" content="#7a7a7a" />
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta name="description" content="">
<meta name="author" content="">
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

<!--MDB core css-->
<link
	href="https://cdnjs.cloudflare.com/ajax/libs/mdbootstrap/4.5.4/css/mdb.min.css"
	rel="stylesheet">

<!-- Custom styles for this template -->
<link
	href="${pageContext.request.contextPath}/resources/css/luxbootstrapthem.css"
	rel="stylesheet">
<link
	href="${pageContext.request.contextPath}/resources/css/dataTables.bootstrap.css"
	rel="stylesheet">
<link href="${pageContext.request.contextPath}/resources/css/myhome.css"
	rel="stylesheet">
<link
	href="${pageContext.request.contextPath}/resources/css/flowsregister.css"
	rel="stylesheet">

<style>
#fa {
	position: absolute;
	left: 310px;
	top: 8px;
	font-size: 21px;
	cursor: pointer;
	color: #999;
}

#fa.active {
	color: red;
}
</style>



</head>

<body class="bg">

	<div class="wrapper">

		<!-- Navigation -->
		<nav class="navbar navbar navbar-fixed-top" role="navigation">
			<div class="container">
				<div class="navbar-header">
					<a class="btn btn-lg btn-info"
						href="${pageContext.request.contextPath}/home">Home</a>
				</div>
			</div>
		</nav>


		<!-- Page Content -->

		<div class="content">

			<div class="container">



				<%-- For Wrong Inputs --%>
				<c:if test="${not empty message}">
					<div class="row">
						<div class=" col-md-offset-3 col-md-6">
							<div class="alert alert-danger">${message}</div>
						</div>
					</div>
				</c:if>

				<c:if test="${not empty logout}">
					<div class="row">
						<div class="col-xs-12 col-md-offset-2 col-md-8">
							<div class="alert alert-success">${logout}</div>
						</div>
					</div>
				</c:if>

				<div class="row">

					<div class="col-md-offset-3 col-md-6">

						<div class="panel panel-primary">

							<div class="panel-heading" id="tit">
								<h6 id="h7" style="align: center;">Login</h6>
								<hr>
							</div>

							<div class="panel-body">
								<form action="${contextRoot}/login" method="POST"
									class="form-horizontal" id="loginForm">

									<!-- Form -->
									<div class="form-group">
										<label for="username" class="col-md-4 control-label">Email:
										</label>
										<div class="col-md-8">
											<input type="text" name="username" id="username"
												class="form-control" />
										</div>
									</div>
									<div class="form-group">
										<label for="password" class="col-md-4 control-label">Password:
										</label>
										<div class="col-md-8">
											<a href="#" data-toggle="tooltip" title="View Password!!">
												<i class="fa fa-eye" id="fa"></i>
											</a> <input type="password" name="password" id="password"
												class="form-control" />
											<!-- <button type="button" id="show_hide" name="show_hide">Show</button> -->
										</div>
									</div>
									<div class="form-group">
										<div class="col-md-offset-4 col-md-8">
											<input type="hidden" name="${_csrf.parameterName}"
												value="${_csrf.token}" /> <input type="submit"
												value="Login" class="btn btn-default" />

										</div>
									</div>
								</form>

							</div>
							<div class="panel-footer">
								<div class="text-right">
									New User - <a
										href="${pageContext.request.contextPath}/register">Register
										Here</a>
								</div>
							</div>

						</div>

					</div>

				</div>

			</div>


		</div>

		<!-- Footer -->
		<%@include file="./Shared/footer.jsp"%>


		<!-- Bootstrap core JavaScript -->
		<script
			src="${pageContext.request.contextPath}/resources/js/jquery.min.js"></script>
		<script
			src="${pageContext.request.contextPath}/resources/js/jquery.validate.js"></script>

		<script
			src="${pageContext.request.contextPath}/resources/js/bootstrap.bundle.min.js"></script>



		<!-- Custom js -->
		<script
			src="${pageContext.request.contextPath}/resources/js/myhome.js"></script>
		<!-- MDB core JavaScript -->
		<script type="text/javascript"
			src="https://cdnjs.cloudflare.com/ajax/libs/mdbootstrap/4.5.4/js/mdb.min.js"></script>

		<!-- Password Hide And Show Script by Font Icon-->
		<script>
			var password = document.getElementById('password');
			var fa = document.getElementById('fa');

			fa.addEventListener('click', togglePass);

			function togglePass() {
				fa.classList.toggle('active');

				(password.type == 'password') ? password.type = 'text'
						: password.type = 'password';
			}
		</script>

	</div>
</body>

</html>
