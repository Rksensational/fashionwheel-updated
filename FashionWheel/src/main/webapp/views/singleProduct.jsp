<br>
<hr>
<head>
<style>
.description h3 {
	font-size: .1em;
	margin: 1em 0;
}

.description p {
	color: red;
	font-size: 1.2em;
	line-height: 1.8em;
	margin: 1em 0 0;
}

#name {
	font-size: 20px;
	font-family: 'Josefin Sans', sans-serif;
	color: blue;
}

.name {
	font-size: 30px;
	text-align: center;
}

/*Share Product*/
.social-nav {
	padding: 0;
	list-style: none;
	display: inline-block;
	margin: 1em 0 0;
	float: right;
}

.social-nav li {
	display: inline-block;
	margin: 0 6px;
}

.social-nav a {
	display: inline-block;
	float: none;
	width: 30px;
	height: 30px;
	text-decoration: none;
	cursor: pointer;
	text-align: center;
	line-height: 30px;
	background: #000;
	position: relative;
	-webkit-transition: 0.5s;
	-moz-transition: 0.5s;
	-o-transition: 0.5s;
	transition: 0.5s;
}

.model-3d-0 a {
	background: #5C5B5B;
	-webkit-transform-style: preserve-3d;
	-moz-transform-style: preserve-3d;
	-ms-transform-style: preserve-3d;
	-o-transform-style: preserve-3d;
	transform-style: preserve-3d;
}

.model-3d-0 .front, .model-3d-0 .back {
	width: 30px;
	height: 30px;
	position: absolute;
	top: 0;
	left: 0;
	-webkit-transform: translateZ(18px);
	-moz-transform: translateZ(18px);
	-ms-transform: translateZ(18px);
	-o-transform: translateZ(18px);
	transform: translateZ(18px);
	-webkit-backface-visibility: visible;
	-moz-backface-visibility: visible;
	-ms-backface-visibility: visible;
	-o-backface-visibility: visible;
	backface-visibility: visible;
	color: #212121;
	font-size: 12px;
}

.model-3d-0 .back {
	-webkit-transform: rotateX(90deg) translateZ(18px);
	-moz-transform: rotateX(90deg) translateZ(18px);
	-ms-transform: rotateX(90deg) translateZ(18px);
	-o-transform: rotateX(90deg) translateZ(18px);
	transform: rotateX(90deg) translateZ(18px);
	-webkit-backface-visibility: hidden;
	-moz-backface-visibility: hidden;
	-ms-backface-visibility: hidden;
	-o-backface-visibility: hidden;
	backface-visibility: hidden;
}

a.twitter .front {
	background: #00acee;
}

a.facebook .front {
	background: #3b5998;
}

a.instagram .front {
	background: #f77737;
}

a.pinterest .front {
	background: #bd081c;
}

.twitter .back, .facebook .back, .instagram .back, .pinterest .back {
	background: #fff;
}

.model-3d-0 a:hover {
	-webkit-transform: rotateX(-90deg);
	-moz-transform: rotateX(-90deg);
	-ms-transform: rotateX(-90deg);
	-o-transform: rotateX(-90deg);
	transform: rotateX(-90deg);
}

.model-3d-0 a:hover .back {
	-webkit-backface-visibility: visible;
	-moz-backface-visibility: visible;
	-ms-backface-visibility: visible;
	-o-backface-visibility: visible;
	backface-visibility: visible;
}

.w3_agile_social .front i {
	color: #fff;
	font-size: 12px;
}

.w3_agile_social .back i {
	color: #000;
	font-size: 12px;
}

.w3ls_team_grid img {
	background: #e4e3e3;
	padding: 7px;
}
/*--social icons--*/
/* Brand Colours */
.facebook {
	background: #3b5998;
}

.twitter {
	background: #00acee;
}

.google-plus {
	background: #dd4b39;
}

.rss {
	background: #f26522;
}

.social-icon-w3-agile {
	width: 25%;
	float: left;
	text-align: center;
	padding: 1.5em 0;
}

.social-icon-w3-agile i {
	color: #fff;
	font-size: 28px;
}

.social-agileinfo a:hover {
	opacity: 0.8;
}

li.share {
	vertical-align: super;
	font-size: 1em;
	font-weight: 600;
	letter-spacing: 2px;
}
/*--social-icons--*/
.logo_agile {
	text-align: center;
}

.logo_agile span {
	background: #000;
	padding: 0 17px;
	font-weight: bold;
	color: #fff;
}

.logo_agile h1 a {
	font-weight: 300;
	color: #000;
	letter-spacing: 1px;
	font-size: 1.5em;
	position: relative;
}

.logo_agile h1 a:hover {
	text-decoration: none;
}

i.fa.fa-shopping-bag.top_logo_agile_bag {
	position: absolute;
	font-size: 17px;
	top: 66px;
	right: 14px;
	color: #2fdab8;
}

/*-- single-page --*/
.single-top-left {
	margin-left: 5%;
	width: 34%;
}

.single-top-right h3 {
	text-transform: capitalize;
	font-size: 2em;
	color: #00e58b;
	margin-bottom: .3em;
	text-align: left;
}

.single-top-right ul li {
	display: inline-block;
	margin-left: 3px;
	color: #0280e1;
}

.single-top-right {
	padding-left: 5em;
}

.single-price ul li {
	margin-right: 0em;
	font-size: 1em;
	color: #999;
}

.single-price ul li:nth-child(1) {
	font-size: 2.8em;
	font-weight: 500;
	margin-right: 0.5em;
}

.single-price ul li span.w3off {
	font-size: 1.5em;
	color: #0280e1;
}

.single-price.price ul li a {
	color: #f44336;
}

.single-price.price ul li a:hover {
	color: red;
}

p.single-price-text {
	margin: 1.5em 0;
}

.single-top-right form {
	display: inline;
}

/*ADD TO CART*/
.single-top-right .w3ls-cart {
	width: 28%;
	font-weight: 300;
	padding: 0.6em 0;
	-webkit-transition: .5s all;
	-moz-transition: .5s all;
	-o-transition: .5s all;
	-ms-transition: .5s all;
	transition: .5s all;
	display: inline-block;
	background: #00e58b;
	outline: none;
	border: 1px solid #00e58b;
	color: #fff;
}

.single-top-right .w3ls-cart:hover {
	background: #00bdbd;
	border-color: #00bdbd;
}

.single-top-right .w3ls-cart i.fa {
	margin-right: 3px;
}

.single-top-right .w3ls-cart.w3ls-cart-like {
	margin-left: 1em;
	background: none;
	border: 1px solid #00e58b;
	color: #00e58b;
}

.single-top-right .w3ls-cart.w3ls-cart-like:hover {
	background: #00e58b;
	color: #fff;
}

#btn1 {
	width: 28%;
	font-weight: 300;
	padding: 0.6em 0;
	-webkit-transition: .5s all;
	-moz-transition: .5s all;
	-o-transition: .5s all;
	-ms-transition: .5s all;
	transition: .5s all;
	display: inline-block;
	background: #00e58b;
	outline: none;
	border: 1px solid #00e58b;
	color: #fff;
}
/*ADD TO CART END HERE*/
.single-top-right .w3ls-cart1 {
	width: 28%;
	font-weight: 300;
	padding: 0.6em 0;
	-webkit-transition: .5s all;
	-moz-transition: .5s all;
	-o-transition: .5s all;
	-ms-transition: .5s all;
	transition: .5s all;
	display: inline-block;
	background: grey;
	outline: none;
	border: 1px solid yellow;
	color: #fff;
}

.single-top-right .w3ls-cart1:hover {
	background: orange;
	border-color: red;
}

.single-top-right .w3ls-cart1 i.fa {
	margin-right: 3px;
}

.single-top-right .w3ls-cart1.w3ls-cart1-like {
	margin-left: 1em;
	background: none;
	border: 1px solid #00e58b;
	color: #00e58b;
}

.single-top-right .w3ls-cart1.w3ls-cart1-like:hover {
	background: #00e58b;
	color: #fff;
}
/*//Continue Sopping//*/
.single-page-icons.social-icons {
	margin: 5em 5em;
}

.single-page-icons.social-icons ul li h4 {
	font-size: 1.1em;
	color: #999;
	margin-right: 1em;
}

.single-page-icons.social-icons ul li {
	vertical-align: middle;
}
</style>

<link
	href="https://fonts.googleapis.com/css?family=Cinzel|Exo+2|Josefin+Sans|Permanent+Marker"
	rel="stylesheet">

<!--flex slider-->
<script defer
	src="${pageContext.request.contextPath}/resources/js/jquery.flexslider.js"></script>
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/resources/css/flexslider.css"
	type="text/css" media="screen" />
<script>
	// Can also be used with $(document).ready()
	$(window).load(function() {
		$('.flexslider').flexslider({
			animation : "slide",
			controlNav : "thumbnails"
		});
	});
</script>
<script type="text/javascript">
				$(document).ready(function () {
					$('#horizontalTab1').easyResponsiveTabs({
						type: 'default', //Types: default, vertical, accordion           
						width: 'auto', //auto or any width like 600px
						fit: true   // 100% fit in a container
					});
				});
			</script>
<!--flex slider-->

<script
	src="${pageContext.request.contextPath}/resources/js/imagezoom.js"></script>
<!-- //js -->




</head>

<div class="container">

	<!-- BREADCRUMB -->

	<div class="col-xs-10">

		<ol class="breadcrumb">

			<li><a href="${contextRoot}/home">Home</a></li>
			<li><a href="${contextRoot}/show/all/products">Products</a></li>
			<li class="active">${product.name}</li>

		</ol>
	</div>


</div>

<hr>
<div class="row">

	<!-- Display the product image -->
	<div class="col-xs-16 col-sm-4" id="pimage">

		<div class="thumbnail">

			<img src="${images}/${product.code}.jpeg" class="img-responsive" />

		</div>

	</div>
	<!-- style="background-color:#e8f5e2" -->
	<div class="col-md-6 single-top-right">
		<h3 class="item_name">${product.name}</h3>
		<p>Processing Time: Item will be shipped out within 2-3 working
			days.</p>
		<hr>
		<h3>
			<u>Brand</u>
		</h3>
		<p class="item_name">${product.brand}</p>
		<hr>
		<div class="single-price">
			<ul>
				<li>&#8377;${product.unitPrice} /-</li>
				<br>
				<hr>
				<li><span class="w3off">10% OFF</span></li>
				<li>Ends on: Oct,15th</li>
				<li><a href="#"><i class="fa fa-gift" aria-hidden="true"></i>
						Coupon</a></li>
			</ul>
		</div>
		<hr>
		<div class="description">
			<h3>
				<u>Description</u>
			</h3>
		</div>
		<p>${product.description}</p>
		<div class="clearfix"></div>


		<!-- Display the product description -->
		<%-- <div class="col-xs-18 col-sm-8" id="Conents">
		<h2 id="name" class="font-weight-bold">${product.name}</h2>
		<hr />
		<div class="description">
			<h3>Description</h3>
			<p>${product.description}</p>
			<hr />
			</div>

			<h4 class="text-style-bold">
				Price: <strong> &#8377; ${product.unitPrice} /-</strong>
			</h4> --%>


		<hr>
		<c:choose>

			<c:when test="${product.quantity < 1}">

				<h6 class="description" style="font-size: 15px;">
					Qty. Available: <span style="color: red; font-size: 20px;">Out
						of Stock!</span>
				</h6>

			</c:when>
			<c:otherwise>

				<h6 class="description" style="font-size: 20px;">Qty.
					Available: ${product.quantity}</h6>

			</c:otherwise>

		</c:choose>

		<hr>
		<security:authorize access="isAnonymous() or hasAuthority('USER')">

			<c:choose>

				<c:when test="${product.quantity < 1}">


					<a href="javascript:void(0)">
						<!-- class="btn btn-success disabled" id="btn1"> -->
						<!-- <strike>
							<span class="glyphicon glyphicon-shopping-cart"></span> Add to
							Cart
					</strike> -->
					</a>

				</c:when>
				<c:otherwise>
					<form action="${contextRoot}/cart/add/${product.id}/product"
						method="get">

						<button type="submit" class="w3ls-cart">
							<i class="fa fa-cart-plus" aria-hidden="true"></i> Add to cart
						</button>

					</form>




				</c:otherwise>

			</c:choose>
		</security:authorize>


		<security:authorize access="hasAuthority('ADMIN')">
			<a href="${contextRoot}/manage/${product.id}/product"
				class="btn btn-success"> <span
				class="glyphicon glyphicon-pencil"></span> Edit
			</a>
		</security:authorize>


		<form action="${contextRoot}/show/all/products" method="get">

			<button type="submit" class="w3ls-cart1">
				<i class="fa fa-shopping-basket" aria-hidden="true"></i> Continue
				Shopping
			</button>


		</form>

		<%-- <a href="${contextRoot}/show/all/products" class="btn btn-warning">
				Continue Shopping</a>
 --%>
		<hr>
		<ul
			class="social-nav model-3d-0 footer-social w3_agile_social single_page_w3ls"
			style="margin: 10px; padding: 1px;">
			<li class="share">Share On :</li>
			<li><a href="#" class="facebook">
					<div class="front">
						<i class="fa fa-facebook" aria-hidden="true"></i>
					</div>
					<div class="back">
						<i class="fa fa-facebook" aria-hidden="true"></i>
					</div>
			</a></li>
			<li><a href="#" class="twitter">
					<div class="front">
						<i class="fa fa-twitter" aria-hidden="true"></i>
					</div>
					<div class="back">
						<i class="fa fa-twitter" aria-hidden="true"></i>
					</div>
			</a></li>
			<li><a href="#" class="instagram">
					<div class="front">
						<i class="fa fa-instagram" aria-hidden="true"></i>
					</div>
					<div class="back">
						<i class="fa fa-instagram" aria-hidden="true"></i>
					</div>
			</a></li>
			<li><a href="#" class="pinterest">
					<div class="front">
						<i class="fa fa-linkedin" aria-hidden="true"></i>
					</div>
					<div class="back">
						<i class="fa fa-linkedin" aria-hidden="true"></i>
					</div>
			</a></li>
		</ul>

	</div>

</div>
<div class="clear-fix"></div>
<!-- related products -->
<div class="container-fluid">
	<%@include file="relatedproducts.jsp"%>
</div>
<!-- //related products -->


<div class="clearfix"></div>