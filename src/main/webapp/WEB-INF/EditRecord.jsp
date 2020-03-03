<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="utf-8">
		<meta name="viewport" content="width=device-width, initial-scale=1.0">
		<meta name="description" content="eMail-CRM">
		<meta name="author" content="eMail-CRM">

		<link rel="shortcut icon" href="assets/images/favicon.ico">

		<title>eMail CRM</title>

		<link href="assets/css/bootstrap.min.css" rel="stylesheet" type="text/css" />
        <link href="assets/css/core.css" rel="stylesheet" type="text/css" />
        <link href="assets/css/components.css" rel="stylesheet" type="text/css" />
        <link href="assets/css/icons.css" rel="stylesheet" type="text/css" />
        <link href="assets/css/pages.css" rel="stylesheet" type="text/css" />
        <link href="assets/css/responsive.css" rel="stylesheet" type="text/css" />
        <link href="assets/plugins/bootstrap-datepicker/css/bootstrap-datepicker.min.css" rel="stylesheet">
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
                        <a href="/dashboard" class="logo"><img src="assets/images/emblem.png" style="height: 40px;"/>
                            <span> eMail CRM</span></a>
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
                                <button class="button-menu-mobile open-left waves-effect waves-light">
                                    <i class="md md-menu"></i>
                                </button>
                                <span class="clearfix"></span>
                            </div>

                            


                            <ul class="nav navbar-nav navbar-right pull-right">
                                
                                <li class="dropdown top-menu-item-xs">
                                    <a href="" class="dropdown-toggle profile waves-effect waves-light" data-toggle="dropdown" aria-expanded="true"><img src="assets/images/users/user.png" alt="user-img" class="img-circle"> </a>
                                    <ul class="dropdown-menu">
                                        <li><a href="javascript:void(0)"><i class="ti-user m-r-10 text-custom"></i> Profile</a></li>
                                        <li><a href="javascript:void(0)"><i class="ti-settings m-r-10 text-custom"></i> Settings</a></li>
                                        <li><a href="javascript:void(0)"><i class="ti-lock m-r-10 text-custom"></i> Lock screen</a></li>
                                        <li class="divider"></li>
                                        <li><a href="/"><i class="ti-power-off m-r-10 text-danger"></i> Logout</a></li>
                                    </ul>
                                </li>
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

                            <li class="has_sub">
                                <a href="/dashboard" class="waves-effect"><i class="fa fa-home"></i> 
                                    <span> Dashboard </span> <span class="menu-arrow"></span></a>
                            </li>
                            <li class="has_sub">
                                <a href="javascript:void(0);" class="waves-effect"><i class="fa fa-filter"></i> 
                                    <span> Menu 1 </span> <span class="menu-arrow"></span></a>
                            </li>
                            
                        </ul>
                        <div class="clearfix"></div>
                    </div>
                    <div class="clearfix"></div>
                </div>
            </div>
			<!-- Left Sidebar End -->

			<!-- =============================================================<script src="assets/js/custom.js"></script>= -->
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
                                    <button type="button" class="btn btn-default dropdown-toggle waves-effect waves-light" data-toggle="dropdown" aria-expanded="false">User List <span class="m-l-5"><i class="fa fa-list"></i></span></button>
                                    
                                </div>

								<h4 class="page-title">Add Record</h4>
								<ol class="breadcrumb">
									<li>
										<a href="/dashboard">eMail CRM</a>
									</li>
									<li class="active">
										Add Record
									</li>
								</ol>
							</div>
						</div>

                        
                        <div class="row">
                        	<div class="col-sm-12">
                        		<div class="card-box">
                        			<h4 class="m-t-0 header-title"><b>Add Record</b></h4>
                        			<p class="text-muted m-b-30 font-13">
										
									</p>
                        			<div class="row">
                        				<div class="col-md-12">
                        					
                                            <div class="tab-content"> 
                                                <form:form class="form-horizontal" id="proformaDto" role="form" modelAttribute="proformaDto" action="/saveeditedpi" method="POST"> 
                                                    <p class="lead m-t-0">Proforma Details</p>
                                                    <div class="tab-pane active" id="profile-2">
                                                                                           
                                                            <div class="row">
                                                                <div class="col-md-6">
                                                                      <div class="form-group">
                                                                        <form:label class="col-md-4 control-label" path="proformaInvoice.piNumber">PI Number</form:label>
                                                                        <div class="col-md-8">
                                                                            <form:input type="text" class="form-control" placeholder="Enter PI Number" name="user_name" path="proformaInvoice.piNumber" required="required"/>
                                                                            <!-- <input type="hidden" class="form-control" name="hiddenpiNumber"> -->
                                                                        </div>
                                                                    </div>
                                                                </div>
                                                                <div class="col-md-6">
                                                                      <div class="form-group">
                                                                        <form:label class="col-md-4 control-label" path="proformaUser.domainName">Domain Name</form:label>
                                                                        <div class="col-md-8">
                                                                            <form:input type="text" class="form-control" placeholder="Enter Domain Name" name="user_name" path="proformaUser.domainName" required="required"/>
                                                                        </div>
                                                                    </div> 
                                                                </div>
                                                            </div>
															
                                                            <div class="row">
                                                               <div class="col-md-6">
                                                                    <div class="form-group">
                                                                        <form:label class="col-md-4 control-label" path="proformaInvoice.accountCreationDate">PI Date</form:label>
                                                                        <div class="col-md-8">
                                                                            <div class="input-group">
                                                                                <form:input type="text" class="form-control" placeholder="mm/dd/yyyy" id="datepicker1-autoclose" path="proformaInvoice.accountCreationDate" required="required"/>
                                                                                <span class="input-group-addon bg-custom b-0 text-white"><i class="icon-calender"></i></span>
                                                                            </div>
                                                                        </div> 
                                                                    </div>
                                                                </div>
                                                                <div class="col-md-6">
                                                                    <div class="form-group">
                                                                        <form:label class="col-md-4 control-label" path="proformaInvoice.numberOFaccounts">PI No. Of Account</form:label>
                                                                        <div class="col-md-8">
                                                                            <form:input type="text" class="form-control" placeholder="Enter PI Number of Account" name="user_name" path="proformaInvoice.numberOFaccounts"/>
                                                                        </div>
                                                                    </div>
                                                                </div>
                                                            </div>

                                                            <div class="row">
                                                                <div class="col-md-6">
                                                                    <div class="form-group">
                                                                        <form:label class="col-md-4 control-label" path="proformaInvoice.piAmount">PI Amount</form:label>
                                                                        <div class="col-md-8">
                                                                            <form:input type="text" class="form-control" placeholder="Enter PI Amount" name="user_name" path="proformaInvoice.piAmount"/>
                                                                        </div>
                                                                    </div>
                                                                </div>
                                                                <div class="col-md-6">
                                                            		<div class="form-group">
                                                                        <form:label class="col-md-4 control-label" path="proformaInvoice.piDuration">PI Duration</form:label>
                                                                        <div class="col-md-8">
                                                                            <form:input type="text" class="form-control" placeholder="Enter PI Duration" name="user_name" path="proformaInvoice.piDuration"/>
                                                                        </div>
                                                                    </div>
                                                                </div>
                                                            </div>

                                                            <div class="row">
                                                                <div class="col-md-6">
                                                                    <div class="form-group">
                                                                        <form:label class="col-md-4 control-label" path="proformaInvoice.ownerEmailID">PI Owner eMail</form:label>
                                                                        <div class="col-md-8">
                                                                            <form:input type="text" class="form-control" placeholder="Enter PI Owner eMail" name="user_name" path="proformaInvoice.ownerEmailID"/>
                                                                        </div>
                                                                    </div>
                                                                </div>
                                                                <div class="col-md-6">
                                                                    <div class="form-group">
                                                                        <form:label class="col-md-4 control-label" path="proformaInvoice.piCategory">PI Category</form:label>
                                                                        <div class="col-md-8">
                                                                            <form:input type="text" class="form-control" placeholder="Enter PI Category" name="user_name" path="proformaInvoice.piCategory"/>
                                                                        </div>
                                                                    </div>
                                                                </div>
                                                            </div>
                                                            
                                                            <div class="row">
                                                                <div class="col-md-6">
                                                                    <div class="form-group">
                                                                        <form:label class="col-md-4 control-label" path="proformaInvoice.organisationName">PI Department</form:label>
                                                                        <div class="col-md-8">
                                                                            <form:input type="text" class="form-control" placeholder="Enter PI Department" name="user_name" path="proformaInvoice.organisationName" required="required"/>
                                                                        </div>
                                                                    </div>
                                                                </div>
                                                                <div class="col-md-6">
                                                                    <div class="form-group">
                                                                        <form:label class="col-md-4 control-label" path="proformaInvoice.projectNumber">PI Project Number</form:label>
                                                                        <div class="col-md-8">
                                                                            <form:input type="text" class="form-control" placeholder="Enter PI Project Number" name="user_name" path="proformaInvoice.projectNumber" required="required"/>
                                                                        </div>
                                                                    </div>
                                                                </div>
                                                            </div>

                                                            <div class="row">
                                                                <div class="col-md-6">
                                                                    <div class="form-group">
                                                                        <form:label class="col-md-4 control-label" path="proformaInvoice.GSTNumber">PI GST Number</form:label>
                                                                        <div class="col-md-8">
                                                                            <form:input type="text" class="form-control" placeholder="Enter PI GST Number" name="user_name" path="proformaInvoice.GSTNumber"/>
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
                                                                        <form:label class="col-md-4 control-label" path="proformaUser.userName">User Name</form:label>
                                                                        <div class="col-md-8">
                                                                            <form:input type="text" class="form-control" placeholder="Enter User Name" name="user_name" path="proformaUser.userName"/>
                                                                        </div>
                                                                    </div>
                                                                </div>
                                                                <div class="col-md-6">
                                                                    <div class="form-group">
                                                                        <form:label class="col-md-4 control-label" for="example-email" path="proformaUser.emailId">User eMail Address</form:label>
                                                                        <div class="col-md-8">
                                                                            <form:input type="email" name="user_email" class="form-control" placeholder="Enter User Email Address" path="proformaUser.emailId"/>
                                                                        </div>
                                                                    </div>
                                                                </div>
                                                            </div>
                                                            <div class="row">
                                                                <div class="col-md-6">    
                                                                    <div class="form-group">
                                                                        <form:label class="col-md-4 control-label" path="proformaUser.contactNumber">User Contact Number</form:label>
                                                                        <div class="col-md-8">
                                                                            <form:input type="text" name="user_contact" class="form-control" placeholder="Enter User Contact Number" path="proformaUser.contactNumber"/>
                                                                        </div>
                                                                    </div>
                                                                </div>
                                                                <div class="col-md-6">
                                                                    <div class="form-group">
                                                                        <form:label class="col-md-4 control-label" path="proformaUser.landlineNUmber">User Landline/VOIP Number</form:label>
                                                                        <div class="col-md-8">
                                                                            <form:input type="text" name="user_landline" class="form-control" placeholder="Enter User Landline/VOIP Number" path="proformaUser.landlineNUmber"/>
                                                                        </div>
                                                                    </div> 
                                                                </div>
                                                            </div>
                                                            <div class="row">
                                                                <div class="col-md-6">
                                                                    <div class="form-group">
                                                                        <form:label class="col-md-4 control-label" path="proformaUser.nodalOfficer">User Nodal Officer</form:label>
                                                                        <div class="col-md-8">
                                                                            <form:input type="text" name="user_nodal_officer" class="form-control" placeholder="Enter User Nocal Officer" path="proformaUser.nodalOfficer"/>
                                                                        </div>
                                                                    </div>
                                                                </div>
                                                                <div class="col-md-6">
                                                                    <div class="form-group">
                                                                        <form:label class="col-md-4 control-label" path="proformaUser.organisationName">User Department</form:label>
                                                                        <div class="col-md-8">
                                                                            <form:input type="text" name="user_department" class="form-control" placeholder="Enter User Department" path="proformaUser.organisationName" required="required"/>
                                                                        </div>
                                                                    </div>
                                                                </div>
                                                            </div>
                                                            <div class="row">
                                                                <div class="col-md-6">
                                                                    <div class="form-group">
                                                                        <form:label class="col-md-4 control-label" path="proformaUser.userAddress">User Contact Address</form:label>
                                                                        <div class="col-md-8">
                                                                            <form:textarea name="contact_address" class="form-control" rows="3" placeholder="Enter User Contact Address" path="proformaUser.userAddress"></form:textarea>
                                                                        </div>
                                                                    </div>
                                                                </div>
                                                            </div>
                                                            

                                                            
                                                            
                                                            
                                        
                                                        
                                                    </div> 
                                                    <p class="lead m-t-0">No. Of Account Details</p>
                                                    <div class="tab-pane active" id="messages-2">
                                                            <div class="row">
                                                                <div class="col-md-6">
                                                                    <div class="form-group">
                                                                        <form:label class="col-md-4 control-label" path="proformaInvoice.activeAccounts">Active Account</form:label>
                                                                        <div class="col-md-8">
                                                                            <form:input type="number" class="form-control" placeholder="Enter Active Account" name="user_name" path="proformaInvoice.activeAccounts"/>
                                                                        </div>
                                                                    </div>
                                                                </div>
                                                                <div class="col-md-6">
                                                                    <div class="form-group">
                                                                        <form:label class="col-md-4 control-label" path="proformaInvoice.inactiveAccounts">Inactive Account</form:label>
                                                                        <div class="col-md-8">
                                                                            <form:input type="number" class="form-control" placeholder="Enter Inactive Account" name="user_name" path="proformaInvoice.inactiveAccounts"/>
                                                                        </div>
                                                                    </div>
                                                                </div>
                                                            </div>

                                                            <div class="row">
                                                                <div class="col-md-6">
                                                                    <div class="form-group">
                                                                        <form:label class="col-md-4 control-label" path="proformaInvoice.deletedAccounts">Deleted Account</form:label>
                                                                        <div class="col-md-8">
                                                                            <form:input type="number" class="form-control" placeholder="Enter Deleted Account" name="user_name" path="proformaInvoice.deletedAccounts"/>
                                                                        </div>
                                                                    </div>
                                                                </div>
                                                                  <div class="col-md-6">
                                                                   <div class="form-group">
                                                                        <form:label class="col-md-4 control-label" path="proformaInvoice.accountCreationDate">Account Creation Date</form:label>
                                                                        <div class="col-md-8">
                                                                            <div class="input-group">
                                                                                <form:input type="text" class="form-control" placeholder="mm/dd/yyyy" id="datepicker2-autoclose" path="proformaInvoice.accountCreationDate" required="required"/>
                                                                                <span class="input-group-addon bg-custom b-0 text-white"><i class="icon-calender"></i></span>
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
                                                                        <form:label class="col-md-4 control-label" path="paymentDetails.paymentAmount">Payment Amount</form:label>
                                                                        <div class="col-md-8">
                                                                            <form:input type="number" class="form-control" placeholder="Enter Payment Amount" name="user_name" path="paymentDetails.paymentAmount"/>
                                                                        </div>
                                                                    </div>
                                                                </div>
                                                                <div class="col-md-6">
                                                                    <div class="form-group">
                                                                        <form:label class="col-md-4 control-label" path="paymentDetails.paymentUTRDetails">Payment UTR Details</form:label>
                                                                        <div class="col-md-8">
                                                                            <form:input type="text" class="form-control" placeholder="Enter Payment UTR Details" name="user_name" path="paymentDetails.paymentUTRDetails"/>
                                                                        </div>
                                                                    </div>
                                                                </div>
                                                            </div>

                                                            <div class="row">
                                                                <div class="col-md-6">
                                                                    <div class="form-group">
                                                                        <label class="col-md-4 control-label">PE Form Status</label>
                                                                        <div class="col-md-8">
                                                                            <div class="radio radio-info radio-inline">
                                                                                <input type="radio" id="inlineRadio1" value="option1" name="radioInline" checked>
                                                                                <label for="inlineRadio1"> Yes </label>
                                                                            </div>
                                                                            <div class="radio radio-inline">
                                                                                <input type="radio" id="inlineRadio2" value="option2" name="radioInline">
                                                                                <label for="inlineRadio2"> No </label>
                                                                            </div>
                                                                        </div>
                                                                    </div>
                                                                </div>
                                                                <div class="col-md-6">
                                                                     <div class="form-group">
                                                                        <form:label class="col-md-4 control-label" path="paymentDetails.paymentDate">Payment Date</form:label>
                                                                        <div class="col-md-8">
                                                                            <div class="input-group">
                                                                                <form:input type="text" class="form-control" placeholder="mm/dd/yyyy" id="datepicker3-autoclose" path="paymentDetails.paymentDate" required="required"/>
                                                                                <span class="input-group-addon bg-custom b-0 text-white"><i class="icon-calender"></i></span>
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
                                                                        <form:label class="col-md-4 control-label" path="proformaInvoice.invoiceNumber">PI Invoice Number</form:label>
                                                                        <div class="col-md-8">
                                                                            <form:input type="text" class="form-control" placeholder="Enter PI Invoice Number" name="user_name" path="proformaInvoice.invoiceNumber"/>
                                                                        </div>
                                                                    </div>
                                                                </div>
                                                                <div class="col-md-6">
                                                                     <div class="form-group">
                                                                        <form:label class="col-md-4 control-label" path="proformaInvoice.invoiceDate">PI Invoice Date</form:label>
                                                                        <div class="col-md-8">
                                                                            <div class="input-group">
                                                                                <form:input type="text" class="form-control" placeholder="mm/dd/yyyy" id="datepicker4-autoclose" path="proformaInvoice.invoiceDate" required="required"/>
                                                                                <span class="input-group-addon bg-custom b-0 text-white"><i class="icon-calender"></i></span>
                                                                            </div>
                                                                        </div>
                                                                    </div> 
                                                                </div>
                                                            </div>

                                                            <div class="row">
                                                                <div class="col-md-6">
                                                                    <div class="form-group">
                                                                        <form:label class="col-md-4 control-label" path="proformaInvoice.invoiceAmount">PI Invoice Amount</form:label>
                                                                        <div class="col-md-8">
                                                                            <form:input type="number" class="form-control" placeholder="PI Invoice Amount" name="user_name" path="proformaInvoice.invoiceAmount"/>
                                                                        </div>
                                                                    </div>
                                                                </div>
                                                                <div class="col-md-6">
                                                                    <div class="form-group">
                                                                        <form:label class="col-md-4 control-label" path="proformaInvoice.financialYear">PI Financial Year</form:label>
                                                                        <div class="col-md-8">
                                                                            <form:input type="text" class="form-control" placeholder="Enter PI Financial Year" name="user_name" path="proformaInvoice.financialYear"/>
                                                                        </div>
                                                                    </div>
                                                                </div>
                                                            </div>
                                                            
                                                            

                                                            <div class="form-group">
                                                                <div class="col-sm-3 col-xs-6">
                                                                    <div class="p-20">
                                                                        <button class="ladda-button btn btn-primary" data-style="expand-right">
                                                                            Submit
                                                                        </button>
                                                                    </div>
                                                                </div>
                                                            </div>
                                                            
                                        
                                                        
                                                    </div>
                                                </form:form>    
                                            </div> 
                        				</div>
                        			</div>
                        			<div class="formResponse"></div>
                        		</div>
                        	</div>
                        </div>

                    </div> <!-- container -->
                               
                </div> <!-- content -->

<!--Modal Code Started-->

<div id="uploadDocs" class="modal fade" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
    <div class="modal-dialog">
        <div class="modal-content">
            <div class="modal-header">
                <button type="button" class="close" data-dismiss="modal" aria-hidden="true">×</button>
                <h4 class="modal-title" id="myModalLabel">Deactivate Record</h4>
            </div>
            <div class="modal-body">
                <h4>Are you sure to deactivate the record ?</h4>
                <div class="row">
                    <div class="col-md-6">
                        <div class="form-group">
                            <label class="col-md-4 control-label">PE Form</label>
                            <div class="col-md-8">
                            <input type="file" class="filestyle" data-buttonname="btn-white">
                            </div>
                        </div>
                    </div>
                </div>
                <div class="row">
                    <div class="col-md-6"><script src="assets/js/custom.js"></script>
                        <div class="form-group">
                            <label class="col-md-4 control-label">Query Form</label>
                            <div class="col-md-8">
                            <input type="file" class="filestyle" data-buttonname="btn-white">
                            </div>
                        </div>
                    </div>
                </div>
                <div class="row">
                    <div class="col-md-6">
                        <div class="form-group">
                            <label class="col-md-4 control-label">Tax Invoice</label>
                            <div class="col-md-8">
                            <input type="file" class="filestyle" data-buttonname="btn-white">
                            </div>
                        </div>
                    </div>
                </div>
                <div class="row">
                    <div class="col-md-6">
                        <div class="form-group">
                            <label class="col-md-4 control-label">Other Documents</label>
                            <div class="col-md-8">
                            <input type="file" class="filestyle" data-buttonname="btn-white">
                            </div>
                        </div>
                    </div>
                </div>
                
            </div>
            <div class="modal-footer">
                <button type="button" class="btn btn-danger waves-effect" data-dismiss="modal">Confirm</button>
                <button type="button" class="btn btn-default waves-effect" data-dismiss="modal">Cancel</button>
            </div>
        </div><!-- /.modal-content -->
    </div><!-- /.modal-dialog -->
</div>

<!--Modal Code Ended-->

                <footer class="footer">
                    © 2020. All rights reserved.
                </footer>

            </div>
   
        </div>
        <!-- END wrapper -->

        <script>
            //var resizefunc = [];
        </script>


        <script src="assets/js/jquery.min.js"></script>
        <script src="assets/js/bootstrap.min.js"></script>
        
        <script src="assets/js/fastclick.js"></script>
        <script src="assets/js/waves.js"></script>
        
        <script src="assets/plugins/bootstrap-filestyle/js/bootstrap-filestyle.min.js" type="text/javascript"></script>
        <script src="assets/plugins/bootstrap-datepicker/js/bootstrap-datepicker.min.js"></script>

        <script src="assets/js/jquery.core.js"></script>
        <script src="assets/js/jquery.app.js"></script>
        <script src="assets/pages/jquery.form-pickers.init.js"></script>
        <script src="assets/js/custom.js"></script>
	
	
	</body>
</html>