<%@taglib prefix="security"
	uri="http://www.springframework.org/security/tags"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@taglib prefix="spring" uri="http://www.springframework.org/tags"%>

<spring:url var="css" value="/resources/css" />
<spring:url var="js" value="/resources/js" />
<spring:url var="images" value="/resources/images" />

<c:set var="contextRoot" value="${pageContext.request.contextPath}" />




<!-- Navigation -->
<nav class="navbar fixed-top navbar-expand-lg navbar-dark bg-dark">
	<div class="container-fluid">
		<a class="navbar-brand-img" href="${contextRoot}/home"><img
			src="${pageContext.request.contextPath}/resources/images/lg1.png"
			id="brand" alt="Dispute Bills"> </a>
		<%-- <a class="navbar-brand" href="${contextRoot}/home">Fashion Wheel</a> --%>
	
		<button class="navbar-toggler navbar-toggler-right" type="button"
			data-toggle="collapse" data-target="#navbarResponsive"
			aria-controls="navbarResponsive" aria-expanded="false"
			aria-label="Toggle navigation">
			<span class="navbar-toggler-icon"></span>
		</button>
		<div class="collapse navbar-collapse" id="navbarResponsive">
			<ul class="navbar-nav ml-auto ">

				<li class="nav-item" id="about"><a class="nav-link"
					href="${contextRoot}/about">About</a></li>

				<li class="nav-item" id="cat"><a class="nav-link"
					href="${pageContext.request.contextPath}/Categorys">Categorys</a></li>

				<li class="nav-item" id="listProducts"><a class="nav-link"
					href="${pageContext.request.contextPath}/show/all/products">View
						Products</a></li>

				<li class="nav-item" id="contact"><a class="nav-link"
					href="${pageContext.request.contextPath}/contact">Contact</a></li>

				<security:authorize access="hasAuthority('ADMIN')">
					<li class="nav-item" id="manageproducts"><a class="nav-link"
						href="${pageContext.request.contextPath}/manage/products">Manage
							Products</a></li>
				</security:authorize>
			</ul>


			<ul class="nav navbar-nav navbar-right">
				<security:authorize access="isAnonymous()">
					<li class="nav-item" id="register"><a class="nav-link"
						href="${pageContext.request.contextPath}/register">Sign Up</a></li>

					<li class="nav-item" id="login"><a class="nav-link"
						href="${pageContext.request.contextPath}/login">Login</a></li>
				</security:authorize>


				<!-- <div class="search">
				<input class="search_box" type="checkbox" id="search_box">
				<label class="icon-search" for="search_box"><span class="glyphicon glyphicon-search" aria-hidden="true"></span></label>
				<div class="search_form">
					<form action="#" method="post">
						<input type="text" name="Search" placeholder="Search...">
						<input type="submit" value="Send">
					</form>
				</div>
			</div> -->

			</ul>


			<!-- <li class="nav-item dropdown"><a
					class="nav-link dropdown-toggle" href="#"
					id="navbarDropdownPortfolio" data-toggle="dropdown"
					aria-haspopup="true" aria-expanded="false"><span
						class="glyphicon glyphicon-user"></span> &#160 Profile </a>
					<div class="dropdown-menu dropdown-menu-right"
						aria-labelledby="navbarDropdownPortfolio">
						<a class="dropdown-item" href="portfolio-1-col.html"><span
							class="glyphicon glyphicon-log-in"></span> &#160 Login</a> <a
							class="dropdown-item" href="portfolio-2-col.html"><span
							class="glyphicon glyphicon-thumbs-up"></span> &#160 Register</a> <a
							class="dropdown-item" href="portfolio-3-col.html"><span
							class="glyphicon glyphicon-shopping-cart"></span> &#160 My Cart</a> <a
							class="dropdown-item" href="portfolio-4-col.html"><span
							class="glyphicon glyphicon-heart"></span> &#160 Wishlists</a> <a
							class="dropdown-item" href="portfolio-item.html"><span
							class="glyphicon glyphicon-cog"></span> &#160 Settings</a>
					</div></li> -->


			<security:authorize access="isAuthenticated()">
				<li class="dropdown" id="shoppingCart"><a
					href="javascript:void(0)" class="btn btn-default-toggle"
					id="dropdownMenu1" data-toggle="dropdown">
						${userModel.fullName} <span class="caret "></span>

				</a>

					<ul class="dropdown-menu responsive">
						<security:authorize access="hasAuthority('USER')">
							<li><a href="${contextRoot}/cart/show"> <span
									class="glyphicon glyphicon-shopping-cart"></span> <span
									class="badge">${userModel.cart.cartLines} </span> - &#8377;
									${userModel.cart.grandTotal}

							</a></li>
							<li class="divider" role="separator"></li>
						</security:authorize>
						<li><a href="${contextRoot}/perform-logout">Logout</a></li>


					</ul></li>
			</security:authorize>



			<!-- <li class="nav-item dropdown"><a
					class="nav-link dropdown-toggle" href="#" id="navbarDropdownBlog"
					data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
						Blog </a>
					<div class="dropdown-menu dropdown-menu-right"
						aria-labelledby="navbarDropdownBlog">
						<a class="dropdown-item" href="blog-home-1.html">Blog Home 1</a> <a
							class="dropdown-item" href="blog-home-2.html">Blog Home 2</a> <a
							class="dropdown-item" href="blog-post.html">Blog Post</a>
					</div></li>
				<li class="nav-item dropdown"><a
					class="nav-link dropdown-toggle" href="#" id="navbarDropdownBlog"
					data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
						Other Pages </a>
					<div class="dropdown-menu dropdown-menu-right"
						aria-labelledby="navbarDropdownBlog">
						<a class="dropdown-item" href="full-width.html">Full Width
							Page</a> <a class="dropdown-item" href="sidebar.html">Sidebar
							Page</a> <a class="dropdown-item" href="faq.html">FAQ</a> <a
							class="dropdown-item" href="404.html">404</a> <a
							class="dropdown-item" href="pricing.html">Pricing Table</a>
					</div></li>
			</ul> -->
		</div>
	</div>
	
</nav>



<script>
		window.userRole = '${userModel.role}';
	</script>








<!-- My Original 1 -->

<%-- <div class= container>
<nav class="navbar navbar-inverse navbar-fixed-top bs-dark">
                    <div class="container-fluid">
                      <div class="navbar-header">
                        <button type="button" class="navbar-toggle" data-toggle="collapse" data-target="#myNavbar">
                          <span class="icon-bar"></span>
                          <span class="icon-bar"></span>
                          <span class="icon-bar"></span> 
                        </button>
                      </div>
                     <!-- <ul class="nav navbar-nav">-->
                      <form class="navbar-form navbar-left" action="https://www.amazon.in/">
                               <div class="form-group">
                             <input type="text" autofocus class="ser" size="30" style="width:100%; height:42px; color:red;" class="form-control" placeholder="Search">
                          </div>
                          <button type="submit" class="button"><span class="glyphicon glyphicon-search"></span></a></button>
                        </form>
                        
                      <div class="collapse navbar-collapse" id="myNavbar">
                        <ul class="nav navbar-nav">
                          <li><a href="#">Home</a></li>
                          <li class="dropdown">
                            <a href="#" class="dropdown-toggle" data-toggle="dropdown" role="button" >Products <span class="caret"></span></a>
                            <ul class="dropdown-menu">
                              <a href="https://www.amazon.in/b/ref=sv_top_ap_mega_1?_encoding=UTF8&node=7459781031" target="_blank" style="color:rgb(255, 255, 255);text-decoration:none"><i class="fa fa-male" style="font-size:20px;color:rgb(0, 122, 170)" aria-hidden="true"></i>&nbsp;&nbsp; Man's</a><br>
                              <li role="separator" class="divider"></li>
                              <a href="https://www.amazon.in/b?node=7459780031" target="_blank" style="color:rgb(255, 255, 255);text-decoration:none"><i class="fa fa-female" style="font-size:20px;color:rgb(201, 15, 182)" aria-hidden="true"></i>&nbsp;&nbsp; Women's </a>
                              <li role="separator" class="divider"></li>
                              <a href="https://www.amazon.in/b/ref=sv_top_ap_mega_2?_encoding=UTF8&node=9361420031" target="_blank" style="color:rgb(255, 255, 255);text-decoration:none"><i class="fa fa-child" style="font-size:20px;color:rgb(243, 247, 16)" aria-hidden="true"></i>&nbsp;&nbsp; Kid's </a>
                              <li role="separator" class="divider"></li>
                              <a href="https://www.amazon.in/Books/b/ref=nav_shopall_sbc_books_all?ie=UTF8&node=976389031" target="_blank" style="color:rgb(255, 255, 255);text-decoration:none"><i class="fa fa-book" style="font-size:20px;color:rgb(38, 133, 128)" aria-hidden="true"></i>&nbsp;&nbsp; Book's </a>>
                            </ul>
                          </li>
                          <li><a href="#">Offers</a></li> 
                          <li><a href="#">Contact Us</a></li> 
                        </ul>
                        
                         <ul class="nav navbar-nav navbar-right">
                        <li class="dropdown">
                          <a href="#" class="dropdown-toggle navbar-img" id="ac" data-toggle="dropdown" role="button" aria-haspopup="true" aria-expanded="false"> 
                          <img src="${pageContext.request.contextPath}/resources/images/user.png" class="img-circle" alt="Profile Image" />
                          </a>
                          <ul class="dropdown-menu">
                            <li>
                            <a href="${pageContext.request.contextPath}/Login1" id="pro"style="color:rgb(255, 255, 255);text-decoration:none;" ><i class="fa fa-user" style="font-size:30px;color:rgb(251, 255, 19)"></i>  &nbsp; Profile</a>
                            <li role="separator" class="divider"></li>
                            <a href="#" style="color:rgb(255, 255, 255);text-decoration:none"><i class="fa fa-shopping-bag"  aria-hidden="true" style="font-size:20px;color:rgb(255, 136, 0)"></i> &nbsp;&nbsp;My  Cart</a><br>
                            <li role="separator" class="divider"></li>
                            <a href="#" style="color:rgb(255, 255, 255);text-decoration:none"><i class="fa fa-heart"  style="font-size:20px;color:rgb(216, 6, 6)" aria-hidden="true"></i> &nbsp;&nbsp;Wish List</a>
                            <li role="separator" class="divider"></li>
                            <a href="#" style="color:rgb(255, 255, 255);text-decoration:none" ><i class="fa fa-bullhorn"  style="font-size:20px;color:rgb(255, 217, 0)"></i> &nbsp; &nbsp;Notifications</a>
                            <li role="separator" class="divider"></li>
                            <a href="${pageContext.request.contextPath}/product" style="color:rgb(255, 255, 255);text-decoration:none" ><i class="fa fa-gear" style="font-size:20px;color:rgb(22, 100, 163)"></i> &nbsp; &nbsp;Settings</a>  
                            </li>
                          </ul>
                        </li>
                      </ul>
                      </div>
                      <!-- </ul>-->
                    </div>
                  </nav>
                  </div> --%>


<%-- <script type="application/x-javascript">
	
	
	 addEventListener("load", function() { setTimeout(hideURLbar, 0); }, false);
function hideURLbar(){ window.scrollTo(0,1); } 


</script>
<!-- Custom Theme files -->
<link href="${pageContext.request.contextPath}/css/nav.css"
	rel='stylesheet' type='text/css' />
<!--Font-->
<link
	href="https://fonts.googleapis.com/css?family=Amatic+SC|Cinzel|Comfortaa|Gloria+Hallelujah|Concert+One|Philosopher|Permanent+Marker|Poiret+One"
	rel="stylesheet">
<!-- js -->
<script src="${pageContext.request.contextPath}/js/jquery-1.11.1.min.js"></script>
<!-- //js -->
<!-- start-smoth-scrolling -->
<script type="text/javascript"
	src="${pageContext.request.contextPath}/js/move-top.js"></script>
<script type="text/javascript"
	src="${pageContext.request.contextPath}/js/easing.js"></script>
<script type="text/javascript">
	jQuery(document).ready(function($) {
		$(".scroll").click(function(event) {
			event.preventDefault();
			$('html,body').animate({
				scrollTop : $(this.hash).offset().top
			}, 1000);
		});
	});
</script>
<script type="text/javascript">
	jQuery(function() {
		jQuery('.starbox')
				.each(
						function() {
							var starbox = jQuery(this);
							starbox
									.starbox(
											{
												average : starbox
														.attr('data-start-value'),
												changeable : starbox
														.hasClass('unchangeable') ? false
														: starbox
																.hasClass('clickonce') ? 'once'
																: true,
												ghosting : starbox
														.hasClass('ghosting'),
												autoUpdateAverage : starbox
														.hasClass('autoupdate'),
												buttons : starbox
														.hasClass('smooth') ? false
														: starbox
																.attr('data-button-count') || 5,
												stars : starbox
														.attr('data-star-count') || 5
											})
									.bind(
											'starbox-value-changed',
											function(event, value) {
												if (starbox.hasClass('random')) {
													var val = Math.random();
													starbox.next().text(
															' ' + val);
													return val;
												}
											})
						});
	});
</script>
<!---//End-rate---->

</head>
<body>
	<div class="header">

		<div class="container">

			<div class="logo">
				<h1>
					<a href="index.html">Fashion Wheel<span>Drive Your Best
							Fashion Here</span></a>
				</h1>
			</div>
			<div class="head-t">
				<ul class="card">
					<li><a href="wishlist.html"><i class="fa fa-heart"
							aria-hidden="true"></i>Wishlist</a></li>
					<li><a href="login.html"><i class="fa fa-user"
							aria-hidden="true"></i>Login</a></li>
					<li><a href="register.html"><i class="fa fa-arrow-right"
							aria-hidden="true"></i>Register</a></li>
					<li><a href="about.html"><i class="fa fa-file-text-o"
							aria-hidden="true"></i>Order History</a></li>
					<li><a href="shipping.html"><i class="fa fa-ship"
							aria-hidden="true"></i>Shipping</a></li>
				</ul>

				<!-- Search Box -->

				<form class="navbar-form navbar-center"
					action="https://www.amazon.in/">
					<div class="form-group">
						<input class="input" autofocus class="ser" size="30" type="text" name="search"
							placeholder="Search Your Choices..">
					</div>
					<button type="submit" class="button">
						<span class="glyphicon glyphicon-search"></span></a>
					</button>
				</form>

			</div>

			<div class="header-ri">
				<ul class="social-top">
					<li><a href="#" class="icon facebook"><i
							class="fa fa-facebook" aria-hidden="true"></i><span></span></a></li>
					<li><a href="#" class="icon twitter"><i
							class="fa fa-twitter" aria-hidden="true"></i><span></span></a></li>
					<li><a href="#" class="icon pinterest"><i
							class="fa fa-pinterest-p" aria-hidden="true"></i><span></span></a></li>
					<li><a href="#" class="icon dribbble"><i
							class="fa fa-dribbble" aria-hidden="true"></i><span></span></a></li>
				</ul>
			</div>


			<div class="nav-top">
				<nav class="navbar fluid nav-center-fixed">

					<div class="navbar-header nav_2">
						<button type="button"
							class="navbar-toggle collapsed navbar-toggle1"
							data-toggle="collapse" data-target="#bs-megadropdown-tabs">
							<span class="sr-only">Toggle navigation</span> <span
								class="icon-bar"></span> <span class="icon-bar"></span> <span
								class="icon-bar"></span>
						</button>


					</div>
					<div class="collapse navbar-collapse" id="bs-megadropdown-tabs">
						<ul class="nav navbar-nav ">
						<a href="offer.html"><img id="Logo1" src="${pageContext.request.contextPath}/resources/images/new2.png" alt="error"></a>
							<li class=" active"><a href="index.html" id="na"
								class="hyper "><span>Home</span></a></li>

							<li class="dropdown "><a href="#"
								class="dropdown-toggle  hyper" id="na" data-toggle="dropdown"><span>Categories<b
										class="caret"></b></span></a>
								<ul class="dropdown-menu multi">
									<div class="row">
										<div class="col-sm-3">
											<ul class="multi-column-dropdown">

												<li><a href="kitchen.html"><i
														class="fa fa-angle-right" aria-hidden="true"></i>Men's</a></li>
												<li><a href="kitchen.html"><i
														class="fa fa-angle-right" aria-hidden="true"></i>Women's</a></li>
												<li><a href="kitchen.html"> <i
														class="fa fa-angle-right" aria-hidden="true"></i>Kid's
												</a></li>
												<li><a href="kitchen.html"><i
														class="fa fa-angle-right" aria-hidden="true"></i>Footwear's</a></li>

											</ul>

										</div>
										<div class="col-sm-3">

											<ul class="multi-column-dropdown">
												<li><a href="kitchen.html"><i
														class="fa fa-angle-right" aria-hidden="true"></i>Electronics</a></li>
												<li><a href="kitchen.html"><i
														class="fa fa-angle-right" aria-hidden="true"></i>Computer</a></li>
												<li><a href="kitchen.html"><i
														class="fa fa-angle-right" aria-hidden="true"></i>Accessories</a></li>
												<li><a href="kitchen.html"><i
														class="fa fa-angle-right" aria-hidden="true"></i>Home &
														Furniture</a></li>
												<li><a href="kitchen.html"><i
														class="fa fa-angle-right" aria-hidden="true"></i>TV &
														Appliances</a></li>

											</ul>

										</div>
										<div class="col-sm-3">

											<ul class="multi-column-dropdown">

												<li><a href="kitchen.html"><i
														class="fa fa-angle-right" aria-hidden="true"></i>Sports</a></li>
												<li><a href="kitchen.html"><i
														class="fa fa-angle-right" aria-hidden="true"></i>Books</a></li>
												<li><a href="kitchen.html"><i
														class="fa fa-angle-right" aria-hidden="true"></i> Beauty &
														Health </a></li>
												<li><a href="kitchen.html"><i
														class="fa fa-angle-right" aria-hidden="true"></i>More</a></li>

											</ul>
										</div>
										<div class="col-sm-3 w3l">
											<a href="kitchen.html"><img src="${pageContext.request.contextPath}/resources/images/april3.jpg"
												class="img-responsive" alt=""></a>
										</div>
										<div class="clearfix"></div>
									</div>
								</ul></li>
							<li class="dropdown"><a href="#"
								class="dropdown-toggle hyper" id="na" data-toggle="dropdown"><span>
										Personal Care <b class="caret"></b>
								</span></a>
								<ul class="dropdown-menu multi multi1">
									<div class="row">
										<div class="col-sm-3">
											<ul class="multi-column-dropdown">
												<li><a href="product"><i
														class="fa fa-angle-right" aria-hidden="true"></i>
														PRODUCT </a></li>
												<li><a href="care.html"><i
														class="fa fa-angle-right" aria-hidden="true"></i>Baby Care</a></li>
												<li><a href="care.html"><i
														class="fa fa-angle-right" aria-hidden="true"></i>Cosmetics</a></li>
												<li><a href="care.html"><i
														class="fa fa-angle-right" aria-hidden="true"></i>Deo &
														Purfumes</a></li>

											</ul>

										</div>
										<div class="col-sm-3">

											<ul class="multi-column-dropdown">
												<li><a href="care.html"> <i
														class="fa fa-angle-right" aria-hidden="true"></i>Hair Care
												</a></li>
												<li><a href="care.html"><i
														class="fa fa-angle-right" aria-hidden="true"></i>Oral Care</a></li>
												<li><a href="care.html"><i
														class="fa fa-angle-right" aria-hidden="true"></i>Personal
														Hygiene</a></li>
												<li><a href="care.html"><i
														class="fa fa-angle-right" aria-hidden="true"></i>Skin care</a></li>

											</ul>

										</div>
										<div class="col-sm-3">

											<ul class="multi-column-dropdown">
												<li><a href="care.html"><i
														class="fa fa-angle-right" aria-hidden="true"></i> Fashion
														Accessories </a></li>
												<li><a href="care.html"><i
														class="fa fa-angle-right" aria-hidden="true"></i>Grooming
														Tools</a></li>
												<li><a href="care.html"><i
														class="fa fa-angle-right" aria-hidden="true"></i>Shaving
														Need</a></li>
												<li><a href="care.html"><i
														class="fa fa-angle-right" aria-hidden="true"></i>Sanitary
														Needs</a></li>

											</ul>
										</div>
										<div class="col-sm-3 w3l">
											<a href="care.html"><img src="${pageContext.request.contextPath}/resources/images/me1.png"
												class="img-responsive" alt=""></a>
										</div>
										<div class="clearfix"></div>
									</div>
								</ul></li>
							<li class="dropdown"><a href="#"
								class="dropdown-toggle hyper" id="na" data-toggle="dropdown"><span>Household<b
										class="caret"></b></span></a>
								<ul class="dropdown-menu multi multi2">
									<div class="row">
										<div class="col-sm-3">
											<ul class="multi-column-dropdown">
												<li><a href="hold.html"><i
														class="fa fa-angle-right" aria-hidden="true"></i>Cleaning
														Accessories</a></li>
												<li><a href="hold.html"><i
														class="fa fa-angle-right" aria-hidden="true"></i>CookWear</a></li>
												<li><a href="hold.html"><i
														class="fa fa-angle-right" aria-hidden="true"></i>Detergents</a></li>
												<li><a href="hold.html"><i
														class="fa fa-angle-right" aria-hidden="true"></i>Gardening
														Needs</a></li>

											</ul>

										</div>
										<div class="col-sm-3">

											<ul class="multi-column-dropdown">
												<li><a href="hold.html"><i
														class="fa fa-angle-right" aria-hidden="true"></i>Kitchen &
														Dining</a></li>
												<li><a href="hold.html"><i
														class="fa fa-angle-right" aria-hidden="true"></i>KitchenWear</a></li>
												<li><a href="hold.html"><i
														class="fa fa-angle-right" aria-hidden="true"></i>Pet Care</a></li>
												<li><a href="hold.html"><i
														class="fa fa-angle-right" aria-hidden="true"></i>Plastic
														Wear</a></li>

											</ul>

										</div>
										<div class="col-sm-3">

											<ul class="multi-column-dropdown">
												<li><a href="hold.html"><i
														class="fa fa-angle-right" aria-hidden="true"></i>Pooja
														Needs</a></li>
												<li><a href="hold.html"><i
														class="fa fa-angle-right" aria-hidden="true"></i>Serveware</a></li>
												<li><a href="hold.html"><i
														class="fa fa-angle-right" aria-hidden="true"></i>Safety
														Accessories</a></li>
												<li><a href="hold.html"><i
														class="fa fa-angle-right" aria-hidden="true"></i>Festive
														Decoratives </a></li>

											</ul>
										</div>
										<div class="col-sm-3 w3l">
											<a href="hold.html"><img src="${pageContext.request.contextPath}/resources/images/me2.png"
												class="img-responsive" alt=""></a>
										</div>
										<div class="clearfix"></div>
									</div>
								</ul></li>

							<li><a href="codes.html" id="na" class="hyper"> <span>Arrival</span></a></li>
							<li><a href="contact.html" id="na" class="hyper"><span>Contact
										Us</span></a></li>
						</ul>
					</div>
				</nav>
				<div class="cart">

					<span class="fa fa-shopping-cart my-cart-icon"><span
						class="badge badge-notify my-cart-badge"></span></span>
				</div>
				<div class="clearfix"></div>
			</div>

		</div>
	</div>
	<!--Video-->
	<div data-vide-bg="${pageContext.request.contextPath}/video/Media">


	<script>
		window.jQuery
				|| document
						.write('<script src="js/vendor/jquery-1.11.1.min.js"><\/script>')
	</script>
	<script src="${pageContext.request.contextPath}/js/jquery.vide.min.js"></script> --%>