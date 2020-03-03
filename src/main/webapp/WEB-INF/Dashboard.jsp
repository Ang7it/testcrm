<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
    <head>
        <meta charset="utf-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <meta name="description" content="eMail-CRM">
        <meta name="author" content="eMail-CRM">

        <link rel="shortcut icon" href="assets/images/favicon.ico">

        <title>eMail CRM</title>

        <!-- DataTables -->
        <link href="assets/plugins/datatables/buttons.bootstrap.min.css" rel="stylesheet" type="text/css"/>
        <link href="assets/plugins/datatables/dataTables.bootstrap.min.css" rel="stylesheet" type="text/css"/>
        
        
        <!--Morris Chart CSS -->
		
        <link href="assets/plugins/bootstrap-sweetalert/sweet-alert.css" rel="stylesheet" type="text/css">

        <link href="assets/css/bootstrap.min.css" rel="stylesheet" type="text/css" />
        <link href="assets/css/core.css" rel="stylesheet" type="text/css" />
        <link href="assets/css/components.css" rel="stylesheet" type="text/css" />
        <link href="assets/css/icons.css" rel="stylesheet" type="text/css" />
        <link href="assets/css/pages.css" rel="stylesheet" type="text/css" />
        <link href="assets/css/responsive.css" rel="stylesheet" type="text/css" />

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
                        <a href="home.html" class="logo"><img src="assets/images/emblem.png" style="height: 40px;"/>
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
                                <a href="javascript:void(0);" class="waves-effect"><i class="fa fa-home"></i> 
                                    <span> Dashboard </span> <span class="menu-arrow"></span></a>
                            </li>
                            <li class="has_sub">
                                <a href="javascript:void(0);" class="waves-effect"><i class="fa fa-filter"></i> 
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
                                <h4 class="page-title">Dashboard </h4>
                                <p class="text-muted page-title-alt">Welcome to eMail CRM panel</p>
                            </div>
                        </div>

                        <div class="row">
                            <div class="col-lg-4 col-sm-6">
                                <a href="javascript:void(0);" class="completeRecord">
                                    <div class="widget-panel widget-style-2 bg-white">
                                        <i class="fa fa-check text-primary"></i>
                                        <h2 class="m-0 text-dark counter font-600">50568</h2>
                                        <div class="text-muted m-t-5">Completed Records</div>
                                    </div>
                                </a>
                            </div>
                            <div class="col-lg-4 col-sm-6">
                                <a href="javascript:void(0);" class="incompleteRecords">
                                    <div class="widget-panel widget-style-2 bg-white">
                                        <i class="fa fa-exclamation text-pink"></i>
                                        <h2 class="m-0 text-dark counter font-600">1256</h2>
                                        <div class="text-muted m-t-5">Incomplete Records</div>
                                    </div>
                                </a>
                            </div>
                            <div class="col-lg-4 col-sm-6">
                                <a href="/addrecord">
                                    <div class="widget-panel widget-style-2 bg-white">
                                        <i class="fa fa-user-plus text-info"></i>
                                        <h2 class="m-0 text-dark counter font-600">&nbsp;</h2>
                                        <div class="text-muted m-t-5">Add New Record</div>
                                    </div>
                                </a>
                            </div>
                        </div>
                        
                        <div class="row">
                            <div class="col-sm-12">
                                <div class="card-box table-responsive">
                                    <h4 class="m-t-0 header-title"><b><a href="/dashboard">User List</a></b></h4>
                                    <p class="text-muted font-13 m-b-30">
                                        <div class="serverResponse">	</div>
                                    </p>
        
                                    <table id="datatable-buttons" class="table table-striped table-bordered">
                                        <thead>
                                        <tr>
                                            <th>Unique Id</th>
                                            <th>Domain Name</th>
                                            <th>Organisation Name</th>
                                            <th>NICSI Id</th>
                                            <th>No. Of Accounts</th>
                                            <th>Action</th>
                                        </tr>
                                        </thead>
        
        
                                        <tbody>
                                        
	                                        <%-- <c:forEach var="orglistdata" items="${listOfProformaDetails}"> --%>
	                                        <c:forEach var="orglistdata" items="${dashboarddata}">
		                                        <tr>
		                                            <td>${orglistdata.uniqueKey}</td>
		                                            <td><a href="javascript:void(0)" class="domainInfo">${orglistdata.domainName}</a></td>
		                                            <td><a href="javascript:void(0)" class="orgInfo">${orglistdata.organisationName}</a></td>
		                                            <td>orglistdata.projId</td>
		                                            <td>orglistdata.count</td>
		                                            <td style="text-align:center;">
		                                                <div class="row">
		                                                    <div class="btn-group">
		                                                        <button type="button" class="btn btn-danger dropdown-toggle waves-effect waves-light" data-toggle="dropdown" aria-expanded="false">Action <span class="caret"></span></button>
		                                                        <ul class="dropdown-menu" role="menu">
		                                                            <li><a href="#" class="peForm">View PE Form</a></li>
		                                                            <li><a href="#" class="qryForm">View Query Form</a></li>
		                                                            <li><a href="#" class="taxForm">View Tax Invoice</a></li>
		                                                            <li><a href="#" class="usrDetail">View User Details</a></li>
		                                                            <!--<li class="divider"></li>
		                                                            <li><a href="#" class="deactiveRecord">Deactivate</a></li>-->
		                                                        </ul>
		                                                    </div>
		                                                </div>
		                                            </td>
		                                        </tr>
	                                        </c:forEach>
                                        </tbody>
                                    </table>
                                </div>
                            </div>
                        </div>
                        <!-- end row -->

                    </div> <!-- container -->
                               
                </div> <!-- content -->


<!--Modal Code Started-->
<div id="domainInfo" class="modal fade" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
    <div class="modal-dialog">
        <div class="modal-content">
            <div class="modal-header">
                <button type="button" class="close" data-dismiss="modal" aria-hidden="true">×</button>
                <h4 class="modal-title" id="myModalLabel">Domain Information</h4>
            </div>
            <div class="modal-body">
                <h4>List of Organisation</h4>
                <p>Please click on the Organisation to see details</p>
                <hr>
                <ul class="list-group">
                    <li class="list-group-item">
                        <a href="javascript:void(0);">Organisation 1</a>
                    </li>
                    <li class="list-group-item">
                        <a href="javascript:void(0);">Organisation 2</a>
                    </li>
                    <li class="list-group-item">
                        <a href="javascript:void(0);">Organisation 3</a>
                    </li>
                    <li class="list-group-item">
                        <a href="javascript:void(0);">Organisation 4</a>
                    </li>
                </ul>
            </div>
            <div class="modal-footer">
                <button type="button" class="btn btn-default waves-effect" data-dismiss="modal">Close</button>
            </div>
        </div><!-- /.modal-content -->
    </div><!-- /.modal-dialog -->
</div>

<div id="orgInfo" class="modal fade" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
    <div class="modal-dialog">
        <div class="modal-content">
            <div class="modal-header">
                <button type="button" class="close" data-dismiss="modal" aria-hidden="true">×</button>
                <h4 class="modal-title" id="myModalLabel">Organisation Information</h4>
            </div>
            <div class="modal-body">
                <h4>List of PI</h4>
                <p>Please click on the PI to see details</p>
                <hr>
                
                <ul class="list-group">
                    <li class="list-group-item">
                        <a href="javascript:void(0);">PI 1</a>
                    </li>
                    <li class="list-group-item">
                        <a href="javascript:void(0);">PI 2</a>
                    </li>
                    <li class="list-group-item">
                        <a href="javascript:void(0);">PI 3</a>
                    </li>
                    <li class="list-group-item">
                        <a href="javascript:void(0);">PI 4</a>
                    </li>
                </ul>
            </div>
            <div class="modal-footer">
                <button type="button" class="btn btn-default waves-effect" data-dismiss="modal">Close</button>
            </div>
        </div><!-- /.modal-content -->
    </div><!-- /.modal-dialog -->
</div>

<div id="peForm" class="modal fade" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
    <div class="modal-dialog">
        <div class="modal-content">
            <div class="modal-header">
                <button type="button" class="close" data-dismiss="modal" aria-hidden="true">×</button>
                <h4 class="modal-title" id="myModalLabel">Download PE Form</h4>
            </div>
            <div class="modal-body">
                <h4>List of PE Forms</h4>
                <p>Please click on the icon to download form</p>
                <hr>
                
                <ul class="list-group">
                    <li class="list-group-item">
                        <span class="badge badge-primary"><i class="fa fa-file-pdf-o"></i></span>
                        <a href="javascript:void(0);">PI 1</a>
                    </li>
                    <li class="list-group-item">
                        <span class="badge badge-primary"><i class="fa fa-file-pdf-o"></i></span>
                        <a href="javascript:void(0);">PI 2</a>
                    </li>
                    <li class="list-group-item">
                        <span class="badge badge-primary"><i class="fa fa-file-pdf-o"></i></span>
                        <a href="javascript:void(0);">PI 3</a>
                    </li>
                    <li class="list-group-item">
                        <span class="badge badge-primary"><i class="fa fa-file-pdf-o"></i></span>
                        <a href="javascript:void(0);">PI 4</a>
                    </li>
                </ul>
            </div>
            <div class="modal-footer">
                <button type="button" class="btn btn-default waves-effect" data-dismiss="modal">Close</button>
            </div>
        </div><!-- /.modal-content -->
    </div><!-- /.modal-dialog -->
</div>

<div id="qryForm" class="modal fade" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
    <div class="modal-dialog">
        <div class="modal-content">
            <div class="modal-header">
                <button type="button" class="close" data-dismiss="modal" aria-hidden="true">×</button>
                <h4 class="modal-title" id="myModalLabel">Download Query Form</h4>
            </div>
            <div class="modal-body">
                <h4>List of Query Forms</h4>
                <p>Please click on the PI to download form</p>
                <hr>
                
                <ul class="list-group">
                    <li class="list-group-item">
                        <span class="badge badge-primary"><i class="fa fa-file-pdf-o"></i></span>
                        <a href="javascript:void(0);">PI 1</a>
                    </li>
                    <li class="list-group-item">
                        <span class="badge badge-primary"><i class="fa fa-file-pdf-o"></i></span>
                        <a href="javascript:void(0);">PI 2</a>
                    </li>
                    <li class="list-group-item">
                        <span class="badge badge-primary"><i class="fa fa-file-pdf-o"></i></span>
                        <a href="javascript:void(0);">PI 3</a>
                    </li>
                    <li class="list-group-item">
                        <span class="badge badge-primary"><i class="fa fa-file-pdf-o"></i></span>
                        <a href="javascript:void(0);">PI 4</a>
                    </li>
                </ul>
            </div>
            <div class="modal-footer">
                <button type="button" class="btn btn-default waves-effect" data-dismiss="modal">Close</button>
            </div>
        </div><!-- /.modal-content -->
    </div><!-- /.modal-dialog -->
</div>

<div id="taxForm" class="modal fade" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
    <div class="modal-dialog">
        <div class="modal-content">
            <div class="modal-header">
                <button type="button" class="close" data-dismiss="modal" aria-hidden="true">×</button>
                <h4 class="modal-title" id="myModalLabel">Download Tax Invoice</h4>
            </div>
            <div class="modal-body">
                <h4>List of Tax Invoice Forms</h4>
                <p>Please click on the PI to download forms</p>
                <hr>
                
                <ul class="list-group">
                    <li class="list-group-item">
                        <span class="badge badge-primary"><i class="fa fa-file-pdf-o"></i></span>
                        <a href="javascript:void(0);">PI 1</a>
                    </li>
                    <li class="list-group-item">
                        <span class="badge badge-primary"><i class="fa fa-file-pdf-o"></i></span>
                        <a href="javascript:void(0);">PI 2</a>
                    </li>
                    <li class="list-group-item">
                        <span class="badge badge-primary"><i class="fa fa-file-pdf-o"></i></span>
                        <a href="javascript:void(0);">PI 3</a>
                    </li>
                    <li class="list-group-item">
                        <span class="badge badge-primary"><i class="fa fa-file-pdf-o"></i></span>
                        <a href="javascript:void(0);">PI 4</a>
                    </li>
                </ul>
            </div>
            <div class="modal-footer">
                <button type="button" class="btn btn-default waves-effect" data-dismiss="modal">Close</button>
            </div>
        </div><!-- /.modal-content -->
    </div><!-- /.modal-dialog -->
</div>

<div id="usrDetail" class="modal fade" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
    <div class="modal-dialog">
        <div class="modal-content">
            <div class="modal-header">
                <button type="button" class="close" data-dismiss="modal" aria-hidden="true">×</button>
                <h4 class="modal-title" id="myModalLabel">User Detail</h4>
            </div>
            <div class="modal-body">
                <h4>User Details</h4>
                <p>Organisation user details mentioned below</p>
                <hr>
                
                <div class="row"> 
                    <div class="col-md-6"> 
                        <div class="form-group"> 
                            <label for="field-1" class="control-label">Name</label> 
                            <input type="text" class="form-control" id="field-1" placeholder="Name" readonly> 
                        </div> 
                    </div> 
                    <div class="col-md-6"> 
                        <div class="form-group"> 
                            <label for="field-2" class="control-label">email</label> 
                            <input type="email" class="form-control" id="field-2" placeholder="email" readonly> 
                        </div> 
                    </div> 
                </div> 
                <div class="row"> 
                    <div class="col-md-12"> 
                        <div class="form-group"> 
                            <label for="field-3" class="control-label">Contact Number</label> 
                            <input type="text" class="form-control" id="field-3" placeholder="Contact Number" readonly> 
                        </div> 
                    </div> 
                </div> 
                <div class="row"> 
                    <div class="col-md-4"> 
                        <div class="form-group"> 
                            <label for="field-4" class="control-label">Nodal Officer</label> 
                            <input type="text" class="form-control" id="field-4" placeholder="Nodal Officer" readonly> 
                        </div> 
                    </div> 
                    <div class="col-md-4"> 
                        <div class="form-group"> 
                            <label for="field-5" class="control-label">Department Name</label> 
                            <input type="text" class="form-control" id="field-5" placeholder="Department Name" readonly> 
                        </div> 
                    </div> 
                    <div class="col-md-4"> 
                        <div class="form-group"> 
                            <label for="field-6" class="control-label">Office Landline/VOIP</label> 
                            <input type="text" class="form-control" id="field-6" placeholder="Office Landline/VOIP" readonly> 
                        </div> 
                    </div> 
                </div> 
                <div class="row"> 
                    <div class="col-md-12"> 
                        <div class="form-group no-margin"> 
                            <label for="field-7" class="control-label">Address</label> 
                            <textarea class="form-control autogrow" id="field-7" placeholder="Address" readonly style="overflow: hidden; word-wrap: break-word; resize: horizontal; height: 104px;"></textarea>
                        </div> 
                    </div> 
                </div> 
            </div>
            <div class="modal-footer">
                <button type="button" class="btn btn-default waves-effect" data-dismiss="modal">Close</button>
            </div>
        </div><!-- /.modal-content -->
    </div><!-- /.modal-dialog -->
</div>

<div id="deactiveRecord" class="modal fade" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
    <div class="modal-dialog">
        <div class="modal-content">
            <div class="modal-header">
                <button type="button" class="close" data-dismiss="modal" aria-hidden="true">×</button>
                <h4 class="modal-title" id="myModalLabel">Deactivate Record</h4>
            </div>
            <div class="modal-body">
                <h4>Are you sure to deactivate the record ?</h4>
                
            </div>
            <div class="modal-footer">
                <button type="button" class="btn btn-danger waves-effect" data-dismiss="modal">Confirm</button>
                <button type="button" class="btn btn-default waves-effect" data-dismiss="modal">Cancel</button>
            </div>
        </div><!-- /.modal-content -->
    </div><!-- /.modal-dialog -->
</div>

<!--Modal Code Ended-->


                <footer class="footer text-right">
                    © 2020. All rights reserved.
                </footer>

            </div>


        </div>
        <!-- END wrapper -->


    
        <script>
            //var resizefunc = [];
        </script>

        

        <!-- jQuery  -->
        <script src="assets/js/jquery.min.js"></script>
        <script src="assets/js/bootstrap.min.js"></script>
        <script src="assets/js/fastclick.js"></script>
        <script src="assets/js/waves.js"></script>
        <!-- jQuery  -->
        

        <script src="assets/js/jquery.core.js"></script>
        <script src="assets/js/jquery.app.js"></script>

		
		
<script src="assets/plugins/datatables/jquery.dataTables.min.js"></script>
<script src="assets/plugins/datatables/dataTables.bootstrap.js"></script>

<script src="assets/plugins/datatables/dataTables.buttons.min.js"></script>
<script src="assets/plugins/datatables/buttons.bootstrap.min.js"></script>
<script src="assets/plugins/datatables/jszip.min.js"></script>
<script src="assets/plugins/datatables/pdfmake.min.js"></script>
<script src="assets/plugins/datatables/buttons.html5.min.js"></script>
<script src="assets/plugins/datatables/buttons.print.min.js"></script>

<script src="assets/pages/datatables.init.js"></script>


<script src="assets/js/jquery.core.js"></script>
<script src="assets/js/jquery.app.js"></script>
<script src="assets/js/custom.js"></script>


<script type="text/javascript">
    TableManageButtons.init();

</script>

    </body>
</html>