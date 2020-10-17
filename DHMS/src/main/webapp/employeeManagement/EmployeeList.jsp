<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://www.springframework.org/tags" prefix="spring"%>


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
				<a class="navbar-brand" href="/"><span>Dhammika
						Hotel </span>Management System</a>
				<a class="navbar-brand">  </a>
				<div class="collapse navbar-collapse">
					<ul class="nav navbar-nav pull-left">
						<li><a href="/backendHome" style="color:white">Home</a></li>
						<li><a href="/addAdvertisement/" style="color:white">Advertise</a></li>
						<li><a href="/addEmployee/" style="color:white">Employee</a></li>
						<li><a href="/inventory" style="color:white">Inventory</a></li>
						<li><a href="/accountmgt" style="color:white">Accounting</a></li>
						<li><a href="/newPurchase" style="color:white">Purchasing</a></li>
						<li><a href="#" style="color:white">Suppling</a></li>
						<li><a href="/userLogs" style="color:white">UserLogs</a></li>
						<li><a href="/logout" style="color:red">Logout</a>
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

	<div class="col-sm-9 col-sm-offset-3 col-lg-10 col-lg-offset-2 main">
		<div class="row">
			<ol class="breadcrumb">
				<li><a href="#"> <em class="fa fa-home"></em>
				</a></li>
				<li class="active">All Employee</li>
			</ol>
		</div>
		<!--/.row-->

		<div class="row">
			<div class="col-lg-12"></div>
		</div>
		<!--/.row-->




		<div class="row">
			<div class="col-md-12">
				<div class="limiter">
					<div class="container-table100">
						<div class="wrap-table100">
							<div class="table100">
								<h2>Employee List</h2>
								<table>
									<thead>
										<tr class="table100-head">
											<th scope="row" class="column1">id</th>
											<th scope="row" class="column2">Name</th>
											<th scope="row" class="column3">Address</th>
											<th scope="row" class="column4">NIC</th>
											<th scope="row" class="column5">DOB</th>
											<th scope="row" class="column6">Designation</th>
											<th scope="row" class="column7">Salary</th>
											<th scope="row" class="column8">Update</th>
											<th scope="row" class="column9">Delete</th>
										</tr>
									</thead>
									<tbody>

										<c:forEach items="${employeeList }" var="employee">
											<tr>
												<td class="column1">${employee.id }</td>
												<td class="column2">${employee.empName }</td>
												<td class="column3">${employee.address }</td>
												<td class="column4">${employee.nicNo }</td>
												<td class="column5">${employee.dob }</td>
												<td class="column6">${employee.designation }</td>
												<td class="column7">${employee.salary }</td>

												<td class="column8"><a
													href="/editEmployee?id=${employee.id}" type="button">Update</a>
												</td>
												<td class="column9"><a
													href="/deleteEmployee?id=${employee.id}" type="button">Delete</a>
												</td>

											</tr>
										</c:forEach>
									</tbody>
								</table>

							</div>
						</div>
					</div>
				</div>
			</div>
		</div>

		<div class="row">
			<div class="col-md-12"></div>
		</div>
		<!--/.row-->


		<div class="row">
			<div class="col-xs-6 col-md-3"></div>
			<div class="col-xs-6 col-md-3"></div>
		</div>
		<!--/.row-->

		<div class="row">
			<div class="col-md-6"></div>
			<div class="col-sm-12"></div>
		</div>

		<!--/.row-->

	</div>
	<!--/.main-->



	<script src="/employeeManagement/style/js/jquery-1.11.1.min.js"></script>
	<script src="/employeeManagement/style/js/bootstrap.min.js"></script>
	<script src="/employeeManagement/style/js/chart.min.js"></script>
	<script src="/employeeManagement/style/js/chart-data.js"></script>
	<script src="/employeeManagement/style/js/easypiechart.js"></script>
	<script src="/employeeManagement/style/js/easypiechart-data.js"></script>
	<script src="/employeeManagement/style/js/bootstrap-datepicker.js"></script>
	<script src="/employeeManagement/style/js/custom.js"></script>
	<script src="https://code.jquery.com/jquery-3.5.1.min.js"></script>
	<script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.0/dist/umd/popper.min.js"></script>
	<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.0/js/bootstrap.min.js"></script>
	<script>
		window.onload = function() {
			var chart1 = document.getElementById("line-chart").getContext("2d");
			window.myLine = new Chart(chart1).Line(lineChartData, {
				responsive : true,
				scaleLineColor : "rgba(0,0,0,.2)",
				scaleGridLineColor : "rgba(0,0,0,.05)",
				scaleFontColor : "#c5c7cc"
			});
		};
	</script>




	<br />
	<br />
	<br />







</body>
</html>