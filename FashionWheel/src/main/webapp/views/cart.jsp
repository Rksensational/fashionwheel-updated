<html>

<head>

<link
	href="https://fonts.googleapis.com/css?family=Dancing+Script|Exo+2|Inconsolata|Josefin+Sans|Permanent+Marker|Poiret+One|Roboto+Mono|Satisfy|Ubuntu+Condensed"
	rel="stylesheet">

</head>

<body class="bg4">
	<br>
	<br>
	<c:set var="availableCount" value="${userModel.cart.cartLines}" />

	<center>
		<img
			src="${pageContext.request.contextPath}/resources/images/cart11.png"
			class="img-responsive" alt="cart"
			style="width: 100px; height: 100px; border: 1px solid BLACK; margin-top: 15px;">
	</center>
	<hr>
	<div class="container-fluid">


		<c:if test="${not empty message}">

			<div class="alert alert-info">
				<h3 class="text-center">${message}</h3>
			</div>

		</c:if>

		<c:choose>
			<c:when test="${not empty cartLines}">
				<table id="cart" class="table table-hover" style="width: 100%">
					<thead>
						<tr>
							<th class="font-weight-bold"
								style="width: 50%; color: black; font-size: 12px;">Product</th>
							<th class="font-weight-bold"
								style="width: 10%; color: black; font-size: 12px;">Price</th>
							<th class="font-weight-bold"
								style="width: 8%; color: black; font-size: 12px;">Quantity</th>&nbsp;
							<th class="font-weight-bold text-center"
								style="width: 22%; color: black; font-size: 12px;">Subtotal</th>
							<th class="font-weight-bold"
								style="width: 10%; color: black; font-size: 12px;"></th>
						</tr>
					</thead>
					<tbody>
						<c:forEach items="${cartLines}" var="cartLine">
							<c:if test="${cartLine.available == false}">
								<c:set var="availableCount" value="${availableCount - 1}" />
							</c:if>

							<tr>
								<td data-th="Product">
									<div class="row ">
										<div class="col-sm-4 hidden-xs">
											<img src="${images}/${cartLine.product.code}.jpeg"
												alt="${cartLine.product.name}"
												style="border: 2px white solid;"
												class="img-responsive dataTableImg" /> <br>

										</div>
										<br>
										<div class="col-sm-10">
											<h4
												style="color: black; font-size: 15px; font-family: 'Exo 2', sans-serif;"
												class="nomargin">${cartLine.product.name}
												<c:if test="${cartLine.available == false}">
													<strong style="color: red">(Not Available)</strong>
												</c:if>
											</h4>
											<p class="font-weight-bold"
												style="color: black; font-size: 15px; font-family: 'Poiret One', cursive;">
												Brand :
												<p1 class="font-weight-bold"
													style="color:blue; font-size: 20px; font-family: 'Poiret One', cursive;">${cartLine.product.brand}</p1>
											</p>
											<hr>
											<p
												style="color: black; font-size: 15px; font-family: 'Satisfy', cursive;">Description
												:
											<hr>
											<p1 class="font-weight-bold"
												style="color: red; font-size: 15px; font-family: 'Poiret One', cursive;">${cartLine.product.description}</p1>
										</div>
									</div>
								</td>
								<td class="font-weight-bold"
									style="color: black; font-size: 15px;" data-th="Price">
									&#8377; ${cartLine.buyingPrice} /-</td>
								<td data-th="Quantity"><input type="number"
									class="font-weight-bold" style="color: black; font-size: 12px;"
									id="count_${cartLine.id}" class="form-control text-center"
									value="${cartLine.productCount}" min="1" max="3"></td>
								<td style="color: black; font-size: 15px;" data-th="Subtotal"
									class="font-weight-bold text-center">&#8377;
									${cartLine.total} /-</td>
								<td class="actions" data-th=""><c:if
										test="${cartLine.available == true}">
										<button type="button" style="font-size: 15px;"
											name="refreshCart" class="btn btn-info btn-sm"
											value="${cartLine.id}">
											<span class="glyphicon glyphicon-refresh"></span>
										</button>
									</c:if> <a href="${contextRoot}/cart/${cartLine.id}/remove"
									class="btn btn-danger btn-sm" style="font-size: 15px;"><span
										class="glyphicon glyphicon-trash"></span></a></td>
							</tr>
						</c:forEach>
					</tbody>
					<tfoot>
						<tr class="visible-xs">
							<td style="color: red; font-size: 15px;"
								class="text-center font-weight-bold"><strong>Total
									&#8377; ${userModel.cart.grandTotal}</strong></td>
						</tr>

						<tr>
							<td><br>
							<a href="${contextRoot}/show/all/products"
								class="btn btn-warning"><span
									class="glyphicon glyphicon-chevron-left"></span> Continue
									Shopping</a></td>
							<td colspan="2" class="hidden-xs"></td>
							<td class="hidden-xs text-center"><strong>Total
									&#8377; ${userModel.cart.grandTotal}/-</strong></td>

							<c:choose>
								<c:when test="${availableCount != 0}">
									<td><a href="${contextRoot}/cart/validate"
										class="btn btn-success btn-block">Checkout <span
											class="glyphicon glyphicon-chevron-right"></span></a></td>
								</c:when>
								<c:otherwise>
									<td><a href="javascript:void(0)"
										class="btn btn-success btn-block disabled"><strike>Checkout
												<span class="glyphicon glyphicon-chevron-right"></span>
										</strike></a></td>
								</c:otherwise>
							</c:choose>
						</tr>
					</tfoot>
				</table>


			</c:when>

			<c:otherwise>

				<div class="jumbotron">

					<h3 class="text-center">Your Cart is Empty!</h3>

				</div>

			</c:otherwise>
		</c:choose>




	</div>
</body>
</html>
