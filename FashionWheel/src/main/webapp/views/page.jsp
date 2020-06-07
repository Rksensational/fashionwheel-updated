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


<!--MDB core css-->
<link
	href="https://cdnjs.cloudflare.com/ajax/libs/mdbootstrap/4.5.4/css/mdb.min.css"
	rel="stylesheet">

<link rel="stylesheet"
	href="path/to/font-awesome/css/font-awesome.min.css">

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



</head>

<body>

	<div class="wrapper">

		<!-- Navigation -->
		<%@include file="./Shared/navbar.jsp"%>

		<!-- Page Content -->
		<!-- Loading the home content -->
		<c:if test="${userClickHome == true }">
			<%@include file="home.jsp"%>
		</c:if>

		<!-- Load only when user clicks about -->
		<c:if test="${userClickAbout == true }">
			<%@include file="about.jsp"%>
		</c:if>
		<!-- Load only when user productadd about -->
		<c:if test="${userClickCategorys == true }">
			<%@include file="Categorys.jsp"%>
		</c:if>
		<!-- Load only when user clicks contact -->
		<c:if test="${userClickContact == true }">
			<%@include file="contact.jsp"%>
		</c:if>

		<!-- Load only when user clicks Manage Products -->
		<c:if test="${userClickManageProducts == true }">
			<%@include file="ManageProducts.jsp"%>
		</c:if>

		<!-- Load only when user clicks contact -->
		<c:if
			test="${userClickAllProducts == true or userClickCategoryProducts == true }">
			<%@include file="listproducts.jsp"%>
		</c:if>

		<!-- Load only when user clicks show Product -->
		<c:if test="${userClickShowProduct == true}">
			<%@include file="singleProduct.jsp"%>
		</c:if>

		<!-- Load only when user clicks show cart -->
		<c:if test="${userClickShowCart == true}">
			<%@include file="cart.jsp"%>
		</c:if>

		<c:if test="${userClickTrending == true}">
			<%@include file="relatedproduct.jsp"%>
		</c:if>


		<!-- Footer -->
		<%@include file="./Shared/footer.jsp"%>


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
		<!-- MDB core JavaScript -->
		<script type="text/javascript"
			src="https://cdnjs.cloudflare.com/ajax/libs/mdbootstrap/4.5.4/js/mdb.min.js"></script>

	</div>
</body>

</html>

