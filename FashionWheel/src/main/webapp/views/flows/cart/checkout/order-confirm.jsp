
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

<script src="https://unpkg.com/sweetalert/dist/sweetalert.min.js"></script>
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

<link href="${pageContext.request.contextPath}/resources/css/myhome.css"
	rel="stylesheet">

<script type="text/javascript">
	swal(
			"Thank You!",
			"Your Order is confirmed.! You will get delivery details shortly on your registerd email..",
			"success");
</script>


</head>

<body class="font-weight-bold">

	<div class="wrapper">

		<!-- Navigation -->
		<nav class="navbar navbar navbar-fixed-top" role="navigation">
			<div class="container">
				<div class="navbar-header">
					<a class="btn btn-lg btn-info" href="${contextRoot}/home">Home</a>
				</div>
			</div>
		</nav>

		<!-- Page Content -->
	</div>
	<table cellpadding="0" cellspacing="0">
		<tr class="top">
			<td colspan="2">
				<table>
					<tr>
						<td class="title"><img
							src="${pageContext.request.contextPath}/resources/images/new2.png"
							alt="logo" class="img-responsive"
							style="border: 2px black solid; width: 100%; max-width: 300px;">
						</td>

					</tr>
				</table>
			</td>
		</tr>
	</table>
	<div class="content">
		<div class="container">
			<div class="alert alert-success">
				<h3 class="text-center">Your Order is Confirmed!!</h3>
			</div>
			<div class="row">
				<div class="col-xs-12">
					<div class="invoice-title">
						<h2
							style="font-family: 'Josefin Sans', sans-serif; font-size: 20px;">Invoice</h2>
						<h3
							style="font-family: 'Josefin Sans', sans-serif; font-size: 20px;"
							class="pull-right">Order # ${orderDetail.id}</h3>
					</div>
					<hr>
					<div class="row">
						<div class="col-xs-6">
							<address
								style="font-family: 'Josefin Sans', sans-serif; font-size: 12px;">
								<strong style="color: black; font-size: 20px;">Billed
									To:</strong><br> ${orderDetail.user.firstName}
								${orderDetail.user.lastName}<br>
								${orderDetail.billing.addressLineOne}<br>
								${orderDetail.billing.addressLineTwo}<br>
								${orderDetail.billing.city} - ${orderDetail.billing.postalCode}<br>
								${orderDetail.billing.state} - ${orderDetail.billing.country}
							</address>
						</div>
						<div class="col-xs-6 text-right"
							style="font-family: 'Josefin Sans', sans-serif; font-size: 12px;">
							<address>
								<strong style="color: black; font-size: 20px;">Shipped
									To:</strong><br> ${orderDetail.user.firstName}
								${orderDetail.user.lastName}<br>
								${orderDetail.shipping.addressLineOne}<br>
								${orderDetail.shipping.addressLineTwo}<br>
								${orderDetail.shipping.city} -
								${orderDetail.shipping.postalCode}<br>
								${orderDetail.shipping.state} - ${orderDetail.shipping.country}
							</address>
						</div>
					</div>
					<div class="row"
						style="font-family: 'Josefin Sans', sans-serif; font-size: 12px;">
						<div class="col-xs-6">
							<address>
								<strong style="color: black; font-size: 20px;">Payment
									Method:</strong><br> Card Payment <br>
								${orderDetail.user.email}
							</address>
						</div>
						<div class="col-xs-6 text-right"
							style="font-family: 'Josefin Sans', sans-serif; font-size: 20px;">
							<address>
								<strong style="color: black">Order Date:</strong><br>
								${orderDetail.orderDate}<br> <br>
							</address>
						</div>
					</div>
				</div>
			</div>

			<div class="row"
				style="font-family: 'Josefin Sans', sans-serif; font-size: 20px;">
				<div class="col-md-12"
					style="font-family: 'Josefin Sans', sans-serif; font-size: 20px;">
					<div class="panel panel-default">
						<div class="panel-heading">
							<h3 class="panel-title">
								<strong style="color: black">Order summary</strong>
							</h3>
						</div>
						<div class="panel-body">
							<div class="table-responsive">
								<table class="table table-condensed">
									<thead>
										<tr>
											<td
												style="font-family: 'Josefin Sans', sans-serif; font-size: 15px;"><strong>Item</strong></td>
											<td class="text-center"
												style="font-family: 'Josefin Sans', sans-serif; font-size: 15px;"><strong>Price</strong></td>
											<td class="text-center"
												style="font-family: 'Josefin Sans', sans-serif; font-size: 15px;"><strong>Quantity</strong></td>
											<td class="text-right"
												style="font-family: 'Josefin Sans', sans-serif; font-size: 15px;"><strong>Totals</strong></td>
										</tr>
									</thead>
									<tbody>
										<!-- foreach ($order->lineItems as $line) or some such thing here -->
										<c:forEach items="${orderDetail.orderItems}" var="orderItem">
											<tr>
												<td class="font-weight-bold"
													style="font-family: 'Poiret One', cursive; font-size: 12px; color: black;">${orderItem.product.name}</td>
												<td class="font-weight-bold"
													style="font-family: 'Poiret One', cursive; font-size: 12px; color: black;"
													class="text-center">&#8377; ${orderItem.buyingPrice}</td>
												<td class="font-weight-bold"
													style="font-family: 'Poiret One', cursive; font-size: 12px; color: black;"
													class="text-center">${orderItem.productCount}</td>
												<td class="font-weight-bold"
													style="font-family: 'Poiret One', cursive; font-size: 12px; color: black;"
													class="text-right">&#8377; ${orderItem.total}</td>
											</tr>
										</c:forEach>
									</tbody>
								</table>
							</div>
						</div>
					</div>
				</div>
			</div>

			<div class="text-center">
				<a href="${contextRoot}/show/all/products" id="btnShowAlert"
					class="btn btn-lg btn-warning">Continue Shopping</a>
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
