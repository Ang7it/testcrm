<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
		<meta charset="utf-8">
		<meta name="viewport" content="width=device-width, initial-scale=1.0">
		<meta name="description" content="eMail-CRM">
		<meta name="author" content="eMail-CRM">

		<link rel="shortcut icon" href="../assets/images/favicon.ico">
		 <c:if test="${success!=true}">
		 <%
		    String redirectURL = "../dashboard";
		    response.sendRedirect(redirectURL);
		%>
		 </c:if>
		<title>eMail CRM</title>

		<link href="../../assets/css/bootstrap.min.css" rel="stylesheet" type="text/css" />
        <link href="../../assets/css/core.css" rel="stylesheet" type="text/css" />
        <link href="../assets/css/components.css" rel="stylesheet" type="text/css" />
        <link href="../assets/css/icons.css" rel="stylesheet" type="text/css" />
        <link href="../assets/css/pages.css" rel="stylesheet" type="text/css" />
        <link href="../assets/css/responsive.css" rel="stylesheet" type="text/css" />
        <link href="../assets/plugins/bootstrap-datepicker/css/bootstrap-datepicker.min.css" rel="stylesheet">

        <!-- HTML5 Shiv and Respond.js IE8 support of HTML5 elements and media queries -->
        <!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
        <!--[if lt IE 9]>
        <script src="https://oss.maxcdn.com/libs/html5shiv/3.7.0/html5shiv.js"></script>
        <script src="https://oss.maxcdn.com/libs/respond.js/1.3.0/respond.min.js"></script>
        <![endif]-->

        <script src="../assets/js/modernizr.min.js"></script>
        
    </head>
<body class="fixed-left">

		<!-- Begin page -->
		<div id="wrapper">

            <!-- Top Bar Start -->
            <div class="topbar">

                <!-- LOGO -->
                <div class="topbar-left">
                    <div class="text-center">
                        <a href="../dashboard" class="logo"><img src="../assets/images/emblem.png" style="height: 40px;"/>
                            <span> eMail CRM</span></a>
                        <!-- Image Logo here -->
                        <!--<a href="index.html" class="logo">-->
                            <!--<i class="icon-c-logo"> <img src="../assets/images/logo_sm.png" height="42"/> </i>-->
                            <!--<span><img src="../assets/images/logo_light.png" height="20"/></span>-->
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
                                    <a href="" class="dropdown-toggle profile waves-effect waves-light" data-toggle="dropdown" aria-expanded="true"><img src="../assets/images/users/user.png" alt="user-img" class="img-circle"> </a>
                                    <ul class="dropdown-menu">
                                        <li><a href="javascript:void(0)"><i class="ti-user m-r-10 text-custom"></i> Profile</a></li>
                                        <li><a href="javascript:void(0)"><i class="ti-settings m-r-10 text-custom"></i> Settings</a></li>
                                        <li><a href="javascript:void(0)"><i class="ti-lock m-r-10 text-custom"></i> Lock screen</a></li>
                                        <li class="divider"></li>
                                        <li><a href="javascript:void(0)"><i class="ti-power-off m-r-10 text-danger"></i> Logout</a></li>
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
                                <a href="home.html" class="waves-effect"><i class="fa fa-home"></i> 
                                    <span> Dashboard </span> <span class="menu-arrow"></span></a>
                            </li>
                            <li class="has_sub">
                                <a href="filter.html" class="waves-effect"><i class="fa fa-filter"></i> 
                                    <span> Filter Data </span> <span class="menu-arrow"></span></a>
                            </li>
                            
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
                                    <button type="button" class="btn btn-default dropdown-toggle waves-effect waves-light" data-toggle="dropdown" aria-expanded="false">Dashboard <span class="m-l-5"><i class="fa fa-list"></i></span></button>
                                    
                                </div>

								<h4 class="page-title">Upload Files</h4>
								<ol class="breadcrumb">
									<li>
										<a href="#">eMail CRM</a>
									</li>
									<li class="active">
										Upload Files
									</li>
								</ol>
							</div>
						</div>
						
						
						
						<div class="row">
							<div class="col-sm-12">
								<div class="card-box">
									<h4 class="m-t-0 header-title"><b>Upload Files</b></h4>
									<p class="text-muted m-b-15 font-13">
										Files for PI - ${piNumber}
									</p>
									<div class="row">
                                        <form name="fileUpload" class="form-control" enctype="multipart/form-data">
										<div class="col-md-6">
											<div class="p-20">
													<div class="form-group">
														<label class="control-label">Upload PE Form</label>
														<input type="file" name="peForm" class="filestyle" data-buttonname="btn-primary">
														<input type="hidden" name="piNUmber" class="" data-buttonname="btn-primary" value="${piNumber}"/>
													</div>
													<div class="form-group">
														<label class="control-label">Upload Query Form</label>
														<input type="file" name="queryForm[]" multiple class="filestyle" data-buttonname="btn-primary">
                                                    </div>
                                            </div>
										</div>
										
										<div class="col-md-6">
											<div class="p-20">
													<div class="form-group">
														<label class="control-label">Upload Tax Invoice</label>
														<input type="file" name="taxInvoice[]" multiple class="filestyle" data-buttonname="btn-primary">
                                                    </div>
                                                    <div class="form-group">
														<label class="control-label">Upload Other Documents</label>
														<input type="file" name="otherDocs[]" multiple class="filestyle" data-buttonname="btn-primary">
                                                    </div>
                                            </div>
                                        </div>
                                        <div class="row">
                                            <div class="col-md-12">
                                                <button type="submit" class="btn btn-danger pull-right"><i class="fa fa-upload"></i> Submit</button>
                                            </div>
                                        </div>
                                        <input type="hidden" name="as_sfid" value="AAAAAAXdtKDMCYpP23myDbe1ccjlfwF368rWTo5vJ0sHgmYdZ-_lDVOwqHWiGS889-5y2KHSM73vTYeRLsMhmMx6Vsym0KA4sFMEm8UoU69_KBbBtratPgLc_XXYiwEqAW1_cW8=" /><input type="hidden" name="as_fid" value="5fa38a7ef66bc23124d1a278b39bfcbfafd9572f" /></form>
									</div>
								</div>
							</div>
						</div>
						
						


            		</div> <!-- container -->
                               
                </div> <!-- content -->

                <footer class="footer">
                    © 2020. All rights reserved.
                </footer>

            </div>
   
        </div>
        <!-- END wrapper -->

        <script>
            //var resizefunc = [];
        </script>


        <script src="../assets/js/jquery.min.js"></script>
        <script src="../assets/js/bootstrap.min.js"></script>
        
        <script src="../assets/js/fastclick.js"></script>
        <script src="../assets/js/waves.js"></script>
        
        <script src="../assets/plugins/bootstrap-filestyle/js/bootstrap-filestyle.min.js" type="text/javascript"></script>
        <script src="../assets/plugins/bootstrap-datepicker/js/bootstrap-datepicker.min.js"></script>

        <script src="../assets/js/jquery.core.js"></script>
        <script src="../assets/js/jquery.app.js"></script>
        <script src="../assets/pages/jquery.form-pickers.init.js"></script>
	
	
	</body>
</html>