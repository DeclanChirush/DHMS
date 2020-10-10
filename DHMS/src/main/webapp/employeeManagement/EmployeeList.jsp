<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>  
<%@ taglib uri="http://www.springframework.org/tags" prefix="spring"%>  


<meta charset="ISO-8859-1">
<title>Dhammika Hotel | Employee Management</title>
<link rel="stylesheet" href="Style.css">

<link href="/employeeManagement/style/css/bootstrap.min.css" rel="stylesheet"
	type="text/css">
<link href="/employeeManagement/style/css/font-awesome.min.css" rel="stylesheet"
	type="text/css">
<link href="/employeeManagement/style/css/datepicker3.css" rel="stylesheet"
	type="text/css">
<link href="/employeeManagement/style/css/styles.css" rel="stylesheet"
	type="text/css">

<link href="/employeeManagement/style/css/css3.css" rel="stylesheet"
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
				<a class="navbar-brand" href="/accountmgt"><span>Dhammika
						Hotel </span>Management System</a>
			</div>
		</div>
		<!-- /.container-fluid -->
	</nav>

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
			<li><a class="" href="/resources"><em class="fa fa-navicon"></em>
					Settings</a></li>
			<li><a href=""><em class="fa fa-power-off">&nbsp;</em>
					Logout</a></li>
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
			<div class="col-lg-12">
				
			</div>
		</div>
		<!--/.row-->

	
			

<div>
		<h2>Employee List</h2>
		<table border = "1">
			<thead>
				<tr>
					<th scope="row">id</th>
					<th scope="row">Name</th>
					<th scope="row">Address</th>
					<th scope="row">NIC</th>
					<th scope="row">DOB</th>
					<th scope="row">Designation</th>
					<th scope="row">Update</th>
					<th scope="row">Delete</th>
				</tr>
			</thead>
			<tbody>
			
				<c:forEach items="${employeeList }" var="employee">
					<tr Class="responstable">
						<td>${employee.id }</td>
						<td>${employee.empName }</td>
						<td>${employee.address }</td>
						<td>${employee.nicNo }</td>
						<td>${employee.dob }</td>
						<td>${employee.designation }</td>
						<td>
							<a href="/editEmployee?id=${employee.id}" type="button">Update</a>
						 </td>
						<td>
							<a href="/deleteEmployee?id=${employee.id}" type="button">Delete</a>
						</td>
    	
					</tr>
				</c:forEach>
			</tbody>
		</table>
		
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



	
<br/>
<br/>
<br/>







</body>
</html>