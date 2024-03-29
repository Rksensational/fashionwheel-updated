<%-- <!DOCTYPE html>
<html lang="en">
    <head>
		<meta charset="UTF-8" />
        <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1"> 
        <title>Swatch Book with CSS3 and jQuery</title>
        <meta name="viewport" content="width=device-width, initial-scale=1.0"> 
        <meta name="description" content="Animated Swatch Book with CSS3 and jQuery" />
        <meta name="keywords" content="swatch book, css3, jquery, animated, rotation, transition, folding fan" />
        <meta name="author" content="Codrops" />
        <link rel="shortcut icon" href="../favicon.ico"> 
        <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/resources/css/demo.css" />
        <link href='http://fonts.googleapis.com/css?family=Open+Sans+Condensed:700,300,300italic' rel='stylesheet' type='text/css'>
		<script type="text/javascript" src="js/modernizr.custom.79639.js"></script> 
		<!--[if lte IE 8]><style>.main{display:none;} .support-note .note-ie{display:block;}</style><![endif]-->
    </head>
    <body>
        <div class="container">
		
			<!-- Codrops top bar -->
            <div class="codrops-top clearfix">
                <a href="http://tympanus.net/Development/3DPanelLayout/">
                    <strong>&laquo; Previous Demo: </strong>3D Panel Layout
                </a>
                <span class="right">
					<a href="http://fontello.com/">Icon Font made with Fontello</a>
                    <a href="http://tympanus.net/codrops/2012/07/02/swatch-book-with-css3-and-jquery/">
                        <strong>Back to the Codrops Article</strong>
                    </a>
                </span>
            </div><!--/ Codrops top bar -->
			
			<header>
			
				<h1><span>Swatch Book</span> with CSS3 &amp; jQuery</h1>
				<h2>Fun with skeuomorphism &amp; CSS3 rotations</h2>
				
				<nav class="codrops-demos">
					<a href="index.html">Demo 1</a>
					<a href="index2.html">Demo 2</a>
					<a class="current-demo" href="index3.html">Demo 3</a>
					<a href="index4.html">Demo 4</a>
					<a href="index5.html">Demo 5</a>
				</nav>
				
				<div class="support-note"><!-- let's check browser support with modernizr -->
					<!--span class="no-cssanimations">CSS animations are not supported in your browser</span-->
					<span class="no-csstransforms">CSS transforms are not supported in your browser</span>
					<!--span class="no-csstransforms3d">CSS 3D transforms are not supported in your browser</span-->
					<span class="no-csstransitions">CSS transitions are not supported in your browser</span>
					<span class="note-ie">Sorry, only modern browsers.</span>
				</div>
				
			</header>
			
			<section class="main">
			
				<div id="sb-container" class="sb-container">
				
					<div>
						<span class="sb-icon icon-cog"></span>
						<h4><span>All Settings</span></h4>
					</div>
					<div>
						<span class="sb-icon icon-flight"></span>
						<h4><span>User Modes</span></h4>
					</div>	
					<div>
						<span class="sb-icon icon-eye"></span>
						<h4><span>Browse All</span></h4>
					</div>	
					<div>
						<span class="sb-icon icon-install"></span>
						<h4><span>Install App</span></h4>
					</div>	
					<div>
						<span class="sb-icon icon-bag"></span>
						<h4><span>Productivity</span></h4>
					</div>	
					<div>
						<span class="sb-icon icon-globe"></span>
						<h4><span>All Options</span></h4>
					</div>	
					<div>
						<span class="sb-icon icon-picture"></span>
						<h4><span>User Images</span></h4>											
					</div>	
					<div>
						<span class="sb-icon icon-video"></span>
						<h4><span>User Videos</span></h4>											
					</div>	
					<div>
						<span class="sb-icon icon-download"></span>
						<h4><span>Download App</span></h4>											
					</div>	
					<div>
						<span class="sb-icon icon-mobile"></span>
						<h4><span>Mobile Theme</span></h4>											
					</div>
					<div>
						<span class="sb-icon icon-camera"></span>
						<h4><span>Digital App</span></h4>											
					</div>
					<div>
						<h4><span>Profile</span></h4>
						<span class="sb-toggle">Click to open/close</span>
						<h5><span>We &hearts; color</span></h5>											
					</div>
					
					
				</div><!-- sb-container -->
				
			</section>
			
        </div>
        <script type="text/javascript" src="http://ajax.googleapis.com/ajax/libs/jquery/1.8.3/jquery.min.js"></script>
		<script type="text/javascript" src="js/jquery.swatchbook.js"></script>
		<script type="text/javascript">
			$(function() {
			
				$( '#sb-container' ).swatchbook( {
					// number of degrees that is between each item
					angleInc : 15,
					neighbor : 15,
					// if it should be closed by default
					initclosed : true,
					// index of the element that when clicked, triggers the open/close function
					// by default there is no such element
					closeIdx : 11
				} );
			
			});
		</script>
    </body>
</html> --%>