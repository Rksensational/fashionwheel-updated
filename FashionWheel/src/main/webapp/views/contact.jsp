<br>
<hr>
<head>

<!-- Custom styles for this template -->

<!-- Basically change my contact us page theme -->
<link
	href="${pageContext.request.contextPath}/resources/css/flatythem.css"
	rel="stylesheet">


<!-- Internal CSS -->
<style>

/*-- contact --*/
.w3ls_map iframe {
	width: 100%;
	min-height: 300px;
}

.contact_wthreerow, .agileits_mail_grid_right_grid:nth-child(2) {
	margin-top: 3em;
}

.w3l_contact_form {
	padding-right: 5em;
}

.contact_wthreerow h4 {
	font-size: 1.7em;
	color: #000000;
	margin-bottom: 1em;
}

.w3l_contact_form input[type="text"], .w3l_contact_form input[type="email"],
	.w3l_contact_form textarea {
	outline: none;
	width: 100%;
	padding: .9em 1em;
	font-size: 14px;
	color: #888;
	border: none;
	border: 1px solid #777;
	background: none;
}

.w3l_contact_form input[type="email"] {
	margin: 1.5em 0;
}

.w3l_contact_form textarea {
	min-height: 120px;
	resize: none;
	margin: 1.5em 0;
}

.w3l_contact_form input[type="submit"] {
	outline: none;
	padding: .8em 3em;
	font-size: 15px;
	color: #fff;
	border: none;
	background: #00BCD4;
	-webkit-transition: .5s all;
	-moz-transition: .5s all;
	transition: .5s all;
}

.w3l_contact_form input[type="submit"]:hover {
	background: #333;
	color: #fff;
}

ul.contact_info li {
	list-style-type: none;
	margin-top: 1.5em;
	letter-spacing: 1px;
	color: #5a5a5a;
	font-size: 1em;
}

ul.contact_info li span {
	color: #fff;
	background: #333;
	width: 40px;
	height: 40px;
	text-align: center;
	line-height: 40px;
	border-radius: 100%;
	-webkit-border-radius: 50%;
	-moz-border-radius: 50%;
	-o-border-radius: 50%;
	-ms-border-radius: 50%;
	margin-right: 1em;
	font-size: .9em;
}

ul.contact_info li a {
	color: #5a5a5a;
	text-decoration: none;
}

ul.contact_info li a:hover {
	color: #4CAF50;
}

.contact, .agile_testimonials, .packages, .w3-about, .travel {
	padding: 5em 0;
}

.agileits_mail_grid_right_grid p {
	font-size: 16px;
	line-height: 28px;
	color: #333;
}

.w3-about h4 {
	text-transform: uppercase;
	margin: 0em 0 1em;
	color: #000;
	font-size: 1.4em;
	line-height: 32px;
	text-align: left;
	font-weight: 500;
}

.last h4 {
	text-align: center;
	text-transform: capitalize;
}

.about-top p {
	text-align: left;
}

.last p {
	text-align: center;
}

.middle-img img {
	width: 100%;
}
/*-- //contact --*/
</style>
</head>

<!-- contact -->
<section class="w3ls-section contact" id="contact">
	<div class="container">
		<div class="w3ls-title">
			<h3 class="heading">
				Get in <span>touch</span>
			</h3>
		</div>
		<div class="w3ls_map">
			<iframe
				src="https://maps.google.com/maps?q=new delhi&t=&z=13&ie=UTF8&iwloc=&output=embed"
				style="border: 0"></iframe>
		</div>

		<div class="contact_wthreerow agileits-w3layouts">

			<div class="col-md-7 w3l_contact_form">
				<h4>Contact Form</h4>
				<form action="#" method="post">
					<input type="text" name="Name" value="Name"
						onfocus="this.value = '';"
						onblur="if (this.value == '') {this.value = 'Name';}" required="">
					<input type="email" name="Email" value="Email"
						onfocus="this.value = '';"
						onblur="if (this.value == '') {this.value = 'Email';}" required="">
					<input type="text" name="Phone" value="Phone"
						onfocus="this.value = '';"
						onblur="if (this.value == '') {this.value = 'Phone';}" required="">
					<textarea name="Message" onfocus="this.value = '';"
						onblur="if (this.value == '') {this.value = 'Message...';}"
						required="">Message...</textarea>
					<input type="submit" value="Submit">
				</form>
			</div>
			<div class="col-md-5 agileits_w3layouts_contact_gridl">
				<div class="agileits_mail_grid_right_grid">
					<h4>Contact Info</h4>
					<p>Itaque earum rerum hic tenetur a sapiente delectus, ut aut
						reiciendis voluptatibus maiores alias consequatur. Nunc id dui
						vitae urna tincidunt varius.</p>
					<ul class="contact_info">
						<li><span class="fa fa-map-marker" aria-hidden="true"></span>1234k
							Avenue, 4th block, 3FB, New Jersey.</li>
						<li><span class="fa fa-envelope" aria-hidden="true"></span><a
							href="mailto:info@example.com">info@example.com</a></li>
						<li><span class="fa fa-phone" aria-hidden="true"></span>+1(21)
							244 567 5678</li>
						<li><span class="fa fa-globe" aria-hidden="true"></span><a
							href="#">info@website.com</a></li>
					</ul>
				</div>
			</div>
			<div class="clearfix"></div>
		</div>
	</div>
</section>
<!-- //contact -->