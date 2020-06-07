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

</head>

<body>
<!-- services -->
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
	<!-- /js files -->

</body>
<!-- //services -->