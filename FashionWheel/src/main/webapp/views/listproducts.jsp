<%-- <%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib uri = "http://java.sun.com/jsp/jstl/core" prefix = "c" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
  <link rel="stylesheet" href="//cdn.datatables.net/1.10.16/css/jquery.dataTables.min.css">
  <script src="//cdn.datatables.net/1.10.16/js/jquery.dataTables.min.js"></script>
  <script src="https://cdn.datatables.net/1.10.16/js/dataTables.bootstrap.min.js"></script>
  <script type="text/javascript">
  $(document).ready(function() {
	  
	  $.ajax({
		  url:'${pageContext.request.contextPath}/getjsonproducts',
		  method: 'post',
		  dataType: 'json',
		  success: function (data){
			  $('#myDataTable').dataTable({
				  data: data,
				  columns: [
					  {'data' : 'Pname'},
					  {'data' : 'Pcost'},
				  ]		  
			  });
		  }
	  }); 
  });
  </script>
  
<title>Insert title here</title>
</head>
<body>
<a href="${pageContext.request.contextPath}/logout">logout</a>
<h1>Welcome Mr/Ms. ${un}</h1>
<table>
<c:forEach items="${ lp }" var = "products">
<tr>
	<td> ${products.getPname() }</td>
	<td> ${products.getPcost() }</td>
</tr>
</c:forEach>
</table>
<table id="myDataTable" class="table table-striped table-bordered" cellspacing="0" width="100%">
<thead>
<tr>
	<th>Pname</th>
	<th>Pcost</th>
</tr>
</thead>
</table>

</body>
</html> --%>

<br>
<hr>
<div class="container">

	<div class="row">


		<!-- Would be to display sidebar -->
		<div class="col-md-3">

			<%@include file="./Shared/sidebar.jsp"%>

		</div>

		<!-- to display the actual products -->
		<div class="col-md-9">

			<!-- Added breadcrumb component -->
			<div class="row" style="font-size:15px;">

				<div class="col-lg-12">

					<c:if test="${userClickAllProducts == true}">
					
						<script>
							window.categoryId = '';
						</script>
					
						<ol class="breadcrumb" style=" color:black;">


							<li><a href="${contextRoot}/home">Home</a></li>
							<li class="active" style=" color:red;">All Products</li>


						</ol>
					</c:if>
					
					
					<c:if test="${userClickCategoryProducts == true}">
						<script>
							window.categoryId = '${category.id}';
						</script>
					
						<ol class="breadcrumb">


							<li><a href="${contextRoot}/home">Home</a></li>
							<li class="active"style=" color:purple;">Category</li>
							<li class="active"style=" color:green;">${category.name}</li>


						</ol>
					</c:if>
					

				</div>


			</div>

			
			<div class="row font-weight-bold">
			
				<div class="col-xs-12 font-weight-bold" >
				
					
					<table id="productListTable"class="table table-striped table-borderd table-hover ">
					
					
						<thead class="lead font-weight-bold">
						
							<tr class="lead font-weight-bold">
								<th></th>
								<th class="font-weight-bold">Name</th>
								<th class="font-weight-bold">Brand</th>
								<th class="font-weight-bold">Quantity Available</th>
								<th class="font-weight-bold">Price</th>
								<th></th>
							
							</tr>
						
						</thead>
					

						<tfoot>
						
							<tr>
								<th></th>
								<th>Name</th>
								<th>Brand</th>
								<th>Quantity Available</th>
								<th>Price</th>
								<th></th>
							
							</tr>
						
						</tfoot>
					</table>
				
				</div>
			
			</div>


		</div>



	</div>






</div>