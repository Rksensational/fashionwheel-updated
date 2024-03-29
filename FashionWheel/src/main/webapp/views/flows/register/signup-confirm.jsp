<%@include file="../shared/flow-header.jsp"%>
<head>
<link rel="shortcut icon" href="${pageContext.request.contextPath}/resources/images/favicon.ico"/>
<meta name="application-name" content="Fashion Wheel"/>
<meta name="msapplication-TileColor" content="#7a7a7a"/>
<meta charset="utf-8">
</head>
<body class="bg2">
<div class="container">
	
	<div class="row">
	
		<div class="col-sm-6">
	
			<div class="panel panel-primary">
				
				<div class="panel-heading" id="tit">
					<h4>Personal Details</h4>
				</div>
			
				<div class="panel-body" id="confirm">
					<div class="text-center">
						<h3>Name : <strong>${registerModel.user.firstName} ${registerModel.user.lastName}</strong></h3>
						<h4>Email : <strong>${registerModel.user.email}</strong></h4>
						<h4>Contact : <strong>${registerModel.user.contactNumber}</strong></h4>
						<h4>Role : <strong>${registerModel.user.role}</strong></h4>
						<p>
							<a href="${flowExecutionUrl}&_eventId_personal" class="btn btn-cyan">Edit</a>
						</p>
					</div>
				</div>
			
			</div>
					
		
		</div>
		
		<div class="col-sm-6">
		
			<div class="panel panel-primary">
				
				<div class="panel-heading" id="tit">
					<h4>Billing Address</h4>
				</div>
			
				<div class="panel-body" id="confirm">
					<div class="text-center">
						<p>${registerModel.billing.addressLineOne}, </p>
						<p>${registerModel.billing.addressLineTwo}, </p>
						<p>${registerModel.billing.city} -  ${registerModel.billing.postalCode}, </p>
						<p>${registerModel.billing.state}</p>
						<p>${registerModel.billing.country}</p>
						<p>
							<a href="${flowExecutionUrl}&_eventId_billing" class="btn btn-cyan">Edit</a>
						</p>
					</div>
				</div>
			
			</div>
		
		</div>
	
	</div>
	
	<div class="row">
		
		<div class="col-sm-4 col-sm-offset-4">
			
			<div class="text-center">
				
				<a href="${flowExecutionUrl}&_eventId_submit" class="btn btn-lg btn-success">Confirm</a>
				
			</div>
			
		</div>
		
	</div>

</div>
<%@include file="../shared/flow-header.jsp"%>
</body>