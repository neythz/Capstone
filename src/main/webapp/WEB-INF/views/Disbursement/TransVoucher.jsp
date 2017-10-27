<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<html>
<head>
<meta charset="UTF-8">
<title>Disbursement Voucher</title>
<meta
	content='width=device-width, initial-scale=1, maximum-scale=1, user-scalable=no'
	name='viewport'>
<!-- HTML5 Shim and Respond.js IE8 support of HTML5 elements and media queries -->
<!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
<!--[if lt IE 9]>
    <script src="resources/https://oss.maxcdn.com/libs/html5shiv/3.7.0/html5shiv.js"></script>
    <script src="resources/https://oss.maxcdn.com/libs/respond.js/1.3.0/respond.min.js"></script>
    <![endif]-->
<!-- global css -->
<link href="resources/css/bootstrap.min.css" rel="stylesheet"
	type="text/css" />
<!-- font Awesome -->
<link
	href="resources/vendors/font-awesome-4.2.0/css/font-awesome.min.css"
	rel="stylesheet" type="text/css" />
<link href="resources/css/styles/black.css" rel="stylesheet"
	type="text/css" id="colorscheme" />
<link href="resources/css/panel.css" rel="stylesheet" type="text/css" />
<link href="resources/css/metisMenu.css" rel="stylesheet"
	type="text/css" />
<!-- end of global css -->
<!--page level css -->
<link rel="stylesheet" type="text/css"
	href="resources/vendors/datatables/css/dataTables.colReorder.min.css" />
<link rel="stylesheet" type="text/css"
	href="resources/vendors/datatables/css/dataTables.scroller.min.css" />
<link rel="stylesheet" type="text/css"
	href="resources/vendors/datatables/css/dataTables.bootstrap.css" />
<link href="resources/css/pages/tables.css" rel="stylesheet"
	type="text/css">
<!--end of page level css-->
</head>

<body class="skin-josh">
	<header class="header">
		<a href="resources/index.html" class="logo">
		<h1>Financials</h1>
		</a>
		<nav class="navbar navbar-static-top" role="navigation">
			<!-- Sidebar toggle button-->
			<div>
				<a href="resources/#" class="navbar-btn sidebar-toggle"
					data-toggle="offcanvas" role="button">
					<div class="responsive_nav"></div>
				</a>
			</div>
			<div class="navbar-right">
				<ul class="nav navbar-nav">


					<li class="dropdown user user-menu"><a href="resources/#"
						class="dropdown-toggle" data-toggle="dropdown"> <img
							data-src="resources/holder.js/35x35/#fff:#000" width="35"
							class="img-circle img-responsive pull-left" height="35"
							alt="riot">
							<div class="riot">
								<div>
									Riot <span> <i class="caret"></i>
									</span>
								</div>
							</div>
					</a>
						<ul class="dropdown-menu">
							<!-- User image -->
							<li class="user-header bg-light-blue"><img
								data-src="resources/holder.js/90x90/#fff:#000"
								class="img-responsive img-circle" alt="User Image">
								<p class="topprofiletext">Riot Zeast</p></li>
							<!-- Menu Body -->
							<li><a href="resources/#"> <i class="livicon"
									data-name="user" data-s="18"></i> My Profile
							</a></li>
							<li role="presentation"></li>
							<li><a href="resources/#"> <i class="livicon"
									data-name="gears" data-s="18"></i> Account Settings
							</a></li>
							<!-- Menu Footer-->
							<li class="user-footer">
								<div class="pull-left">
									<a href="resources/lockscreen.html"> <i class="livicon"
										data-name="lock" data-s="18"></i> Lock
									</a>
								</div>
								<div class="pull-right">
									<a href="resources/login.html"> <i class="livicon"
										data-name="sign-out" data-s="18"></i> Logout
									</a>
								</div>
							</li>
						</ul></li>
				</ul>
			</div>
		</nav>
	</header>
	<div class="wrapper row-offcanvas row-offcanvas-left">
		<!-- Left side column. contains the logo and sidebar -->
		<aside class="left-side sidebar-offcanvas">
			<section class="sidebar ">
				<div class="page-sidebar  sidebar-nav">

					<div class="clearfix"></div>
					<!-- BEGIN SIDEBAR MENU -->
					<ul class="page-sidebar-menu" id="menu">
						<li><a href="resources/index.html"> <i class="livicon"
								data-name="home" data-size="18" data-c="#418BCA"
								data-hc="#418BCA" data-loop="true"></i> <span class="title">Dashboard</span>
						</a></li>
						<li><a href="table_reports"> <span class="title">Accounts
									Payable</span>
						</a></li>
						<li><a href="voucher_transaction">
								Disbursement </a></li>
						<li><a href="resources/"> Reports </a></li>
						</li>
			</section>
			<!-- /.sidebar -->
		</aside>
		<!-- Right side column. Contains the navbar and content of the page -->
		<aside class="right-side">
			<!-- Content Header (Page header) -->
			<section class="content-header">
				<!--section starts-->
				<h1>Disbursement Transaction</h1>

			</section>
			<!--section ends-->
			<section class="content">
				<!-- Second Data Table -->
				<div class="row">
					<div class="col-md-12">
						<!-- BEGIN EXAMPLE TABLE PORTLET-->
						<div class="portlet box primary">
							<div class="portlet-title">
								<div class="caption">
										<i class="livicon" data-name="camera-alt" data-size="16"
											data-loop="true" data-c="#fff" data-hc="white"></i>
										Pending Transactions
									</div>
							</div>
							<div class="portlet-body">
								<div class="table-toolbar"></div>
								<div id="sample_editable_1_wrapper" class="">
									<table class="table table-hover">
										<thead>
											<tr role="row">
												<th>Institute Name</th>
												<th>Due Date</th>
												<th>Amount</th>
												<th>Status</th>
											</tr>
											<c:forEach var="pay" items="${pList}">

												<tr data-institute="${pay.ap_institute_name}" data-claimant="${pay.claim_name}" data-rcenter="${pay.resp_center}" data-amount="${pay.amount}" data-id="${pay.ap_uid}" data-ap_address="${pay.ap_address}">
													<td>${pay.ap_institute_name}</td>
													<td>${pay.date}</td>
													<td>${pay.amount}</td>
<!-- btn btn-success btn-large -->					<td><span style="margin-top: 75px;"
														class="label label-sm label-primary">${pay.ap_status}</span></td>
													<td><a class="ToModal"
														data-toggle="modal" data-href="#responsive"
														href="#responsive">Payment</a></td>
												</tr>
											</c:forEach>
										</thead>
									</table>
								</div>
								<!-- END EXAMPLE TABLE PORTLET-->
							</div>
						</div>
					</div>
				</div>
			</section>
			<!-- row-->

			<!-- Third Basic Table Ends Here-->
			<!--delete modal starts here-->

			<!-- /.modal ends here -->
			</section>
			<!-- content -->
		</aside>
		<!-- right-side -->
	</div>
	<!--- responsive model -->
	<div class="modal fade in" id="responsive" tabindex="-1" role="dialog"
		aria-hidden="false" style="display: none;">
		<div class="modal-dialog modal-lg">
			<div class="modal-content">
				<div class="modal-header">
					<button type="button" class="close" data-dismiss="modal"
						aria-hidden="true">�</button>
					<h4 class="modal-title">Responsive</h4>
				</div>
				<div class="modal-body">
				<form:form action="trans_save" modelAttribute="insert">
					<div class="row">
						<div class="col-md-6">
							<h4><label style="font-style:bold;">Disbursement Voucher</label></h4>
							<table class="col-md-12">
								<thead>
									<tr>
										<td>DV No. <span
												class='require'>*</span></td>
										<td><form:input style="margin-left: 10px;" id="name"
											name="name" type="text" placeholder="Voucher No"
											class="form-control" path="dv_no"/></td>
									</tr>
									<tr>
										<td>ORS/BURS No. <span
												class='require'>*</span></td>
										<td><form:input style="margin-left: 10px; margin-top: 10px;"
											id="name" name="name" type="text" placeholder="ORS/BURS No"
											class="form-control" path="ors_burs_no"/></td>
									</tr>
									<tr>
										<td>Disbursement Purpose <span class='require'>*</span></td>
										<td><form:select style="margin-left: 10px; margin-top: 10px;"
															class="form-control col-md-12" path="purpose_name" name="purpose_name">
															<c:forEach var="purpose" items="${dropDown}">

																<option value="${purpose.purpose_name}">
          											<c:out value="${purpose.purpose_name}"/>
    												</option>
															</c:forEach>
														</form:select></td>
									</tr>
									<tr>
										<td>Mode of Payment
												<span class='require'>*</span>
										</td>
										<td><form:select style="margin-left: 10px; margin-top: 10px;"
													class="form-control col-md-12" path="mode_of_payment" name="payment_mode">
													<c:forEach var="mode" items="${dropDown2}">

														<option value="${mode.mode_of_payment}">
          											<c:out value="${mode.mode_of_payment}"/>
    												</option>
													</c:forEach>

												</form:select></td>
									</tr>
									<tr>
										<td>Employee Assigned <span
												class='require'>*</span></td>
										<td><form:select style="margin-left: 10px; margin-top: 10px;" class="form-control col-md-12" path="employee_assigned" name="employee_no">
													<c:forEach var="emp" items="${dropDown6}">

														<option value="${emp.employee_assigned}">
          											<c:out value="${emp.employee_assigned}"/>
    												</option>
													</c:forEach>

												</form:select></td>
									</tr>
								</thead>
							</table>
						</div>
						<div class="col-md-6">
						<br>
						<br>
								<table>
								
									<tr>
										<td>Institute Name
												<span class='require'>*</span>
										</td>
										<td><form:input style="margin-left: 10px; margin-top: 10px;"
											class="form-control" id="inst_name" type="text" path="institute"
											readOnly="true"></form:input></td>
									</tr>
									<tr>
										<td>Claimant Name <span
												class='require'>*</span></td>
										<td><form:input style="margin-left: 10px; margin-top: 10px;"
											class="form-control" id="claim_name" type="text" path="claimant_name"
											readOnly="true"></form:input></td>
									</tr>
									<tr>
										<td>Address <span
												class='require'>*</span></td>
										<td><div class="col-md-12">
												<form:textarea style="margin-top: 10px;" class="form-control"
													id="ap_address" name="message" placeholder="Enter Address" path="address"
													readOnly="true" rows="3"></form:textarea>
											</div></td>
									</tr>
									<tr>
										<td>Fund Cluster <span
												class='require'>*</span></td>
										<td><form:select style="margin-left: 10px; margin-top: 10px;"
													class="form-control col-md-12" path="fund_cluster" name="fund_cluster">
													<c:forEach var="fund" items="${dropDown5}">

														<option value="${fund.fund_cluster}">
          											<c:out value="${fund.fund_cluster}"/>
    												</option>
													</c:forEach>

												</form:select></td>
									</tr>
									<tr>
										<td>Date <span
												class='require'>*</span></td>
										<td><form:input style="margin-left: 10px; margin-top: 10px;"
											id="name" name="name" type="date" placeholder="Date"
											class="form-control" path="dv_date"></form:input></td>
									</tr>
									</div>
								</table>
						</div>
						<center>
							<table style="margin-top: 20px;">
								<div class="input-group col-md-12">
									<thead>
										<tr>
											<td style="text-align:center;">Particulars</td>
											<td style="text-align:center;">Responsibility Center</td>
											<td style="text-align:center;">MFO/PAP</td>
											<td style="text-align:center;">Amount</td>
										</tr>
									</thead>
									<tbody>
										<tr>
											<td><form:input type="text" placeholder="Particulars"
												class="form-control" path="particulars"></form:input></td>
											<td><form:input 
											class="form-control" id="rcenter" type="text" path="responsibility_center"
											readOnly="true"></form:input></td>
											<td><form:input type="text" placeholder="MFO/PAP"
												class="form-control" path="mfo_pap"></form:input></td>
											<td><form:input class="form-control" id="amount" type="text" path="dv_amount"
											readOnly="true"></form:input></td>
										</tr>
									</tbody>
							</table>
						</center>
					</div>
					<div class="modal-footer">
					<form:input type="hidden" path="ap_uid" id="ap_uid"></form:input>
						<button type="button" data-dismiss="modal" class="btn">Close</button>
						<button name="submit" type="submit" class="btn btn-primary">Submit</button>
					</div>
					</form:form>
				</div>
			</div>
		</div>
		<!-- END modal-->

		<!-- ./wrapper -->
		<a id="back-to-top" href="resources/#"
			class="btn btn-primary btn-lg back-to-top" role="button"
			title="Return to top" data-toggle="tooltip" data-placement="left">
			<i class="livicon" data-name="plane-up" data-size="18"
			data-loop="true" data-c="#fff" data-hc="white"></i>
		</a>
		<!-- global js -->
		<script src="resources/js/jquery-1.11.1.min.js" type="text/javascript"></script>
		<script src="resources/js/bootstrap.min.js" type="text/javascript"></script>
		<!--livicons-->
		<script src="resources/vendors/livicons/minified/raphael-min.js"
			type="text/javascript"></script>
		<script src="resources/vendors/livicons/minified/livicons-1.4.min.js"
			type="text/javascript"></script>
		<script src="resources/js/josh.js" type="text/javascript"></script>
		<script src="resources/js/metisMenu.js" type="text/javascript"> </script>
		<script src="resources/vendors/holder-master/holder.js"
			type="text/javascript"></script>
		<!-- end of global js -->
		<!-- begining of page level js -->
		<script type="text/javascript"
			src="resources/vendors/datatables/jquery.dataTables.min.js"></script>
		<!-- <script type="text/javascript"
			src="resources/vendors/datatables/dataTables.tableTools.min.js"></script> -->
		<script type="text/javascript"
			src="resources/vendors/datatables/dataTables.colReorder.min.js"></script>
		<script type="text/javascript"
			src="resources/vendors/datatables/dataTables.scroller.min.js"></script>
		<script type="text/javascript"
			src="resources/vendors/datatables/dataTables.bootstrap.js"></script>
		<!-- <script type="text/javascript"
			src="resources/js/pages/table-advanced.js"></script> -->
		<!-- end of page level js -->
		
		<script>
           $(document).ready(function(){
                $('table .ToModal').on('click', function(){
                    var data = $(this).closest('tr').data();
                    $('.modal #inst_name').val(data.institute);
                    $('.modal #claim_name').val(data.claimant);
                    $('.modal #rcenter').val(data.rcenter);
                    $('.modal #amount').val(data.amount);
                    $('.modal #ap_address').val(data.ap_address);
                    $('.modal #ap_uid').val(data.id);
                });
            });

            function toModal(obj){
            	var data = $(this).closest('tr').data();
            	$('.modal #inst_name').val(data.institute);
            	$('.modal #claim_name').val(data.claimant);
            	$('.modal #rcenter').val(data.rcenter);
            	$('.modal #amount').val(data.amount);
            	$('.modal #ap_address').val(data.ap_address);
            	$('.modal #ap_uid').val(data.id);
            }

        </script>
    </body>
</html>