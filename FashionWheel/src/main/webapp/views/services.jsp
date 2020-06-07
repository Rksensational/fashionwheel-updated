<!DOCTYPE html>
<html lang="en">
<head>
<title>Services</title>
<script type="application/x-javascript"> addEventListener("load", function() { setTimeout(hideURLbar, 0); }, false);
		function hideURLbar(){ window.scrollTo(0,1); } </script>
<!-- Stylesheet -->
<link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/chocolat.css" type="text/css" media="screen"><!-- chocolate css for gallery light box-->
<link href='${pageContext.request.contextPath}/resources/css/aos.css' rel='stylesheet prefetch' type="text/css" media="all" />

<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/resources/css/jquery.singlefull.css">
<link href="${pageContext.request.contextPath}/resources/css/style.css" rel="stylesheet" type="text/css" media="all" />
<!-- //stylesheet -->
<link href="${pageContext.request.contextPath}/resources/css/Top1brand.css"
	rel="stylesheet">

</head>

<body>


<div class="fandt">
	<div class="container">
		<div class="col-md-6 features">
			<h3>Our Services</h3>
			<div class="support">
				<div class="col-md-2 ficon hvr-rectangle-out">
					<i class="fa fa-user " aria-hidden="true"></i>
				</div>
				<div class="col-md-10 ftext">
					<h4>24/7 online free support</h4>
					<p>Praesent rutrum vitae ligula sit amet vehicula. Donec eget libero nec dolor tincidunt vulputate.</p>
				</div>
				<div class="clearfix"></div>
			</div>
			<div class="shipping">
				<div class="col-md-2 ficon hvr-rectangle-out">
					<i class="fa fa-bus" aria-hidden="true"></i>
				</div>
				<div class="col-md-10 ftext">
					<h4>Free shipping</h4>
					<p>Praesent rutrum vitae ligula sit amet vehicula. Donec eget libero nec dolor tincidunt vulputate.</p>
				</div>	
				<div class="clearfix"></div>
			</div>
			<div class="money-back">
				<div class="col-md-2 ficon hvr-rectangle-out">
					<i class="fa fa-money" aria-hidden="true"></i>
				</div>
				<div class="col-md-10 ftext">
					<h4>100% money back</h4>
					<p>Praesent rutrum vitae ligula sit amet vehicula. Donec eget libero nec dolor tincidunt vulputate.</p>
				</div>	
				<div class="clearfix"></div>				
			</div>
		</div>
		<div class="col-md-6 testimonials">
			<div class="test-inner">
				<div class="wmuSlider example1 animated wow slideInUp" data-wow-delay=".5s">
					<div class="wmuSliderWrapper">
						<article style="position: absolute; width: 100%; opacity: 0;"> 
							<div class="banner-wrap">
								<img src="${pageContext.request.contextPath}/images/1.jpg" alt=" " class="img-responsive" />
								<p>Nam elementum magna id nibh pretium suscipit varius tortor. Phasellus in lorem sed massa consectetur fermentum. Praesent pellentesque sapien euismod.</p>
								<h4># Andrew</h4>
							</div>
						</article>
						<article style="position: absolute; width: 100%; opacity: 0;"> 
							<div class="banner-wrap">
								<img src="${pageContext.request.contextPath}/images/2.jpg" alt=" " class="img-responsive" />
								<p>Morbi semper, risus dignissim sagittis iaculis, diam est ornare neque, accumsan risus tortor at est. Vivamus auctor quis lacus sed interdum celerisque.</p>
								<h4># Lucy</h4>
							</div>
						</article>
						<article style="position: absolute; width: 100%; opacity: 0;">
							<div class="banner-wrap">
								<img src="${pageContext.request.contextPath}/images/3.jpg" alt=" " class="img-responsive" />
								<p>Fusce non cursus quam, in hendrerit sem. Nam nunc dui, venenatis vitae porta sed, sagittis id nisl. Pellentesque celerisque  eget ullamcorper vehicula. </p>
								<h4># Martina</h4>
							</div>
						</article>
					</div>
				</div>
			</div>
		</div>
		<div class="clearfix"></div>
	</div>
				<script src="${pageContext.request.contextPath}/js/jquery.wmuSlider.js"></script> 
								<script>
									$('.example1').wmuSlider();         
								</script> 
</div>
<!-- top-brands -->
	<div class="top-brands">
		<div class="container">
			<h3>Top Brands</h3>
			<div class="sliderfig">
				<ul id="flexiselDemo1">			
					<li>
						<img src="${pageContext.request.contextPath}/images/4.png" alt=" " class="img-responsive" />
					</li>
					<li>
						<img src="${pageContext.request.contextPath}/images/5.png" alt=" " class="img-responsive" />
					</li>
					<li>
						<img src="${pageContext.request.contextPath}/images/6.png" alt=" " class="img-responsive" />
					</li>
					<li>
						<img src="${pageContext.request.contextPath}/images/7.png" alt=" " class="img-responsive" />
					</li>
					<li>
						<img src="${pageContext.request.contextPath}/images/46.jpg" alt=" " class="img-responsive" />
					</li>
				</ul>
			</div>
					<script type="text/javascript">
							$(window).load(function() {
								$("#flexiselDemo1").flexisel({
									visibleItems: 4,
									animationSpeed: 1000,
									autoPlay: false,
									autoPlaySpeed: 3000,    		
									pauseOnHover: true,
									enableResponsiveBreakpoints: true,
									responsiveBreakpoints: { 
										portrait: { 
											changePoint:480,
											visibleItems: 1
										}, 
										landscape: { 
											changePoint:640,
											visibleItems:2
										},
										tablet: { 
											changePoint:768,
											visibleItems: 3
										}
									}
								});
								
							});
					</script>
					<script type="text/javascript" src="${pageContext.request.contextPath}/js/jquery.flexisel.js"></script>
		</div>
	</div>
<!-- //top-brands -->
<!-- newsletter -->
	<div class="newsletter">
		<div class="container">
			<div class="col-md-6 w3agile_newsletter_left">
				<h3>Newsletter</h3>
				<p>Excepteur sint occaecat cupidatat non proident, sunt.</p>
			</div>
			<div class="col-md-6 w3agile_newsletter_right">
				<form action="#" method="post">
					<input type="email" name="Email" value="Email" onfocus="this.value = '';" onblur="if (this.value == '') {this.value = 'Email';}" required="">
					<input type="submit" value="Subscribe" />
				</form>
			</div>
			<div class="clearfix"> </div>
		</div>
	</div>
<!-- //newsletter -->


<%-- <!-- services -->
<div data-target="services" id="services">
	<div
		class="jarallax  w3ls-services w3ls-section principles-grids principles-grids1">
		<h3 class="w3l-head aos-init aos-animate" data-aos="zoom-in">
			<span class="title-head">S</span>ervices
		</h3>
		<div class="scrollbar agileits-services-scroll">
			<div class="abt-btm agileits w3layouts aos-init aos-animate">
				<div
					class="col-md-3 col-sm-3 agileits elite-services1 w3layouts bottom-gds"
					data-aos="fade-up">
					<div class="bott-img agileits w3layouts">
						<div class="icon-holder agileits w3layouts">
							<span class="fa fa-laptop agileits w3layouts service-icon"
								aria-hidden="true"></span>
						</div>
						<h4 class="mission agileits w3layouts">Webdesign</h4>
						<div class="description agileits w3layouts">
							<p>enean commodo ligula eget dolor </p>
							<a href="#">Read More</a>
						</div>
					</div>
				</div>
				<div
					class="col-md-3 col-sm-3 agileits elite-services2 w3layouts bottom-gds"
					data-aos="fade-down">
					<div class="bott-img agileits w3layouts">
						<div class="icon-holder agileits w3layouts">
							<span class="fa fa-grav agileits w3layouts service-icon"
								aria-hidden="true"></span>
						</div>
						<h4 class="mission agileits w3layouts">Graphic design</h4>
						<div class="description agileits w3layouts">
							<p>enean commodo ligula </p>
							<a href="#">Read More</a>
						</div>
					</div>
				</div>
				<div
					class="col-md-3 col-sm-3 agileits elite-services3 w3layouts bottom-gds"
					data-aos="fade-up">
					<div class="bott-img agileits w3layouts">
						<div class="icon-holder agileits w3layouts">
							<span
								class="fa fa-caret-square-o-up agileits w3layouts service-icon"
								aria-hidden="true"></span>
						</div>
						<h4 class="mission agileits w3layouts">UI Design</h4>
						<div class="description agileits w3layouts">
							<p>enean commodo ligula eget dolor dolor sit </p>
							<a href="#">Read More</a>
						</div>
					</div>
				</div>
				<div
					class="col-md-3 col-sm-3 agileits elite-services4 w3layouts bottom-gds"
					data-aos="fade-down">
					<div class="bott-img agileits w3layouts">
						<div class="icon-holder agileits w3layouts">
							<span class="fa fa-adjust agileits w3layouts service-icon"
								aria-hidden="true"></span>
						</div>
						<h4 class="mission agileits w3layouts">SEO</h4>
						<div class="description agileits w3layouts">
							<p>enean commodo ligula eget dolor dolor sit </p>
							<a href="#">Read More</a>
						</div>
					</div>
				</div>
				<div class="clearfix"></div>
			</div>
		</div>
	</div>
</div>

<script src="js/jquery.singlefull.js"></script>
    <script type="text/javascript">
    $(document).ready(function() {
        $("#single").singlefull({
            speed: 1000,
            loopScroll:true,
            loopTop:false,
            loopBottom:true
        });
        // Just a javascript alignment to the content
        function alignContent() {
            var windowHeight = $(window).height();

            $('.content-resizer').each(function() {
                contentHeight = $(this).height();
                $(this).css('top', (windowHeight / 2) - (contentHeight / 2));
            });

            $('.alt-img').html($("#img-example").attr('src'));
        }

        // Execute the function
        alignContent();

        // Bind the function to the window.onresize
        $(window).bind("resize", function() {
            alignContent();
        });


    });
    </script>

	<!-- //Banner-plugin -->
<script src="js/jarallax.js"></script>
<script src="js/SmoothScroll.min.js"></script>
<script type="text/javascript">
	/* init Jarallax */
	$('.jarallax').jarallax({
		speed: 0.5,
		imgWidth: 1366,
		imgHeight: 768
	})
</script>
<!-- here starts scrolling icon -->
			
		<!-- start-smoth-scrolling -->
		<script type="text/javascript" src="js/move-top.js"></script>
			<!-- smooth-scrolling-of-move-up -->
		<script type="text/javascript">
			$(document).ready(function() {
				/*
				var defaults = {
					containerID: 'toTop', // fading element id
					containerHoverID: 'toTopHover', // fading element hover id
					scrollSpeed: 1200,
					easingType: 'linear' 
				};
				*/
				
				$().UItoTop({ easingType: 'easeOutQuart' });
				
			});
		</script>
	<!-- //smooth-scrolling-of-move-up --> 
		<script type="text/javascript" src="${pageContext.request.contextPath}/resources/js/easing.js"></script>
		<script type="text/javascript">
			jQuery(document).ready(function($) {
				$(".scroll").click(function(event){		
					event.preventDefault();
					$('html,body').animate({scrollTop:$(this.hash).offset().top},1000);
				});
			});
		</script>
		<!-- /ends-smoth-scrolling -->
	<!-- //here ends scrolling icon -->
<!-- PopUp-Box-JavaScript -->
		<script src="${pageContext.request.contextPath}/resources/js/jquery.chocolat.js"></script>
		<script type="text/javascript">
			$(function() {
				$('.filtr-item a').Chocolat();
			});
		</script>
	<!-- //PopUp-Box-JavaScript -->	
	<!-- fliter-JavaScript -->
		<script src="${pageContext.request.contextPath}/resources/js/jquery.filterizr.js"></script>
		<script src="${pageContext.request.contextPath}/resources/js/controls.js"></script>
		<script type="text/javascript">
			$(function() {
				$('.filtr-container').filterizr();
			});
		</script>
	<!-- //fliter-JavaScript -->
	
	<script src='${pageContext.request.contextPath}/resources/js/aos.js'></script>
	<script src="${pageContext.request.contextPath}/resources/js/aosindex.js"></script>
	<!-- /js files --> --%>

</body>
<!-- //services -->