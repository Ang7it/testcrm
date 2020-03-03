<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<meta name="description" content="eMail-CRM">
<meta name="author" content="eMail-CRM">

<link rel="shortcut icon" href="assets/images/favicon.ico">

<title>eMail CRM</title>

<link href="assets/css/bootstrap.min.css" rel="stylesheet"
	type="text/css" />
<link href="assets/css/core.css" rel="stylesheet" type="text/css" />
<link href="assets/css/components.css" rel="stylesheet" type="text/css" />
<link href="assets/css/icons.css" rel="stylesheet" type="text/css" />
<link href="assets/css/pages.css" rel="stylesheet" type="text/css" />
<link href="assets/css/responsive.css" rel="stylesheet" type="text/css" />
<link
	href="assets/plugins/bootstrap-datepicker/css/bootstrap-datepicker.min.css"
	rel="stylesheet">
<!-- HTML5 Shiv and Respond.js IE8 support of HTML5 elements and media queries -->
<!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
<!--[if lt IE 9]>
        <script src="https://oss.maxcdn.com/libs/html5shiv/3.7.0/html5shiv.js"></script>
        <script src="https://oss.maxcdn.com/libs/respond.js/1.3.0/respond.min.js"></script>
        <![endif]-->

<script src="assets/js/modernizr.min.js"></script>

</head>
<body class="fixed-left">

	<!-- Begin page -->
	<div id="wrapper">

		<!-- Top Bar Start -->
		<div class="topbar">

			<!-- LOGO -->
			<div class="topbar-left">
				<div class="text-center">
					<a href="home.html" class="logo"><img
						src="assets/images/emblem.png" style="height: 40px;" /> <span>
							eMail CRM</span></a>
					<!-- Image Logo here -->
					<!--<a href="index.html" class="logo">-->
					<!--<i class="icon-c-logo"> <img src="assets/images/logo_sm.png" height="42"/> </i>-->
					<!--<span><img src="assets/images/logo_light.png" height="20"/></span>-->
					<!--</a>-->
				</div>
			</div>

			<!-- Button mobile view to collapse sidebar menu -->
			<div class="navbar navbar-default" role="navigation">
				<div class="container">
					<div class="">
						<div class="pull-left">
							<button
								class="button-menu-mobile open-left waves-effect waves-light">
								<i class="md md-menu"></i>
							</button>
							<span class="clearfix"></span>
						</div>




						<ul class="nav navbar-nav navbar-right pull-right">

							<li class="dropdown top-menu-item-xs"><a href=""
								class="dropdown-toggle profile waves-effect waves-light"
								data-toggle="dropdown" aria-expanded="true"><img
									src="assets/images/users/user.png" alt="user-img"
									class="img-circle"> </a>
								<ul class="dropdown-menu">
									<li><a href="javascript:void(0)"><i
											class="ti-user m-r-10 text-custom"></i> Profile</a></li>
									<li><a href="javascript:void(0)"><i
											class="ti-settings m-r-10 text-custom"></i> Settings</a></li>
									<li><a href="javascript:void(0)"><i
											class="ti-lock m-r-10 text-custom"></i> Lock screen</a></li>
									<li class="divider"></li>
									<li><a href="javascript:void(0)"><i
											class="ti-power-off m-r-10 text-danger"></i> Logout</a></li>
								</ul></li>
						</ul>
					</div>
					<!--/.nav-collapse -->
				</div>
			</div>
		</div>
		<!-- Top Bar End -->


		<!-- ========== Left Sidebar Start ========== -->

		<div class="left side-menu">
			<div class="sidebar-inner slimscrollleft">
				<!--- Divider -->
				<div id="sidebar-menu">
					<ul>

						<li class="text-muted menu-title">Navigation</li>

						<li class="has_sub"><a href="home.html" class="waves-effect"><i
								class="fa fa-home"></i> <span> Dashboard </span> <span
								class="menu-arrow"></span></a></li>
						<li class="has_sub"><a href="filter.html"
							class="waves-effect"><i class="fa fa-filter"></i> <span>
									Filter Data </span> <span class="menu-arrow"></span></a></li>

					</ul>
					<div class="clearfix"></div>
				</div>
				<div class="clearfix"></div>
			</div>
		</div>
		<!-- Left Sidebar End -->

		<!-- ============================================================== -->
		<!-- Start right Content here -->
		<!-- ============================================================== -->
		<div class="content-page">
			<!-- Start content -->
			<div class="content">
				<div class="container">

					<!-- Page-Title -->
					<div class="row">
						<div class="col-sm-12">
							<div class="btn-group pull-right m-t-15">
								<button type="button"
									class="btn btn-default dropdown-toggle waves-effect waves-light"
									data-toggle="dropdown" aria-expanded="false">
									User List <span class="m-l-5"><i class="fa fa-list"></i></span>
								</button>

							</div>

							<h4 class="page-title">Add Record</h4>
							<ol class="breadcrumb">
								<li><a href="#">eMail CRM</a></li>
								<li class="active">Add Record</li>
							</ol>
						</div>
					</div>


					<div class="row">
						<div class="col-sm-12">
							<div class="card-box">
								<h4 class="m-t-0 header-title">
									<b>Add Record</b>
								</h4>
								<p class="text-muted m-b-30 font-13"></p>
								<div class="row">
									<div class="col-md-12">

										<div class="tab-content">
											<form class="form-horizontal" role="form">
												<p class="lead m-t-0">Proforma Details</p>
												<div class="tab-pane active" id="profile-2">
													<form class="form-horizontal" role="form" id="proformaForm"
														method="POST" action="/saverecord">
														<div class="row">
															<div class="col-md-6">
																<div class="form-group">
																	<label class="col-md-4 control-label">PI Number</label>
																	<div class="col-md-8">
																		<input type="text" class="form-control"
																			placeholder="Enter PI Number" name="piNumber">
																		<input type="hidden" class="form-control"
																			name="hiddenpiNumber">
																	</div>
																</div>
															</div>
															<div class="col-md-6">
																<div class="form-group">
																	<label class="col-md-4 control-label">PI
																		Reference Number</label>
																	<div class="col-md-8">
																		<input type="text" class="form-control"
																			placeholder="Enter PI Reference Number"
																			name="piReferenceNumber">
																	</div>
																</div>
															</div>
														</div>

														<div class="row">
															<div class="col-md-6">
																<div class="form-group">
																	<label class="col-md-4 control-label">PI Date</label>
																	<div class="col-md-8">
																		<div class="input-group">
																			<input type="text" class="form-control" name="piDate"
																				placeholder="mm/dd/yyyy" id="datepicker1-autoclose">
																			<span
																				class="input-group-addon bg-custom b-0 text-white"><i
																				class="icon-calender"></i></span>
																		</div>
																	</div>
																</div>
															</div>
															<div class="col-md-6">
																<div class="form-group">
																	<label class="col-md-4 control-label">PI No. Of
																		Account</label>
																	<div class="col-md-8">
																		<input type="text" class="form-control"
																			placeholder="Enter PI Number of Account"
																			name="numOfAccount">
																	</div>
																</div>
															</div>
														</div>

														<div class="row">
															<div class="col-md-6">
																<div class="form-group">
																	<label class="col-md-4 control-label">PI Amount</label>
																	<div class="col-md-8">
																		<input type="text" class="form-control"
																			placeholder="Enter PI Amount" name="piAmount">
																	</div>
																</div>
															</div>
															<div class="col-md-6">
																<div class="form-group">
																	<label class="col-md-4 control-label">PI
																		Duration</label>
																	<div class="col-md-8">
																		<input type="text" class="form-control"
																			placeholder="Enter PI Duration" name="piDuration">
																	</div>
																</div>
															</div>
														</div>

														<div class="row">
															<div class="col-md-6">
																<div class="form-group">
																	<label class="col-md-4 control-label">PI Owner
																		eMail</label>
																	<div class="col-md-8">
																		<input type="text" class="form-control"
																			placeholder="Enter PI Owner eMail"
																			name="piOwnerEmail">
																	</div>
																</div>
															</div>
															<div class="col-md-6">
																<div class="form-group">
																	<label class="col-md-4 control-label">PI
																		Category</label>
																	<div class="col-md-8">
																		<input type="text" class="form-control"
																			placeholder="Enter PI Category" name="piCategory">
																	</div>
																</div>
															</div>
														</div>

														<div class="row">
															<div class="col-md-6">
																<div class="form-group">
																	<label class="col-md-4 control-label">PI
																		Department</label>
																	<div class="col-md-8">
																		<input type="text" class="form-control"
																			placeholder="Enter PI Department" name="piDepartment">
																	</div>
																</div>
															</div>
															<div class="col-md-6">
																<div class="form-group">
																	<label class="col-md-4 control-label">PI
																		Project Number</label>
																	<div class="col-md-8">
																		<input type="text" class="form-control"
																			placeholder="Enter PI Project Number"
																			name="projNumber">
																	</div>
																</div>
															</div>
														</div>

														<div class="row">
															<div class="col-md-6">
																<div class="form-group">
																	<label class="col-md-4 control-label">PI GST
																		Number</label>
																	<div class="col-md-8">
																		<input type="text" class="form-control"
																			placeholder="Enter PI GST Number" name="piGstNumber">
																	</div>
																</div>
															</div>
														</div>
												</div>
												<p class="lead m-t-0">User Details</p>
												<div class="tab-pane active" id="home-2">
													<div class="row">
														<div class="col-md-6">
															<div class="form-group">
																<label class="col-md-4 control-label">User Name</label>
																<div class="col-md-8">
																	<input type="text" class="form-control"
																		placeholder="Enter User Name" name="userDetails">
																</div>
															</div>
														</div>
														<div class="col-md-6">
															<div class="form-group">
																<label class="col-md-4 control-label"
																	for="example-email">User eMail Address</label>
																<div class="col-md-8">
																	<input type="email" name="userEmail"
																		class="form-control"
																		placeholder="Enter User Email Address">
																</div>
															</div>
														</div>
													</div>
													<div class="row">
														<div class="col-md-6">
															<div class="form-group">
																<label class="col-md-4 control-label">User
																	Contact Number</label>
																<div class="col-md-8">
																	<input type="text" name="userContact"
																		class="form-control"
																		placeholder="Enter User Contact Number">
																</div>
															</div>
														</div>
														<div class="col-md-6">
															<div class="form-group">
																<label class="col-md-4 control-label">User
																	Landline/VOIP Number</label>
																<div class="col-md-8">
																	<input type="text" name="userLandline"
																		class="form-control"
																		placeholder="Enter User Landline/VOIP Number">
																</div>
															</div>
														</div>
													</div>
													<div class="row">
														<div class="col-md-6">
															<div class="form-group">
																<label class="col-md-4 control-label">User Nodal
																	Officer</label>
																<div class="col-md-8">
																	<input type="text" name="useNodalOfficer"
																		class="form-control"
																		placeholder="Enter User Nocal Officer">
																</div>
															</div>
														</div>
														<div class="col-md-6">
															<div class="form-group">
																<label class="col-md-4 control-label">User
																	Department</label>
																<div class="col-md-8">
																	<input type="text" name="userDepartment"
																		class="form-control"
																		placeholder="Enter User Department">
																</div>
															</div>
														</div>
													</div>
													<div class="row">
														<div class="col-md-6">
															<div class="form-group">
																<label class="col-md-4 control-label">User
																	Contact Address</label>
																<div class="col-md-8">
																	<textarea name="userContactAddress"
																		class="form-control" rows="3"
																		placeholder="Enter User Contact Address"></textarea>
																</div>
															</div>
														</div>
													</div>







												</div>
												<p class="lead m-t-0">Account Details</p>
												<div class="tab-pane active" id="messages-2">
													<div class="row">
														<div class="col-md-6">
															<div class="form-group">
																<label class="col-md-4 control-label">Active
																	Account</label>
																<div class="col-md-8">
																	<input type="number" class="form-control"
																		placeholder="Enter Active Account"
																		name="activeAccounts">
																</div>
															</div>
														</div>
														<div class="col-md-6">
															<div class="form-group">
																<label class="col-md-4 control-label">Inactive
																	Account</label>
																<div class="col-md-8">
																	<input type="number" class="form-control"
																		placeholder="Enter Inactive Account"
																		name="inactiveAccounts">
																</div>
															</div>
														</div>
													</div>

													<div class="row">
														<div class="col-md-6">
															<div class="form-group">
																<label class="col-md-4 control-label">Deleted
																	Account</label>
																<div class="col-md-8">
																	<input type="number" class="form-control"
																		placeholder="Enter Deleted Account"
																		name="deletedAccounts">
																</div>
															</div>
														</div>
														<div class="col-md-6">
															<div class="form-group">
																<label class="col-md-4 control-label">Account
																	Creation Date</label>
																<div class="col-md-8">
																	<div class="input-group">
																		<input type="text" class="form-control"
																			name="accCreationDate" placeholder="mm/dd/yyyy"
																			id="datepicker2-autoclose"> <span
																			class="input-group-addon bg-custom b-0 text-white"><i
																			class="icon-calender"></i></span>
																	</div>
																</div>
															</div>
														</div>
													</div>





												</div>
												<p class="lead m-t-0">Payment Details</p>
												<div class="tab-pane active" id="settings-2">
													<div class="row">
														<div class="col-md-6">
															<div class="form-group">
																<label class="col-md-4 control-label">Payment
																	Amount</label>
																<div class="col-md-8">
																	<input type="number" class="form-control"
																		placeholder="Enter Payment Amount"
																		name="paymentAmount">
																</div>
															</div>
														</div>
														<div class="col-md-6">
															<div class="form-group">
																<label class="col-md-4 control-label">Payment
																	UTR Details</label>
																<div class="col-md-8">
																	<input type="text" class="form-control"
																		placeholder="Enter Payment UTR Details"
																		name="paymentUtr">
																</div>
															</div>
														</div>
													</div>

													<div class="row">
														<div class="col-md-6">
															<div class="form-group">
																<label class="col-md-4 control-label">PE Form
																	Status</label>
																<div class="col-md-8">
																	<div class="radio radio-info radio-inline">
																		<input type="radio" id="inlineRadio1" value="option1"
																			name="formStatus" checked> <label
																			for="inlineRadio1"> Yes </label>
																	</div>
																	<div class="radio radio-inline">
																		<input type="radio" id="inlineRadio2" value="option2"
																			name="formStatus"> <label for="inlineRadio2">
																			No </label>
																	</div>
																</div>
															</div>
														</div>
														<div class="col-md-6">
															<div class="form-group">
																<label class="col-md-4 control-label">Payment
																	Date</label>
																<div class="col-md-8">
																	<div class="input-group">
																		<input type="text" class="form-control"
																			name="paymentDate" placeholder="mm/dd/yyyy"
																			id="datepicker3-autoclose"> <span
																			class="input-group-addon bg-custom b-0 text-white"><i
																			class="icon-calender"></i></span>
																	</div>
																</div>
															</div>
														</div>
													</div>






												</div>
												<p class="lead m-t-0">Tax Details</p>
												<div class="tab-pane active" id="tax-2">
													<div class="row">
														<div class="col-md-6">
															<div class="form-group">
																<label class="col-md-4 control-label">PI Invoice
																	Number</label>
																<div class="col-md-8">
																	<input type="text" class="form-control"
																		placeholder="Enter PI Invoice Number"
																		name="invoiceNumber">
																</div>
															</div>
														</div>
														<div class="col-md-6">
															<div class="form-group">
																<label class="col-md-4 control-label">PI Invoice
																	Date</label>
																<div class="col-md-8">
																	<div class="input-group">
																		<input type="text" class="form-control"
																			name="invoiceDate" placeholder="mm/dd/yyyy"
																			id="datepicker4-autoclose"> <span
																			class="input-group-addon bg-custom b-0 text-white"><i
																			class="icon-calender"></i></span>
																	</div>
																</div>
															</div>
														</div>
													</div>

													<div class="row">
														<div class="col-md-6">
															<div class="form-group">
																<label class="col-md-4 control-label">PI Invoice
																	Amount</label>
																<div class="col-md-8">
																	<input type="number" class="form-control"
																		placeholder="PI Invoice Amount" name="invoiceAmount">
																</div>
															</div>
														</div>
														<div class="col-md-6">
															<div class="form-group">
																<label class="col-md-4 control-label">PI
																	Financial Year</label>
																<div class="col-md-8">
																	<input type="text" class="form-control"
																		placeholder="Enter PI Financial Year"
																		name="piFinancialYear">
																</div>
															</div>
														</div>
													</div>



													<div class="form-group">
														<div class="col-sm-3 col-xs-6">
															<div class="p-20">
																<button class="ladda-button btn btn-primary"
																	data-style="expand-right">Submit</button>
															</div>
														</div>
													</div>



												</div>
											</form>
										</div>
									</div>
								</div>
							</div>
						</div>
					</div>

				</div>
				<!-- container -->

			</div>
			<!-- content -->

			<!--Modal Code Started-->

			<div id="uploadDocs" class="modal fade" tabindex="-1" role="dialog"
				aria-labelledby="myModalLabel" aria-hidden="true">
				<div class="modal-dialog">
					<div class="modal-content">
						<div class="modal-header">
							<button type="button" class="close" data-dismiss="modal"
								aria-hidden="true">×</button>
							<h4 class="modal-title" id="myModalLabel">Deactivate Record</h4>
						</div>
						<div class="modal-body">
							<h4>Are you sure to deactivate the record ?</h4>
							<div class="row">
								<div class="col-md-6">
									<div class="form-group">
										<label class="col-md-4 control-label">PE Form</label>
										<div class="col-md-8">
											<input type="file" class="filestyle"
												data-buttonname="btn-white">
										</div>
									</div>
								</div>
							</div>
							<div class="row">
								<div class="col-md-6">
									<div class="form-group">
										<label class="col-md-4 control-label">Query Form</label>
										<div class="col-md-8">
											<input type="file" class="filestyle"
												data-buttonname="btn-white">
										</div>
									</div>
								</div>
							</div>
							<div class="row">
								<div class="col-md-6">
									<div class="form-group">
										<label class="col-md-4 control-label">Tax Invoice</label>
										<div class="col-md-8">
											<input type="file" class="filestyle"
												data-buttonname="btn-white">
										</div>
									</div>
								</div>
							</div>
							<div class="row">
								<div class="col-md-6">
									<div class="form-group">
										<label class="col-md-4 control-label">Other Documents</label>
										<div class="col-md-8">
											<input type="file" class="filestyle"
												data-buttonname="btn-white">
										</div>
									</div>
								</div>
							</div>

						</div>
						<div class="modal-footer">
							<button type="button" class="btn btn-danger waves-effect"
								data-dismiss="modal">Confirm</button>
							<button type="button" class="btn btn-default waves-effect"
								data-dismiss="modal">Cancel</button>
						</div>
					</div>
					<!-- /.modal-content -->
				</div>
				<!-- /.modal-dialog -->
			</div>

			<!--Modal Code Ended-->

			<footer class="footer"> © 2020. All rights reserved. </footer>

		</div>

	</div>
	<!-- END wrapper -->

	<script>
		//var resizefunc = [];
	</script>

	<script src="assets/js/custom.js"></script>
	<script src="assets/js/jquery.min.js"></script>
	<script src="assets/js/bootstrap.min.js"></script>

	<script src="assets/js/fastclick.js"></script>
	<script src="assets/js/waves.js"></script>

	<script
		src="assets/plugins/bootstrap-filestyle/js/bootstrap-filestyle.min.js"
		type="text/javascript"></script>
	<script
		src="assets/plugins/bootstrap-datepicker/js/bootstrap-datepicker.min.js"></script>

	<script src="assets/js/jquery.core.js"></script>
	<script src="assets/js/jquery.app.js"></script>
	<script src="assets/pages/jquery.form-pickers.init.js"></script>

	<script>
		$(document).ready(function() {

			$("#datepicker1-autoclose").datepicker("setDate", new Date());
			$("#datepicker3-autoclose").datepicker("setDate", new Date());
			$("#datepicker2-autoclose").datepicker("setDate", new Date());
			$("#datepicker4-autoclose").datepicker("setDate", new Date());
		});
	</script>

</body>
</html>