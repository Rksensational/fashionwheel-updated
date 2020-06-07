<html>
<head>
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/resources/css/font-awesome.css">

<style>
/* client logo */
@import
	url(https://fonts.googleapis.com/css?family=Lato:400,300,900,700);

.carousel-inner {
	margin: auto;
	width: 90%;
}

.carousel-control {
	width: 2%;
}

.carousel-control.left, .carousel-control.right {
	background-image: none;
}

.glyphicon-chevron-left, .carousel-control .glyphicon-chevron-right {
	margin-top: -10px;
	margin-left: -10px;
	color: #444;
}

.carousel-inner {a { display:table-cell;
	height: 180px;
	width: 200px;
	vertical-align: middle;
}

img {
	max-height: 200px;
	margin: auto auto;
	max-width: 100%;
}

}
@media ( max-width : 767px) {
	.carousel-inner>.item.next, .carousel-inner>.item.active.right {
		left: 0;
		-webkit-transform: translate3d(100%, 0, 0);
		transform: translate3d(100%, 0, 0);
	}
	.carousel-inner>.item.prev, .carousel-inner>.item.active.left {
		left: 0;
		-webkit-transform: translate3d(-100%, 0, 0);
		transform: translate3d(-100%, 0, 0);
	}
}

@media ( min-width : 767px) and (max-width: 992px ) {
	.carousel-inner>.item.next, .carousel-inner>.item.active.right {
		left: 0;
		-webkit-transform: translate3d(50%, 0, 0);
		transform: translate3d(50%, 0, 0);
	}
	.carousel-inner>.item.prev, .carousel-inner>.item.active.left {
		left: 0;
		-webkit-transform: translate3d(-50%, 0, 0);
		transform: translate3d(-50%, 0, 0);
	}
}

@media ( min-width : 992px ) {
	.carousel-inner>.item.next, .carousel-inner>.item.active.right {
		left: 0;
		-webkit-transform: translate3d(16.7%, 0, 0);
		transform: translate3d(16.7%, 0, 0);
	}
	.carousel-inner>.item.prev, .carousel-inner>.item.active.left {
		left: 0;
		-webkit-transform: translate3d(-16.7%, 0, 0);
		transform: translate3d(-16.7%, 0, 0);
	}
}

.cd-item-info {
	height: 90px;
	line-height: 90px;
	padding: 0 2em;
}

.cd-item-info::after {
	clear: both;
	content: "";
	display: table;
}

.cd-item-info b, .cd-item-info .cd-price, .cd-item-info .cd-new-price {
	font-weight: bold;
	font-size: 2rem;
}

.cd-item-info b {
	float: left;
}

.cd-item-info b a {
	color: #2f2933;
}

.cd-item-info .cd-price, .cd-item-info .cd-new-price {
	/* .cd-new-price not visible in the html document - created using jQuery */
	float: left;
}
</style>


</head>


<body>
<br>
<br>
<hr>
	<div class="col-md-16 text-center">
		<h1
			style="font-size: 30px; font-style: bold; border: 1px solid grey; background-color: black; color: white;">
			<strong>Related Products</strong>
		</h1>
		<br> <a href="${pageContext.request.contextPath}/home"><br>
			<h3 style="font-size: 25px;">FASHION WHEEL</h3>
			<hr></a>
	</div>

	<br>

	<div class="col-md-10 col-md-offset-1">
		<div class="carousel slide" data-ride="carousel" data-type="multi"
			data-interval="3000" id="myCarousel">
			<div class="carousel-inner">
				<div class="item active">
					<div class="col-md-2 col-sm-6 col-xs-12">
						<div class="card">
							<div class="card-body">
								<a href="#"><img
									src="${pageContext.request.contextPath}/resources/images/ugmonk-tshirt-1.jpg"
									class="img-responsive"></a>
								<p class="card-text font-weight-bold" style="font-size: 12px;">Mountains</p>
							</div>
							<div class="card-footer">
							<h5 class="card-text font-weight-bold" style="font-size: 12px;" >Men Fashion</h5>
								<em class="cd-price">&#8377; 1100</em> <a href="${contextRoot}/cart/add/${product.id}/product" 
									class="btn btn-primary">Add To Cart</a>
							</div>
						</div>
					</div>
				</div>
				<div class="item">
					<div class="col-md-2 col-sm-6 col-xs-12">
						<div class="card">
							<div class="card-body">
								<a href="#"><img
									src="${pageContext.request.contextPath}/resources/images/ugmonk-cap-1.jpg"
									class="img-responsive"></a>
								<p class="card-text font-weight-bold" style="font-size: 12px;">Mountains</p>
							</div>
							<div class="card-footer">
								<em class="cd-price">&#8377; 1100</em> <a href="#"
									class="btn btn-primary">Explore</a>
							</div>
						</div>
					</div>
				</div>
				<div class="item">
					<div class="col-md-2 col-sm-6 col-xs-12">
						<div class="card">
							<div class="card-body">
								<a href="#"><img
									src="${pageContext.request.contextPath}/resources/images/ugmonk-bag-1.jpg"
									class="img-responsive"></a>
								<p class="card-text font-weight-bold" style="font-size: 12px;">Mountains</p>
							</div>
							<div class="card-footer">
								<em class="cd-price">&#8377; 1100</em> <a href="#"
									class="btn btn-primary">Explore</a>
							</div>
						</div>
					</div>
				</div>
				<div class="item">
					<div class="col-md-2 col-sm-6 col-xs-12">
						<div class="card">
							<div class="card-body">
								<a href="#"><img
									src="${pageContext.request.contextPath}/resources/images/PRDCB7EC773D0.jpeg"
									class="img-responsive"></a>
								<p class="card-text font-weight-bold" style="font-size: 12px;">Mountains</p>
							</div>
							<div class="card-footer">
								<em class="cd-price">&#8377; 1100</em> <a href="${contextRoot}/cart/add/3/product" 
									class="btn btn-primary">Explore</a>
							</div>
						</div>
					</div>
				</div>
				<div class="item">
					<div class="col-md-2 col-sm-6 col-xs-12">
						<div class="card">
							<div class="card-body">
								<a href="#"><img
									src="${pageContext.request.contextPath}/resources/images/PRDE763AF5159.jpeg"
									class="img-responsive"></a>
								<p class="card-text font-weight-bold" style="font-size: 12px;">Mountains</p>
							</div>
							<div class="card-footer">
								<em class="cd-price">&#8377; 1100</em> <a href="#"
									class="btn btn-primary">Explore</a>
							</div>
						</div>
					</div>
				</div>
				<div class="item">
					<div class="col-md-2 col-sm-6 col-xs-12">
						<div class="card">
							<div class="card-body">
								<a href="#"><img
									src="${pageContext.request.contextPath}/resources/images/PRDF4ECE74248.jpeg"
									class="img-responsive"></a>
								<p class="card-text font-weight-bold" style="font-size: 12px;">Mountains</p>
							</div>
							<div class="card-footer">
								<em class="cd-price">&#8377; 1100</em> <a href="#"
									class="btn btn-primary">Explore</a>
							</div>
						</div>
					</div>
				</div>
				<div class="item">
					<div class="col-md-2 col-sm-6 col-xs-12">
						<div class="card">
							<div class="card-body">
								<a href="#"><img
									src="${pageContext.request.contextPath}/resources/images/PRDAA3050F030.jpeg"
									class="img-responsive"></a>
								<p class="card-text font-weight-bold" style="font-size: 12px;">Mountains</p>
							</div>
							<div class="card-footer">
								<em class="cd-price">&#8377; 1100</em> <a href="#"
									class="btn btn-primary">Explore</a>
							</div>
						</div>
					</div>
				</div>

			</div>
			<a class="left carousel-control" href="#myCarousel" data-slide="next"><i
				class="glyphicon glyphicon-chevron-left"></i></a> <a
				class="right carousel-control" href="#myCarousel" data-slide="prev"><i
				class="glyphicon glyphicon-chevron-right"></i></a>
		</div>
	</div>

	<script type="text/javascript">
		$('.carousel[data-type="multi"] .item').each(function() {
			var next = $(this).next();
			if (!next.length) {
				next = $(this).siblings(':first');
			}
			next.children(':first-child').clone().appendTo($(this));

			for (var i = 0; i < 4; i++) {
				next = next.next();
				if (!next.length) {
					next = $(this).siblings(':first');
				}

				next.children(':first-child').clone().appendTo($(this));
			}
		});
	</script>

</body>
</html>