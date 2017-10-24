<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<c:set var="ctx" value="${pageContext.request.contextPath}"></c:set>

<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<title>Accounts Payable Create</title>
	<meta content='width=device-width, initial-scale=1, maximum-scale=1, user-scalable=no' name='viewport'>
	<!-- HTML5 Shim and Respond.js IE8 support of HTML5 elements and media queries -->
	<!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
	<!--[if lt IE 9]>
	<script src="https://oss.maxcdn.com/libs/html5shiv/3.7.0/html5shiv.js"></script>
	<script src="https://oss.maxcdn.com/libs/respond.js/1.3.0/respond.min.js"></script>
	<![endif]-->
	<!-- global css -->
	<link href="resources/css/bootstrap.min.css" rel="stylesheet" type="text/css" />
	<link href="resources/vendors/font-awesome-4.2.0/css/font-awesome.min.css" rel="stylesheet" type="text/css" />
	<link href="resources/css/styles/black.css" rel="stylesheet" type="text/css" id="colorscheme" />
	<link href="resources/css/panel.css" rel="stylesheet" type="text/css"/>
	<link href="resources/css/metisMenu.css" rel="stylesheet" type="text/css"/>
	
	<!-- end of global css -->
	<!-- page level css -->
	<link href="resources/css/pages/tables.css" rel="stylesheet" type="text/css" />
	<!--end of page level css-->
	
	<%@ include file = "../commonHead.jsp" %>
</head>
<body class="skin-josh">

<%@ include file = "../commonMsg.jsp" %>
<%@ include file = "../commonHeader.jsp" %>

<div class="wrapper row-offcanvas row-offcanvas-left">

<%@ include file = "../commonLeft.jsp" %>

<aside class="right-side">
	<!-- Content Header (Page header) -->
	<section class="content-header">
		<!--section starts-->
		<h1>Create Accounts Payable</h1>
	</section>
	<!--section ends-->
	
	<section class="content">
		<div class="row">
			<div class="col-md-12">
			
				<div class="panel panel-primary">
					<div class="panel-heading">
						<h3 class="panel-title">
							<i class="livicon" data-name="bell" data-loop="true" data-color="#fff" data-hovercolor="#fff" data-size="18"></i>
							Create Accounts Payable
						</h3>
					</div>
					<div class="panel-body">
					<form:form action="" modelAttribute="model" method="post" accept-charset="UTF-8" role="form">
						<div class="row">
							<div class="col-md-6">
									<div class="form-group col-md-12">
										<label for="">Company Name</label>
										 	<input type="text" class="form-control ">
									</div>
									<div class="form-group col-md-12">
										<label for="">Claimant Name</label>
										<input type="text" class="form-control">
									</div>
									<div class="form-group col-md-12">
										<label for="">Responsibility Center</label>
										<select	class="form-control select2">
											<option value="">AAAACK</option>
										</select>
									</div>
									<div class="form-group col-md-12">
										 <label>Voucher Date</label>
										<div class="input-group">
											<div class="input-group-addon">
												<i class="fa fa-calendar"></i>
											</div>
											<form:input path="ap_voucher_date" name="voucher_date" type="date" class="form-control" data-inputmask="'alias': 'mm/dd/yyyy'" data-mask="data-mask"/>
										</div>
									</div>
									<div class="form-group col-md-12">
										 <label>Due Date</label>
										<div class="input-group">
											<div class="input-group-addon">
												<i class="fa fa-calendar"></i>
											</div>
											<form:input path="ap_due_date" name="due_date" type="date" class="form-control" data-inputmask="'alias': 'mm/dd/yyyy'" data-mask="data-mask"/>
										</div>
									</div>
							</div>
							<div class="col-md-6">
								<div class="form-group col-md-12">
									<label for="">Amount</label>
									<form:input path="ap_amount" name="amount" type="text" class="form-control" />
								</div>
								<div class="form-group col-md-12">
									<label for="">Account Type</label>
										<form:select path="account_type" name="account_type" id="1" class="form-control select2">
											<form:option value="1">Taxes and Licenses</form:option>
											<form:option value="2">Utilities Expense</form:option>
											<form:option value="3">Miscellaneous Expense</form:option>
											<form:option value="4">Repair & Maintenance</form:option>
										</form:select>
									</div>
								<div class="form-group col-md-12">
									<label for="">Particulars</label>
									<textarea id="textarea" rows="4" class="form-control"style="resize:none" maxlength="1000" placeholder="Write something here..."></textarea>
								</div>
								<div class="form-group col-md-12">
									<label for="">Status</label>
									<form:select path="ap_status" name="status" id="2" class="form-control select2">
										<form:option value="1">Unpaid</form:option>
										<form:option value="2">Paid</form:option>
									</form:select>
								</div>
								</div>
									<div class="row">
										<hr>
										<div style="float: right">
											<label class="col-md-4 control-label" for="CAPSaveButton"></label>
											<div class="col-md-4">
												<button id="CAPSaveButton" name="CAPSaveButton" class="btn btn-primary">Save</button>
											</div>
										
										</div>
									</div> 
								</div>
							</form:form>	
						</div>
				</div>
			</div>
		</div>
	</section>
</aside>
</div>

<%@ include file = "../commonFoot.jsp" %>

</body>
</html>
