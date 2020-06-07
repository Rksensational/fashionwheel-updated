
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
	href="${pageContext.request.contextPath}/resources/css/flowsregister.css"
	rel="stylesheet">

	<link href='http://fonts.googleapis.com/css?family=PT+Sans:400,700' rel='stylesheet' type='text/css'>

	<link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/reset1.css"> <!-- CSS reset -->
	<link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/relatedproduct.css"> <!-- Resource style -->


	<script src="${pageContext.request.contextPath}/resources/js/modernizr.js"></script> <!-- Modernizr -->
  	
	<title>Related Products</title>
	<style>
	h3.wthree_text_info {
    font-size: 2.5em;
    font-weight: 200;
    text-align: center;
    letter-spacing: 1px;
    color: #000;
    margin-bottom: 1em;
    text-transform: uppercase;
}
h3.wthree_text_info span{
  font-weight:300;
}

</style>
</head>
<body class="bg">
		<!-- Navigation -->
		<nav class="navbar navbar navbar-fixed-top" role="navigation">
			<div class="container">
				<div class="navbar-header">
					<a class="btn btn-lg btn-info"
						href="${pageContext.request.contextPath}/home">Home</a>
				</div>
			</div>
		</nav>

	 <!-- banner-bootom-w3-agileits -->
	<div class="banner-bootom-w3-agileits">
	<div class="container">
		<h3 class="wthree_text_info">What's <span>Trending</span></h3>
		<div class="clearfix"></div>
	</div>
	</div>

	
	<div class="md-05">
	<ul class="cd-gallery">
		<li>
			<a href="http://codyhouse.co/">
				<ul class="cd-item-wrapper">
					<li class="selected">
						<img src="${pageContext.request.contextPath}/resources/images/ugmonk-tshirt-1.jpg" alt="Preview image">
					</li>

					<li class="move-right" data-sale="true" data-price="$22">
						<img src="${pageContext.request.contextPath}/resources/images/ugmonk-tshirt-2.jpg" alt="Preview image">
					</li>

					<li>
						<img src="${pageContext.request.contextPath}/resources/images/ugmonk-tshirt-3.jpg" alt="Preview image">
					</li>
				</ul> <!-- cd-item-wrapper -->
			</a>

			<div class="cd-item-info">
				<b><a href="#0">Mountains</a></b>
			</div> <!-- cd-item-info -->
		</li>
		

		<li>
			<a href="http://codyhouse.co/">
				<ul class="cd-item-wrapper">
					<li class="selected">
						<img src="${pageContext.request.contextPath}/resources/images/ugmonk-cap-1.jpg" alt="Preview image">
					</li>

					<li class="move-right">
						<img src="${pageContext.request.contextPath}/resources/images/ugmonk-cap-2.jpg" alt="Preview image">
					</li>

					<li>
						<img src="${pageContext.request.contextPath}/resources/images/ugmonk-cap-3.jpg" alt="Preview image">
					</li>
				</ul> <!-- cd-item-wrapper -->
			</a>

			<div class="cd-item-info">
				<b><a href="#0">Baseball Cap</a></b>

			</div> <!-- cd-item-info -->
		</li>

		<li>
			<a href="http://codyhouse.co/">
				<ul class="cd-item-wrapper">
					<li class="selected">
						<img src="${pageContext.request.contextPath}/resources/images/ugmonk-bag-1.jpg" alt="Preview image">
					</li>

					<li class="move-right">
						<img src="${pageContext.request.contextPath}/resources/images/ugmonk-bag-2.jpg" alt="Preview image">
					</li>

					<li>
						<img src="${pageContext.request.contextPath}/resources/images/ugmonk-bag-3.jpg" alt="Preview image">
					</li>
				</ul> <!-- cd-item-wrapper -->
			</a>

			<div class="cd-item-info">
				<b><a href="#0">Messenger Bag</a></b>

			</div> <!-- cd-item-info -->
		</li>

		<li>
			<a href="http://codyhouse.co/">
				<ul class="cd-item-wrapper">
					<li class="selected">
						<img src="${pageContext.request.contextPath}/resources/images/ugmonk-tshirt-1.jpg" alt="Preview image">
					</li>

					<li class="move-right" data-sale="true" data-price="$22">
						<img src="${pageContext.request.contextPath}/resources/images/ugmonk-tshirt-2.jpg" alt="Preview image">
					</li>

					<li>
						<img src="${pageContext.request.contextPath}/resources/images/ugmonk-tshirt-3.jpg" alt="Preview image">
					</li>
				</ul> <!-- cd-item-wrapper -->
			</a>

			<div class="cd-item-info">
				<b><a href="#0">Mountains</a></b>

			</div> <!-- cd-item-info -->
		</li>

		<li>
			<a href="http://codyhouse.co/">
				<ul class="cd-item-wrapper">
					<li class="selected">
						<img src="${pageContext.request.contextPath}/resources/images/ugmonk-cap-1.jpg" alt="Preview image">
					</li>

					<li class="move-right">
						<img src="${pageContext.request.contextPath}/resources/images/ugmonk-cap-2.jpg" alt="Preview image">
					</li>

					<li>
						<img src="${pageContext.request.contextPath}/resources/images/ugmonk-cap-3.jpg" alt="Preview image">
					</li>
				</ul> <!-- cd-item-wrapper -->
			</a>

			<div class="cd-item-info">
				<b><a href="#0">Baseball Cap</a></b>

				
			</div> <!-- cd-item-info -->
		</li>

		<li>
			<a href="http://codyhouse.co/">
				<ul class="cd-item-wrapper">
					<li class="selected">
						<img src="${pageContext.request.contextPath}/resources/images/ugmonk-bag-1.jpg" alt="Preview image">
					</li>

					<li class="move-right">
						<img src="${pageContext.request.contextPath}/resources/images/ugmonk-bag-2.jpg" alt="Preview image">
					</li>

					<li>
						<img src="${pageContext.request.contextPath}/resources/images/ugmonk-bag-3.jpg" alt="Preview image">
					</li>
				</ul> <!-- cd-item-wrapper -->
			</a>

			<div class="cd-item-info">
				<b><a href="#0">Messenger Bag</a></b>

			</div> <!-- cd-item-info -->
		</li>
	</ul> <!-- cd-gallery -->
	</div>
	
<script src="${pageContext.request.contextPath}/resources/js/jquery-2.1.1.js"></script>
<script src="${pageContext.request.contextPath}/resources/js/jquery.mobile.min.js"></script>
<script src="${pageContext.request.contextPath}/resources/js/main1.js"></script> <!-- Resource jQuery -->
</body>
</html>