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

<!-- Custom styles for this template -->
<link
	href="${pageContext.request.contextPath}/resources/css/luxbootstrapthem.css"
	rel="stylesheet">
<link
	href="${pageContext.request.contextPath}/resources/css/dataTables.bootstrap.css"
	rel="stylesheet">

<link href="${pageContext.request.contextPath}/resources/css/newsletter.css"
	rel="stylesheet">
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
	


</head>
<body>


<div id="container">
    <h1 class="logo"><i class="fa fa-angle-double-left"></i>Fashion Wheel Newsletter<i class="fa fa-angle-double-right"></i></h1>
    <div id="form-box">
      <i id="prev-btn" class="fa fa-arrow-left"></i>
      <i id="next-btn" class="fa fa-arrow-right"></i>
      <div id="input-group">
        <input id="input-field" required>
        <label id="input-label"></label>
        <div id="input-progress"></div>
      </div>
      <div id="progress-bar"></div>
    </div>
  </div>
  
  <script
			src="${pageContext.request.contextPath}/resources/js/newsletter.js"></script>
			
</body>
</html>




