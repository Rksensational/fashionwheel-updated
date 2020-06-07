<br>
<br>
<br>
<html>
<head>

<!-- ICON NEEDS FONT AWESOME FOR CHEVRON UP ICON -->
<link href="//netdna.bootstrapcdn.com/font-awesome/3.2.1/css/font-awesome.css" rel="stylesheet">


<!-- Css For Scroll top -->
<style>
#return-to-top {
    position: fixed;
    bottom: 20px;
    right: 20px;
    background: rgb(0, 0, 0);
    background: rgba(0, 0, 0, 0.7);
    width: 50px;
    height: 50px;
    display: block;
    text-decoration: none;
    -webkit-border-radius: 35px;
    -moz-border-radius: 35px;
    border-radius: 35px;
    display: none;
    -webkit-transition: all 0.3s linear;
    -moz-transition: all 0.3s ease;
    -ms-transition: all 0.3s ease;
    -o-transition: all 0.3s ease;
    transition: all 0.3s ease;
}
#return-to-top i {
    color: #fff;
    margin: 0;
    position: relative;
    left: 16px;
    top: 13px;
    font-size: 19px;
    -webkit-transition: all 0.3s ease;
    -moz-transition: all 0.3s ease;
    -ms-transition: all 0.3s ease;
    -o-transition: all 0.3s ease;
    transition: all 0.3s ease;
}
#return-to-top:hover {
    background: rgba(0, 0, 0, 0.9);
}
#return-to-top:hover i {
    color: #fff;
    top: 5px;
}

</style>


<!------ Include the above in your HEAD tag ---------->
<%-- <link
	href="${pageContext.request.contextPath}/resources/css/toptoup.css"
	rel="stylesheet"> --%>
<link href="https://maxcdn.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css" rel="stylesheet">
</head>
<hr>
<body>
<div class="footer" >
	<div class="container-fluid">
		<div class="col-md-3 footer-grids fgd1">
		
		<ul>
			<li>1234k Avenue, 4th block,</li>
			<li>New York City.</li>
			<li><a href="mailto:info@example.com">info@example.com</a></li>
			<a href="#"><i class="fa fa-twitter" aria-hidden="true"></i></a>
			<a href="#"><i class="fa fa-dribbble" aria-hidden="true"></i></a>
			<a href="#"><i class="fa fa-facebook" aria-hidden="true"></i></a>
			<a href="#"><i class="fa fa-linkedin" aria-hidden="true"></i></a>
		</ul>
		</div>
		<div class="col-md-3 footer-grids fgd3">
			<h4>Products</h4> 
			<ul>
				<li><a href="jewellery.html">Jewellery</a></li>
				<li><a href="cosmetics.html">Cosmetics</a></li>
				<li><a href="Shoes.html">Shoes</a></li>
				<li><a href="deos.html">Deos</a></li>
			</ul>
		</div>
		<div class="col-md-3 footer-grids fgd4">
			<h4>My Account</h4> 
			<ul>
			
				<li><a href="${pageContext.request.contextPath}/login"><i class="fa fa-sign-in" aria-hidden="true"></i>&nbsp;&nbsp;&nbsp; Login</a></li>
				<li><a href="${pageContext.request.contextPath}/register"> <i class="fa fa-user-plus" aria-hidden="true"></i>&nbsp;&nbsp;&nbsp;Register</a></li>
				<li><a href="${contextRoot}/cart/show"><i class="fa fa-opencart" aria-hidden="true"></i>&nbsp;&nbsp;&nbsp;My Cart</a></li>
				<li><a href="error404"> <i class="fa fa-user" aria-hidden="true"></i>&nbsp;&nbsp;&nbsp; Payments</a></li>
			</ul>
		</div>
		<div class="col-md-3 footer-grids fgd2">
		<h4>Find Us</h4><p>
                           <div class="myframegmap"> 
                           <iframe width="259" height="200" id="gmap_canvas"
									src="https://maps.google.com/maps?q=new delhi&t=&z=13&ie=UTF8&iwloc=&output=embed"
									frameborder="0" scrolling="yes" marginheight="0" marginwidth="0"></iframe>
                    </div></p>
		</div>
		<div class="clearfix"></div>
		<p class="copy-right"><strong>Copyright © Fashion Wheel 2018 <br>All right reserved.</strong>| Design by <a href="${contextRoot}/home"> Fashion Wheel</a></p>
	</div>
</div>

	
	
	<!-- start-smoth-scrolling -->
<%-- 
	<script type="text/javascript" src="${pageContext.request.contextPath}/resources/js/move-top.js"></script>
	<script type="text/javascript" src="${pageContext.request.contextPath}/resources/js/easing.js"></script>
	<script type="text/javascript">
		jQuery(document).ready(function ($) {
			$(".scroll").click(function (event) {
				event.preventDefault();
				$('html,body').animate({
					scrollTop: $(this.hash).offset().top
				}, 1000);
			});
		});
	</script> --%>
	<!-- start-smoth-scrolling -->

<!-- here stars scrolling icon -->
	<!-- <script type="text/javascript">
		$(document).ready(function () {
			/*
				var defaults = {
				containerID: 'toTop', // fading element id
				containerHoverID: 'toTopHover', // fading element hover id
				scrollSpeed: 1200,
				easingType: 'linear' 
				};
			*/

			$().UItoTop({
				easingType: 'easeOutQuart'
			});

		});
	</script> -->
	<!-- //here ends scrolling icon -->
	
	
	<!-- Return to Top -->
<a href="javascript:" id="return-to-top" title="Click to return on the top page" data-toggle="tooltip" data-placement="left"><i class="icon-chevron-up"></i></a>

<script type="text/javascript">
//===== Scroll to Top ==== 
$(window).scroll(function() {
    if ($(this).scrollTop() >= 50) {        // If page is scrolled more than 50px
        $('#return-to-top').fadeIn(200);    // Fade in the arrow
    } else {
        $('#return-to-top').fadeOut(200);   // Else fade out the arrow
    }
});
$('#return-to-top').click(function() {      // When arrow is clicked
    $('body,html').animate({
        scrollTop : 0                       // Scroll to top of body
    }, 500);
});

</script>
	
	</body>
	</html>


<!-- <div class="footer">
	<div class="footer1">
<div class="container-fluid">
	
	<div class="container">
	<div class="row">
		<div class="col-sm-3">
		  <h2>About Us</h2>
		  
		</div>
		<div class="col-sm-3">
			<h2>Home</h2>
			<p>
				<i id="footer-item" class="fa fa-home">&nbsp;</i>      <a href="#"> Home</a><br>
				<i id="footer-item" class="fa fa-user-o">&nbsp;</i>    <a href="#"> About Us</a><br>
				<i id="footer-item" class="fa fa-map-marker">&nbsp;</i>   <a href="#"> Contact Us</a><br>
				<i id="footer-item" class="fa fa-briefcase">&nbsp;</i> <a href="#"> Services</a><br>
				<i id="footer-item" class="fa fa-question-circle"></i><a href="#"> Term & Conditions</a><br><br>


			</p>


		</div>
		<div class="col-sm-3 ">
			<h2>Contact Us</h2>
			<p >
			 
				<i id="footer-item" class="fa fa-phone"></i>    <a href="tel:0123456789"> +0123456789</a><br>
				<i id="footer-item" class="fa fa-envelope"></i>    <a href="mailto:abc@abc.com"> abc@abc.com</a><br>
				<i id="footer-item" class="fa fa-map-marker"></i>     New-Delhi Capital, India
			</p>
				
			
		</div>
		<div class="col-sm-3">
		  <h2>Find Us</h2><p>
                           <div class="myframegmap"> 
                           <iframe width="259" height="200" id="gmap_canvas"
									src="https://maps.google.com/maps?q=new delhi&t=&z=13&ie=UTF8&iwloc=&output=embed"
									frameborder="0" scrolling="yes" marginheight="0" marginwidth="0"></iframe>
                    </div></p>
                    <br>
		</div>
	</div>
</div>
</div></div>
<br>
<br>
<div class ="container" id="social">
				<h3>Follow us on</h3>
				<ul class="social-top">
				<li>
					<li><a href="#" class="icon facebook"><i class="fa fa-facebook" aria-hidden="true"></i><span></span></a></li>
					<li><a href="#" class="icon twitter"><i class="fa fa-twitter" aria-hidden="true"></i><span></span></a></li>
					<li><a href="#" class="icon pinterest"><i class="fa fa-pinterest-p" aria-hidden="true"></i><span></span></a></li>
					<li><a href="#" class="icon youtube-play"><i class="fa fa-youtube-play" aria-hidden="true"></i><span></span></a></li>
					</li>
				</ul>	
</div>


<div class="container-fluid" style="background-color:white;">

 <hr style="margin-bottom:0px; margin-top:30px; padding:0px;">
        <div class="row " id="sub-two">

            <div class="col-md-4">
                <div class="vertical-line text-center">
                    <span class="glyphicon glyphicon-map-marker" id="Service1"></span>
                    <h4>TRACK YOUR ORDER</h4>
                </div>
            </div>

            <div class="col-md-4">
                <div class="vertical-line text-center">
                    <span class="glyphicon glyphicon-refresh" id="Service1"></span>
                    <h4>FREE & EASY RETURNS</h4>
                </div>
            </div>

            <div class="col-md-4">
                <div style="margin:8px;" class="vertical-line text-center">
                    <span class="glyphicon glyphicon-remove-circle" id="Service1"></span>
                    <h4 style="color:#6d6c6c;">ONLINE CANCELLATIONS</h4>
                </div>
            </div>
            

        </div>
        <hr style="margin-bottom:15px; margin-top:0px; padding:0px;">

       
</div>
    </div>


<div class="footer2">
	<div class="container-fluid">
	<div class="container">
		<div class="row">
			<div class="clear30"></div>
			<div class="col-sm-12 text-center"><p><strong>Copyright © Fashion Wheel 2018 <br>All right reserved.</strong></p></div>
			<div class="clear30"></div>
		</div>
		
	</div>
	
</div>
</div> -->



<!-- 
    <div class="container footer">

        <hr>

        Footer
        <footer>
            <div class="row">
                <div class="col-lg-12">
                    <p>Copyright &copy; Fashion Wheel 2018 </p>
                </div>
            </div>
        </footer>
        
        

    </div>
 -->

<!-- 	<div>
		<footer class="footer">
			<div class="container">
				<div class="row">
					<div class="col-sm-3">
						<h4 class="title">Fashion Wheel</h4>
						<p class="para">Lorem ipsum dolor sit amet, consectetur
							adipiscing elit. Proin suscipit, libero a molestie consectetur,
							sapien elit lacinia mi.</p>
						<ul class="social-icon">
							<a href="#" class="social"><i class="fa fa-facebook" id="fb"
								aria-hidden="true"></i></a>
							<a href="#" class="social"><i class="fa fa-twitter" id="tw"
								aria-hidden="true"></i></a>
							<a href="#" class="social"><i class="fa fa-instagram"
								id="insta" aria-hidden="true"></i></a>
							<a href="#" class="social"><i class="fa fa-youtube-play"
								id="you" aria-hidden="true"></i></a>
							<a href="#" class="social"><i class="fa fa-google" id="goo"
								aria-hidden="true"></i></a>
						</ul>
					</div>
					<div class="col-sm-3">
						<h4 class="title">My Account</h4>
						<span class="acount-icon"> <a href="#"><i
								class="fa fa-heart" aria-hidden="true"></i> Wish List</a> <a
							href="#"><i class="fa fa-cart-plus" aria-hidden="true"></i>
								Cart</a> <a href="#"><i class="fa fa-user" aria-hidden="true"></i>
								Profile</a> <a href="#"><i class="fa fa-globe"
								aria-hidden="true"></i> Language</a>
						</span>
					</div>
					<div class="col-sm-3">
						<h4 class="title">Category</h4>
						<div class="category">
							<a href="#">men</a> <a href="#">women</a> <a href="#">boy</a> <a
								href="#">girl</a> <a href="#">bag</a> <a href="#">teshart</a> <a
								href="#">top</a> <a href="#">shos</a> <a href="#">glass</a> <a
								href="#">kit</a> <a href="#">baby dress</a> <a href="#">kurti</a>
						</div>
					</div>
					<div class="col-sm-3">
						<h4 class="title">Useful link</h4>
						<ul class="footer-ul">
							<li><a href="#">About Us </a></li>
							<li><a href="#">About Us </a></li>
							<li><a href="#">About Us </a></li>
							<li><a href="#">About Us </a></li>
							<li><a href="#">About Us </a></li>
							<li><a href="product">Product</a></li>
						</ul>
					</div>
					<div>
						<h4 class="title">Direction</h4>
						<div>
							<div>
								<iframe width="259" height="200" id="gmap_canvas"
									src="https://maps.google.com/maps?q=new delhi&t=&z=13&ie=UTF8&iwloc=&output=embed"
									frameborder="0" scrolling="no" marginheight="0" marginwidth="0"></iframe>
							</div>
						</div>
					</div>

				</div>
				<hr>

				<div class="row text-center">© 2018. Made by Rksensational.</div>
			</div>


		</footer>
	</div> -->