	


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
	href="${pageContext.request.contextPath}/resources/css/MintThem.css"
	rel="stylesheet">
<link
	href="${pageContext.request.contextPath}/resources/css/dataTables.bootstrap.css"
	rel="stylesheet">

<link href="${pageContext.request.contextPath}/resources/css/myhome.css"
	rel="stylesheet">



</head>
<body class="bg11">
<div class="container-fluid" >

<!-- Navigation -->
		<nav class="navbar navbar navbar-fixed-top" role="navigation">
			<div class="container">
				<div class="navbar-header">
					<a class="btn btn-lg btn-info"
						href="${contextRoot}/home">Home</a>
				</div>
			</div>
		</nav>

	<div class="row">
			<!--  To display all the goods -->
			<div class="col-md-6" >
				
				<div class="row" >
					<c:forEach items="${checkoutModel.cartLines}" var="cartLine">
					<div class="col-xs-12 font-weight-bold">
						
						<div class="card"  style="background-color:#F3F3F3; color:black; " >
						<br>
						<h3> &nbsp;${cartLine.product.id}): - <strong> &nbsp;${cartLine.product.name}</strong></h3>
							<hr/>
							<h4 class="font-weight-bold">&nbsp;&nbsp; Quantity -${cartLine.productCount}</h4>
							<h5 class="font-weight-bold">&nbsp;&nbsp; Buying Price - &#8377; ${cartLine.buyingPrice}/-</h5>							
						</div>						
						<hr/>
						<div class="text-right">
							<h3 class="font-weight-bold">Grand Total - &#8377; ${cartLine.total}/-</h3>
						</div>						
					</div>
					</c:forEach>
				</div>
				
				
			</div>
			
			<div class="col-md-6">
	            <div class="panel panel-default">
	                <div class="panel-heading">
	                    <h3 class="panel-title">
	                        Payment Details
	                    </h3>
	                </div>
	                <div class="panel-body">
	                    <form role="form">
	                    <div class="form-group">
	                        <label for="cardNumber">
	                            CARD NUMBER</label>
	                        <div class="input-group">
	                            <input type="text" class="form-control" id="cardNumber" placeholder="Valid Card Number"
	                                required autofocus />
	                            <span class="input-group-addon"><span class="glyphicon glyphicon-lock"></span></span>
	                        </div>
	                    </div>
	                    <div class="row">
	                        <div class="col-xs-7 col-md-7">
	                            <div class="form-group">
	                                <label for="expityMonth">EXPIRY DATE</label>
	                                <br/>
	                                <div class="col-xs-6 col-lg-6 pl-ziro">
	                                    <input type="text" class="form-control" id="expityMonth" placeholder="MM" required />
	                                </div>
	                                <div class="col-xs-6 col-lg-6 pl-ziro">
	                                    <input type="text" class="form-control" id="expityYear" placeholder="YY" required /></div>
	                            </div>
	                        </div>
	                        <div class="col-xs-5 col-md-5 pull-right">
	                            <div class="form-group">
	                                <label for="cvCode">
	                                    CV CODE</label>
	                                <input type="password" class="form-control" id="cvCode" placeholder="CV" required />
	                            </div>
	                        </div>
	                    </div>
	                    </form>
	                </div>
	            </div>
	            <ul class="nav nav-pills nav-stacked">
	                <li class="active" ><a href="#"> Final Payment<tr> <p class="font-weight-bold"> ${checkoutModel.checkoutTotal}/-</p></a></li>
	            </ul>
	            <br/>
	            <a href="${flowExecutionUrl}&_eventId_pay" class="btn btn-success btn-lg btn-block" role="button">Pay</a>
			
			</div>

	</div>
</div>
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


</body>

</html>

<%@include file="../../shared/flow-footer.jsp"%>