<%-- <%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>LOGIN Page</title>
<h1>
	Hiii User...... Login as a User or Admin here...... !!!!
	</h1>
	
	<!-- Latest compiled and minified CSS -->
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">

<!-- jQuery library -->
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>

<!-- Latest compiled JavaScript -->
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>


<div class="container">
  <div class="row">
    <div class="col-12 col-sm-6 col-md-6">
       <form>
        <button class="btn btn-primary btn-lg" type="submit" formaction="${pageContext.request.contextPath}/signupAdmin">SIGN UP AS a ADMIN </button>
       </form>
    </div>
    <div class="col-12 col-sm-6 col-md-6">
      <form>
        <button class="btn btn-primary btn-lg" type="submit" formaction="${pageContext.request.contextPath}/loginUser">SIGN UP AS A USER</button>
       </form>
    </div>
     <div class="col-10 col-sm-6 col-md-6">
      <form>
        <button class="btn btn-primary btn-lg" type="submit" formaction="${pageContext.request.contextPath}/loginUser">GUEST</button>
       </form>
    </div>
    
  </div>
</div>

		<form>
			<input type="button" value="Login as a Admin"
				onclick="window.location.href='http://localhost:8083/FashionWheel/login'" />
		</form>

		<form>
			<input type="button" value="Login as a User"
				onclick="window.location.href='http://localhost:8083/FashionWheel/loginUser'" />
		</form>
</head>
<body>

</body>
</html> --%>