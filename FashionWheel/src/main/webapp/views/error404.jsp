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

<meta charset="utf-8">
<meta name="viewport"
	content="width=device-width, initial-scale=1, shrink-to-fit=no">
<meta name="description" content="">
<meta name="author" content="">
<meta name="_csrf" content="${_csrf.token}">
<meta name="_csrf_header" content="${_csrf.headerName}">
<title>Error 404</title>
<!-- Meta tag Keywords -->
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<meta name="keywords" content="interactive error page Widget a Flat Responsive Widget,Login form widgets, Sign up Web forms , Login signup Responsive web form,Flat Pricing table,Flat Drop downs,Registration Forms,News letter Forms,Elements" />
<!-- Meta tag Keywords -->
<!-- Bootstrap CDN -->
<!-- Latest compiled and minified CSS -->
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">

<!-- jQuery library -->
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>

<!-- Latest compiled JavaScript -->
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
	
	
<!-- Custom Css -->
<link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/error404.css" type="text/css" media="all" /> 
<!-- Style-CSS -->
<link href="//fonts.googleapis.com/css?family=Marcellus" rel="stylesheet">
<link href="//fonts.googleapis.com/css?family=MedievalSharp" rel="stylesheet">
</head>
<body>

<div class="banner_top" id="home">
		<div class="wrapper_top_w3layouts">

<div class="header_agileits">
				<div class="logo">
					<h1><a class="navbar-brand" href="index.html"><span>Fashion</span> <i>Wheel</i></a></h1>
				</div>
<section class="agile-error">
	<div class="agile-errheader">
		<h1>Fashion Wheel <span>error</span> page</h1>
	</div>
	<div class="agile-errmain">
		<h2>404</h2>
		<p>oops!sorry we can't find this page or still on working.</p>
		<span>either something went wrong or the page doesn't exist anymore.</span>
	</div>
	<div class="agile-home">
		<form action="#" method="post">
			<div class="agile-back">
				<a class=" btn btn-warning btn-lg "
						href="${pageContext.request.contextPath}/home">Home</a>
				<a class=" btn btn-danger btn-lg "
						href="${pageContext.request.contextPath}/contact">Help</a>
			</div>
		</form>
	</div>
	<div class="clear"></div>
		<footer>&copy; 2018 fashion wheel error page.All Rights Reserved.Designed by <a href="http://localhost:8083/FashionWheel/" target="blank">fashion wheel</a></footer>
</section>
</body>
</html>