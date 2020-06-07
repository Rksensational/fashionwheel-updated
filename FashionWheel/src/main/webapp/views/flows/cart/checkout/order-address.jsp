


<%@include file="../../shared/flow-header.jsp"%>

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

<link
	href="https://fonts.googleapis.com/css?family=Dancing+Script|Exo+2|Inconsolata|Josefin+Sans|Permanent+Marker|Poiret+One|Roboto+Mono|Satisfy|Ubuntu+Condensed"
	rel="stylesheet">

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

<!-- Custom styles for this template -->
<link
	href="${pageContext.request.contextPath}/resources/css/flatythem.css"
	rel="stylesheet">
<link
	href="${pageContext.request.contextPath}/resources/css/dataTables.bootstrap.css"
	rel="stylesheet">

<link href="${pageContext.request.contextPath}/resources/css/myhome.css"
	rel="stylesheet">
	
	<link href="${pageContext.request.contextPath}/resources/css/flowregister.css"
	rel="stylesheet">



</head>

<body class="bg10">

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
		<br>


		<div class="container">

			<div class="row">

				<div class="col-md-4">

					<h4 class="font-weight-bold"
						style="font-family: 'Exo 2', sans-serif; font-size: 25px; color: blue;">Select
						Shipping Address</h4>
					<hr>

					<div class="row">
						<c:forEach items="${addresses}" var="address">
							<div class="cols-xs-12">
								<h3
									style="font-family: 'Josefin Sans', sans-serif; font-size: 25px; color:white;">${address.addressLineOne}</h3>
								<h3
									style="font-family: 'Josefin Sans', sans-serif; font-size: 25px; color:white;">${address.addressLineTwo}</h3>
								<h4
									style="font-family: 'Josefin Sans', sans-serif; font-size: 25px; color:white;">${address.city}
									- ${address.postalCode}</h4>
								<h4
									style="font-family: 'Josefin Sans', sans-serif; font-size: 25px; color:white;">${address.state}
									- ${address.country}</h4>
								<hr />
								<div>
									<a
										href="${flowExecutionUrl}&_eventId_addressSelection&shippingId=${address.id}"
										class="btn btn-primary">Select</a>
								</div>
							</div>
						</c:forEach>
					</div>


				</div>

				<div class="col-md-8">


					<div class="panel panel-primary">

						<div class="panel-heading">
							<h4>Sign Up - Address</h4>
						</div>

						<div class="panel-body">

							<sf:form method="POST" modelAttribute="shipping"
								class="form-horizontal" id="billingForm">


								<div class="form-group">
									<label class="control-label col-md-4" for="addressLineOne">Address
										Line One</label>
									<div class="col-md-8">
										<sf:input type="text" path="addressLineOne"
											class="form-control" placeholder="Enter Address Line One" />
										<sf:errors path="addressLineOne" cssClass="help-block"
											element="em" />
									</div>
								</div>

								<div class="form-group">
									<label class="control-label col-md-4" for="addressLineTwo">Address
										Line Two</label>
									<div class="col-md-8">
										<sf:input type="text" path="addressLineTwo"
											class="form-control" placeholder="Enter Address Line Two" />
										<sf:errors path="addressLineTwo" cssClass="help-block"
											element="em" />
									</div>
								</div>

								<div class="form-group">
									<label class="control-label col-md-4" for="city">City</label>
									<div class="col-md-8">
										<sf:input type="text" path="city" class="form-control"
											placeholder="Enter City Name" />
										<sf:errors path="city" cssClass="help-block" element="em" />
									</div>
								</div>

								<div class="form-group">
									<label class="control-label col-md-4" for="postalCode">Postal
										Code</label>
									<div class="col-md-8">
										<sf:input type="text" path="postalCode" class="form-control"
											placeholder="XXXXXX" />
										<sf:errors path="postalCode" cssClass="help-block"
											element="em" />
									</div>
								</div>

								<div class="form-group">
									<label class="control-label col-md-4" for="state">State</label>
									<div class="col-md-8">
										<sf:input type="text" path="state" class="form-control"
											placeholder="Enter State Name" />
										<sf:errors path="state" cssClass="help-block" element="em" />
									</div>
								</div>

								<div class="form-group">
									<label class="control-label col-md-4" for="country">Country</label>
									<div class="col-md-8">
										<sf:input type="text" path="country" class="form-control"
											placeholder="Enter Country Name" />
										<sf:errors path="country" cssClass="help-block" element="em" />
									</div>
								</div>


								<div class="form-group">
									<div class="col-md-offset-4 col-md-8">
										<button type="submit" name="_eventId_saveAddress"
											class="btn btn-primary">
											<span class="glyphicon glyphicon-plus"></span> Add Address
										</button>
									</div>
								</div>


							</sf:form>


						</div>


					</div>



				</div>


			</div>

		</div>
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
		<script
			src="${pageContext.request.contextPath}/resources/js/myhome.js"></script>

	</div>
</body>

</html>

<%@include file="../../shared/flow-footer.jsp"%>