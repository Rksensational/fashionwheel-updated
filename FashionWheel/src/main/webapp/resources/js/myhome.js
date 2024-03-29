$(function() {

	switch (menu) {

	case 'About Us':
		$('#about').addClass('active');
		break;
	case 'Categorys':
		$('#cat').addClass('active');
		break;
	case 'Contact Us':
		$('#contact').addClass('active');
		break;
	case 'Sign Up':
		$('#register').addClass('active');
		break;
	case 'All Products':
		$('#listProducts').addClass('active');
		break;
	case 'Manage Products':
		$('#manageproducts').addClass('active');
		break;
	case 'Shopping Cart':
		$('#shoppingCart').addClass('active');
		break;
	default:
		if (menu == "Home")
			break;
		$('#listProducts').addClass('active');
		$('#manageproducts').addClass('active');
		$('#a_' + menu).addClass('active');
		break;

	}
	
	// for handling CSRF token
	var token = $('meta[name="_csrf"]').attr('content');
	var header = $('meta[name="_csrf_header"]').attr('content');
	
	if((token!=undefined && header !=undefined) && (token.length > 0 && header.length > 0)) {		
		// set the token header for the ajax request
		$(document).ajaxSend(function(e, xhr, options) {			
			xhr.setRequestHeader(header,token);			
		});				
	}

	/*
	 * var Products = [ [ '10','New1'], [ '100','New2' ], [ '101','New3' ], [
	 * '120','New4' ], [ '111','New5' ], [ '100','New6' ] ];
	 */

	// Jquery DATATABLE
	var $table = $('#productListTable');
	$('#adminProductTable').DataTable( {
	    responsive: true
	} );

	if ($table.length) {

		var jsonUrl = '';
		if (window.categoryId == '') {
			jsonUrl = window.contextRoot + '/json/data/all/products';
		} else {
			jsonUrl = window.contextRoot + '/json/data/category/'
					+ window.categoryId + '/products';
		}

		$table
				.DataTable({

					lengthMenu : [ [ 2, 5, 10, -1 ],
							[ '2 Records', '5 Records', '10 Records', 'ALL' ] ],
					pageLength : 5,
					/* data : Products */

					ajax : {
						url : jsonUrl,
						dataSrc : ''
					},
					columns : [

							{
								data : 'code',

								mRender : function(data, type, row) {
									return '<img src="' + window.contextRoot
											+ '/resources/images/' + data
											+ '.jpeg" class="dataTableImg"/>';
								}
							},
							{
								data : 'name'
							},
							{
								data : 'brand'
							},
							{
								data : 'quantity',
								mRender : function(data, type, row) {

									if (data < 1) {
										return '<span style="color:red">Out of Stock!</span>';
									}

									return data;

								}
							},
							{
								data : 'unitPrice',
								mRender : function(data, type, row) {
									return '&#8377; ' + data
								}
							},
							{
								data : 'id',
								bSortable : false,
								mRender : function(data, type, row) {

									var str = '';
									str += '<a href="'
											+ window.contextRoot
											+ '/show/'
											+ data
											+ '/product" class="btn btn-primary"><span class="glyphicon glyphicon-eye-open"></span></a> &#160;';

									
									if(userRole !== 'ADMIN') {
										if (row.quantity < 1) {
											str += '<a href="javascript:void(0)" class="btn btn-success disabled"><span class="glyphicon glyphicon-shopping-cart"></span></a>';
										} else {
	
											str += '<a href="'
													+ window.contextRoot
													+ '/cart/add/'
													+ data
													+ '/product" class="btn btn-success"><span class="glyphicon glyphicon-shopping-cart"></span></a>';
										}
									}
									else {
										str += '<a href="'
											+ window.contextRoot
											+ '/manage/'
											+ data
											+ '/product" class="btn btn-warning"><span class="glyphicon glyphicon-pencil"></span></a>';
									}
									
									return str;

								}

							},

					]

				});
	}

});

// dismissing the alert after 3 second
var $alert = $('.alert');

if ($alert.length) {

	setTimeout(function() {
		$alert.fadeOut('slow');
	}, 3000)

}

// --- bootbox
$('.switch input[type="checkbox"]').on('change',function() {

					var checkbox = $(this);
					var checked = checkbox.prop('checked');
					var dMsg = (checked) ? 'You Want To Activate The Product ?': 
											'You Want To Deactivate The Product ?';

					var value = checkbox.prop('value');

					bootbox.confirm({
								size : 'medium',
								title : 'Product Activation & Deactivation',
								message : dMsg,
								callback : function(confirmed) {

									if (confirmed) {

										console.log(value);
										bootbox.alert({
													size : 'medium',
													title : 'Information',
													message : 'You are Going to Perform Operation On Products Form Now'
															+ value
												});

									} else {
										checkbox.prop('checked', !checked);
									}

								}
							});

				});
// DATATABLE for ADMIN

var $adminProductsTable = $('#adminProductsTable'); 

if ($adminProductsTable.length) {

	var jsonUrl = window.contextRoot + '/json/data/admin/all/products';

	$adminProductsTable
			.DataTable({

				lengthMenu : [ [ 8, 15, 30, -1 ],
						[ '8 Records', '15 Records', '30 Records', 'ALL' ] ],
				pageLength : 15,
				/* data : Products */

				ajax : {
					url : jsonUrl,
					dataSrc : ''
				},
				columns : [

						{
							data : 'id'
						},

						{
							data : 'code',
							bSortable : false,
							mRender : function(data, type, row) {
								return '<img src="' + window.contextRoot
										+ '/resources/images/' + data
										+ '.jpeg" class="adminDataTableImg"/>';
							}
						},
						{
							data : 'name'
						},
						{
							data : 'brand'
						},

						{
							data : 'unitPrice',
							mRender : function(data, type, row) {
								return '&#8377; ' + data
							}
						},
						{
							data : 'quantity',
							mRender : function(data, type, row) {

								if (data < 1) {
									return '<span style="color:red">Out of Stock!</span>';
								}

								return data;

							}
						},
						{
							data : 'active',
							bSortable : false,
							mRender : function(data, type, row) {

								var str = '';

								str += '<div class="container"><label class="switch">';
								if (data) {
									str += '<input type="checkbox" checked="checked" value="'
											+ row.id + '" />'
								} else {
									str += '<input type="checkbox" value="'
											+ row.id + '" />'
								}

								str += '<div class="slider round"></div></lable></div>';
								return str;

							}

						},
						{
							data : 'id',
							bSortable : false,
							mRender : function(data, type, row) {

								var str = '';
								// got some error forget to use " here
								str += '<a href= "' + window.contextRoot
										+ '/manage/' + data
										+ '/product" class="btn btn-warning">';
								str += '<span class="glyphicon glyphicon-pencil"></span></a>';

								return str;

							}
						}

				],
				
			/*	initComplete: function () {
					var api = this.api();
					$('.switch input[type="checkbox"]').on('change',function() {

						var checkbox = $(this);
						var checked = checkbox.prop('checked');
						var dMsg = (checked) ? 'You Want To Activate The Product?': 
												'You Want To Deactivate The Product?';

						var value = checkbox.prop('value');

						bootbox.confirm({
									size : 'medium',
									title : 'Product Activation & Deactivation',
									message : dMsg,
									callback : function(confirmed) {

										if (confirmed) {

											console.log(value);
											
											var activationUrl = window.contextRoot + '/manage/product/' + value + '/activation';
											
											$.post(activationUrl,function(data){
												
												bootbox.alert({
													size : 'medium',
													title : 'Informaion',
													message : data
												});
												
											})
											
											

										} else {
											checkbox.prop('checked', !checked);
										}

									}
								});

					});*/
	/*	}
			});
}*/
			initComplete: function () {
						var api = this.api();
						api.$('.switch input[type="checkbox"]').on('change',function() {

							var checkbox = $(this);
							var checked = checkbox.prop('checked');
							var dMsg = (checked) ? 'You Want To Activate The Product?': 
													'You Want To Deactivate The Product?';

							var value = checkbox.prop('value');

							bootbox.confirm({
										size : 'medium',
										title : 'Product Activation & Deactivation',
										message : dMsg,
										callback : function(confirmed) {

											if (confirmed) {

												console.log(value);
												
												var activationUrl = window.contextRoot + '/manage/product/' + value + '/activation';
												
												$.post(activationUrl,function(data){
													bootbox.alert({
														size : 'medium',
														title : 'Information',
														message : data
													});
													
												});


											} else {
												checkbox.prop('checked', !checked);
											}

										}
									});

						});
							
					}
				});
	}
	
	
	
	
	// jQuery Validation Code

	//methods required for validation
	
	function errorPlacement(error, element) {
		// Add the 'help-block' class to the error element
		error.addClass("help-block");
		
		// add the error label after the input element
		error.insertAfter(element);
		
		
		// add the has-feedback class to the
		// parent div.validate in order to add icons to inputs
		element.parents(".validate").addClass("has-feedback");	

	}	
	
	
	
	// validating the product form element	
	// fetch the form element
	$categoryForm = $('#categoryForm');
	
	if($categoryForm.length) {
		
		$categoryForm.validate({			
				rules: {
					name: {
						required: true,
						minlength: 3
					},
					description: {
						required: true,
						minlength: 3					
					}				
				},
				messages: {					
					name: {
						required: 'Please enter product name!',
						minlength: 'Please enter atleast five characters'
					},
					description: {
						required: 'Please enter Description!',
						minlength: 'Please enter atleast five characters'
					}					
				},
				errorElement : "em",
				errorPlacement : function(error, element) {
					errorPlacement(error, element);
				}				
			}
		
		);
		
	}
	
	/*validating the loginform*/
	
	// validating the product form element	
	// fetch the form element
	$loginForm = $('#loginForm');
	
	if($loginForm.length) {
		
		$loginForm.validate({			
				rules: {
					username: {
						required: true,
						email: true
						
					},
					password: {
						required: true
					}				
				},
				messages: {					
					username: {
						required: 'Please enter your email!',
						email: 'Please enter a valid email address!'
					},
					password: {
						required: 'Please enter your password!'
					}					
				},
				errorElement : "em",
				errorPlacement : function(error, element) {
					// Add the 'help-block' class to the error element
					error.addClass("help-block");
					
					// add the error label after the input element
					error.insertAfter(element);
				}				
			}
		
		);
		
	}
	/*------*/
	/* handle refresh cart*/	
	$('button[name="refreshCart"]').click(function(){
		var cartLineId = $(this).attr('value');
		var countField = $('#count_' + cartLineId);
		var originalCount = countField.attr('value');
		// do the checking only the count has changed
		if(countField.val() !== originalCount) {	
			// check if the quantity is within the specified range
			if(countField.val() < 1 || countField.val() > 3) {
				// set the field back to the original field
				countField.val(originalCount);
				bootbox.alert({
					size: 'medium',
			    	title: 'Error',
			    	message: 'Product Count should be minimum 1 and maximum 3!'
				});
			}
			else {
				// use the window.location.href property to send the request to the server
				var updateUrl = window.contextRoot + '/cart/' + cartLineId + '/update?count=' + countField.val();
				window.location.href = updateUrl;
			}
		}
	});			

		



									/*	// validate code for category jquery

										var $categoryForm = $('#categoryForm');

										if ($categoryForm.length) {

											$categoryForm
													.validate({

														rules : {

															name : {

																required : true,
																minlength : 2
															},

															description : {
																required : true
															}
														},

														messages : {

															name : {

																required : 'Please add The Name Of Category',
																minlength : ' Name should Not Less Than 2 Characters '
															},

															description : {
																required : 'Please add a Description Here !!'

															}
														},
														errorElement : 'em',
														errorPlacement : function(
																error, element) {
															// HelpBlock
															error
																	.addClass('help-block');

															error
																	.insertAfter(element);
														}
													});
										}
*/
										/*// ------

										 validating the loginform 

										// validating the product form element
										// fetch the form element
										$loginForm = $('#loginForm');

										if ($loginForm.length) {

											$loginForm
													.validate({
														rules : {
															username : {
																required : true,
																email : true

															},
															password : {
																required : true
															
														},
														messages : {
															username : {
																required : 'Please enter your email!',
																email : 'Please enter a valid email address!'
															},
															password : {
																required : 'Please enter your password!'
															}
														},
													
													});*/
												
								
