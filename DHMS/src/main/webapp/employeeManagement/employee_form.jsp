<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://www.springframework.org/tags" prefix="spring"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Employee Form</title>

<meta charset="ISO-8859-1">
<title>Dhammika Hotel | Employee Management</title>
<link rel="stylesheet" href="Style.css">

<link href="/employeeManagement/style/css/bootstrap.min.css"
	rel="stylesheet" type="text/css">
<link href="/employeeManagement/style/css/font-awesome.min.css"
	rel="stylesheet" type="text/css">
<link href="/employeeManagement/style/css/datepicker3.css"
	rel="stylesheet" type="text/css">
<link href="/employeeManagement/style/css/styles.css" rel="stylesheet"
	type="text/css">

<link href="/employeeManagement/style/css/css.css" rel="stylesheet"
	type="text/css">

<!-- Required meta tags-->
<meta charset="UTF-8">
<meta name="viewport"
	content="width=device-width, initial-scale=1, shrink-to-fit=no">
<meta name="description" content="Colorlib Templates">
<meta name="author" content="Colorlib">
<meta name="keywords" content="Colorlib Templates">


<!-- Icons font CSS-->
<link
	href="/employeeManagement/style/cssemp/vendor/mdi-font/css/material-design-iconic-font.min.css"
	rel="stylesheet" media="all">
<link
	href="/employeeManagement/style/cssemp/vendor/font-awesome-4.7/css/font-awesome.min.css"
	rel="stylesheet" media="all">
<!-- Font special for pages-->
<link
	href="https://fonts.googleapis.com/css?family=Open+Sans:300,300i,400,400i,600,600i,700,700i,800,800i"
	rel="stylesheet">

<!-- Vendor CSS-->
<link
	href="/employeeManagement/style/cssemp/vendor/select2/select2.min.css"
	rel="stylesheet" media="all">
<link
	href="/employeeManagement/style/cssemp/vendor/datepicker/daterangepicker.css"
	rel="stylesheet" media="all">

<!-- Main CSS-->
<link href="/employeeManagement/style/cssemp/css/main.css"
	rel="stylesheet" media="all">


</head>
<body>


	<nav class="navbar navbar-custom navbar-fixed-top" role="navigation">
		<div class="container-fluid">
			<div class="navbar-header">
				<button type="button" class="navbar-toggle collapsed"
					data-toggle="collapse" data-target="#sidebar-collapse">
					<span class="sr-only">Toggle navigation</span> <span
						class="icon-bar"></span> <span class="icon-bar"></span> <span
						class="icon-bar"></span>
				</button>
				<a class="navbar-brand" href="/"><span>Dhammika Hotel </span>Management
					System</a> <a class="navbar-brand"> </a>
				<div class="collapse navbar-collapse">
					<ul class="nav navbar-nav pull-left">
						<li><a href="/backendHome" style="color: white">Home</a></li>
						<li><a href="/addAdvertisement/" style="color: white">Advertise</a></li>
						<li><a href="/addEmployee/" style="color: white">Employee</a></li>
						<li><a href="/inventory" style="color: white">Inventory</a></li>
						<li><a href="/accountmgt" style="color: white">Accounting</a></li>
						<li><a href="/newPurchase" style="color: white">Purchasing</a></li>
						<li><a href="#" style="color: white">Suppling</a></li>
						<li><a href="/userLogs" style="color: white">UserLogs</a></li>
						<li><a href="/logout" style="color: red">Logout</a>
						<li>
					</ul>
				</div>
			</div>
		</div>
		<!-- /.container-fluid -->
	</nav>
	<br>
	<br>
	<br>

	<div id="sidebar-collapse" class="col-sm-3 col-lg-2 sidebar">

		<div class="profile-sidebar">
			<div class="profile-userpic">
				<img
					src="https://widgetwhats.com/app/uploads/2019/11/free-profile-photo-whatsapp-4-300x300.png"
					class="img-responsive" alt="">
			</div>
			<div class="profile-usertitle">
				<div class="profile-usertitle-name"></div>
				<div class="profile-usertitle-status">
					<span class="indicator label-success"></span>Online
				</div>
			</div>
			<div class="clear"></div>
		</div>

		<div class="divider"></div>

		<ul class="nav menu">
			<li><a class="active" href="/"><em class="fa fa-dashboard">&nbsp;</em>
					Employee List</a></li>
			<li class=""><a href="/addEmployee/"><em
					class="fa fa-navicon"></em> Add Employees</a></li>
			<li><a class="" href="/categories"><em class="fa fa-navicon"></em>
					Approve Leaves</a></li>
			<li><a class="" href="/search"><em class="fa fa-navicon"></em>
					Salary</a></li>
			<li><a class="" href="/report"><em class="fa fa-navicon"></em>
					Report</a></li>

		</ul>

	</div>
	<!--/.sidebar-->





	<div class="page-wrapper bg-gra-03 p-t-45 p-b-50">
		<div class="wrapper wrapper--w790">
			<div class="card card-5">
				<div class="card-heading">
					<h2 class="title">Add Employees</h2>
				</div>
				<div class="card-body">

					<spring:url value="/saveEmployee" var="saveURL" />

					<form:form modelAttribute="employeeForm" method="post"
						action="${saveURL}">
						<form:hidden path="id" />

						<div class="form-row">
							<div class="name">Employee Name</div>
							<div class="value">
								<div class="input-group">
									<form:input class="input--style-5" path="empName" type="text"
										required="required" />
								</div>
							</div>
						</div>
						<div class="form-row">
							<div class="name">Employee Address</div>
							<div class="value">
								<div class="input-group">
									<form:input class="input--style-5" path="address" type="text"
										required="required" />
								</div>
							</div>
						</div>
						<div class="form-row">
							<div class="name">Employee NIC</div>
							<div class="value">
								<div class="input-group">
									<form:input class="input--style-5" path="nicNo"
										pattern="[0-9]{9}[V]" type="text" required="required" />
								</div>
							</div>
						</div>
						<div class="form-row">
							<div class="name">Date of birth</div>
							<div class="value">
								<div class="input-group">
									<form:input class="input--style-5" path="dob" type="text"
										required="required" />
								</div>
							</div>
						</div>
						<div class="form-row">
							<div class="name">Designation</div>
							<div class="value">
								<div class="input-group">
									<form:input class="input--style-5" path="designation"
										type="text" required="required" />
								</div>
							</div>
						</div>
						<div class="form-row">
							<div class="name">Salary</div>
							<div class="value">
								<div class="input-group">
									<form:input class="input--style-5" path="salary" type="text"
										required="required" />
								</div>
							</div>
						</div>
						<div>
							<button class="btn btn--radius-2 btn--red" type="submit">Save</button>
						</div>
					</form:form>
				</div>
			</div>
		</div>
	</div>

	<!-- Jquery JS-->
	<script
		src="/employeeManagement/style/cssemp/vendor/jquery/jquery.min.js"></script>
	<!-- Vendor JS-->
	<script
		src="/employeeManagement/style/cssemp/vendor/select2/select2.min.js"></script>
	<script
		src="/employeeManagement/style/cssemp/vendor/datepicker/moment.min.js"></script>
	<script
		src="/employeeManagement/style/cssemp/vendor/datepicker/daterangepicker.js"></script>

	<!-- Main JS-->
	<script src="/employeeManagement/style/cssemp/js/global.js"></script>


</body>
</html>