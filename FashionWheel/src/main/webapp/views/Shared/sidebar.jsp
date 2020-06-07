
<html>
<head>
<!-- Sf=spring form -->
<%@taglib prefix="sf" uri="http://www.springframework.org/tags/form"%>
<!--MDB core Css-->
<link
	href="https://cdnjs.cloudflare.com/ajax/libs/mdbootstrap/4.5.4/css/mdb.min.css"
	rel="stylesheet">

<link
	href="${pageContext.request.contextPath}/resources/css/flowregister.css"
	rel="stylesheet">

<script
	src="${pageContext.request.contextPath}/resources/js/jquery.wmuSlider.js"></script>

<script src="${pageContext.request.contextPath}/resources/js/jquery-2.1.3.js"></script>
<script src="${pageContext.request.contextPath}/resources/js/jquery.autocomplete.min.js"></script>

<style>
.search-form .form-group input.form-control::-webkit-input-placeholder {
	display: none;
}

.search-form .form-group input.form-control::-moz-placeholder {
	display: none;
}

.form-group {
	position: relative;
	width: 0%;
	min-width: 60px;
	height: 60px;
	overflow: hidden;
	transition: width 1s;
	backface-visibility: hidden;
}

.form-group input.form-control {
	position: absolute;
	top: 0;
	right: 0;
	outline: none;
	width: 100%;
	height: 60px;
	margin: 0;
	z-index: 10;
}

input[type="text"].form-control {
	-webkit-appearence: none;
	-webkit-border-radius: 0;
	background-color: yellow; color : black;
	font-size: 20px;
	color: black;
}

.form-control-submit, .search-label {
	width: 60px;
	height: 60px;
	position: absolute;
	right: 0;
	top: 0;
	padding: 0;
	margin: 0;
	text-align: center;
	cursor: pointer;
	line-height: 60px;
	background: yellow;
}

.form-control-submit {
	background: green; /*stupid IE*/
	opacity: 0;
	color: transparent;
	border: none;
	outline: none;
	z-index: -1;
}

.search-label {
	z-index: 90;
}

.form-group.sb-search-open, .no-js .sb-search-open {
	width: 100%;
}

.form-group.sb-search-open .search-label, .no-js .sb-search .search-label
	{
	background: black;
	color: #fff;
	z-index: 11;
}

.form-group.sb-search-open .form-control-submit, .no-js .form-control .form-control-submit
	{
	z-index: 90;
}

#autocomplete { margin: 0 auto; }
</style>
<script>
	$(document).ready(
			function() {
				$('#search').on("click", (function(e) {
					$(".form-group").addClass("sb-search-open");
					e.stopPropagation()
				}));
				$(document).on(
						"click",
						function(e) {
							if ($(e.target).is("#search") === false
									&& $(".form-control").val().length == 0) {
								$(".form-group").removeClass("sb-search-open");
							}
						});
				$(".form-control-submit").click(function(e) {
					$(".form-control").each(function() {
						if ($(".form-control").val().length == 0) {
							e.preventDefault();
							$(this).css('border', '2px solid red');

						}
					})
				})
			})
			
	
			
</script>
<script>
var arr= ["test", "apple", "orange"];

$('#autocomplete').autocomplete({
	lookup: arr
});
</script>



</head>

<!-- Search Widget -->
<div class="card my-4" style="padding: 0px; padding-bottom: 0px;">
	<h5 class="card-header lead font-weight-bold"
		style="color: white; font-size: 20px; background-color: #6699ff; font-family: 'Poiret One', cursive;">Search</h5>
	<div class="card-body">
		<center>
			<p class="card-header font-weight-bold"
				style="color: black; background-color: #00e58b;">Search Products</p>
		</center>
		<form class="search-form" role="search">
			<div class="form-group pull-right" id="search">
				<input type="text" id="autocomplete" class="form-control"
					 placeholder="Search Product"/>
				<button type="submit" class="form-control form-control-submit">Submit</button>
				<span class="search-label"><i
					class="glyphicon glyphicon-search"></i></span>
			</div>
	</form>

	<!-- <div class="input-group">
                <input type="text" class="form-control" placeholder="Search for...">
                <span class="input-group-btn1">
                  <button class="btn btn-secondary" type="button">Go!</button>
                </span>
              </div> -->

</div>
<div class="card-footer"></div>
</div>

<hr>
<!-- Categories Widget -->
<div class="card my-4">
	<h5 class="card-header lead font-weight-bold"
		style="color: white; font-size: 20px; background-color: #6699ff; font-family: 'Poiret One', cursive;">Categories</h5>
	<div class="card-body">
		<div class="row">
			<!-- <div class="lead font-weight-bold" id="lead">Categories</div> -->

			<div class="col-lg-12">
				<div class="list-group">
					<ul class="list-unstyled mb-0">

						<c:forEach items="${categories}" var="category">
							<li><a
								href="${contextRoot}/show/category/${category.id}/products"
								class="list-group-item" id="a_${category.name}">${category.name}</a></li>
						</c:forEach>
					</ul>


					<!-- <a href = "#" class = "list-group-item">Category 1</a>
<a href = "#" class = "list-group-item">Category 2</a>
<a href = "#" class = "list-group-item">Category 3</a> -->
				</div>
			</div>
		</div>
	</div>
</div>

<!-- Side Widget -->
<!-- <div class="card my-4">
            <h5 class="card-header">Side Widget</h5>
            <div class="card-body">
              You can put anything you want inside of these side widgets. They are easy to use, and feature the new Bootstrap 4 card containers!
            </div>
          </div> -->

<%-- <div class="card my-4">
            <h5 class="card-header">Side Widget</h5>
            <div class="card-body">
          <div class="wmuSlider example1">
						<div class="">
							<article style="position: absolute; width: 100%; opacity: 0;"> 
								<div class="banner-wrap">
									<div class="w3agile_special_deals_grid_left_grid1">
										<img src="${pageContext.request.contextPath}/resources/images/1.png" alt=" " class="img-responsive" />
										<p>Quis autem vel eum iure reprehenderit qui in ea voluptate 
											</p>
										<h4>Laura</h4>
									</div>
								</div>
							</article>
							<article style="position: absolute; width: 100%; opacity: 0;"> 
								<div class="banner-wrap">
									<div class="w3agile_special_deals_grid_left_grid1">
										<img src="${pageContext.request.contextPath}/resources/images/2.png" alt=" " class="img-responsive" />
										<p>Quis autem vel eum iure reprehenderit qui in ea voluptate 
										</p>
										<h4>Michael</h4>
									</div>
								</div>
							</article>
							<article style="position: absolute; width: 100%; opacity: 0;"> 
								<div class="banner-wrap">
									<div class="w3agile_special_deals_grid_left_grid1">
										<img src="${pageContext.request.contextPath}/resources/images/3.png" alt=" " class="img-responsive" />
										<p>Quis autem vel eum iure reprehenderit qui in ea voluptate 
											r</p>
										<h4>Rosy</h4>
									</div>
								</div>
							</article>
						</div>
					</div>
					 </div>
					</div> --%>






</html>