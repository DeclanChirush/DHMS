<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://www.springframework.org/tags" prefix="spring"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>  

<!DOCTYPE html>
<html>
<head>


<link href="/backendDashboardStyle/css/bootstrap.min.css"
	rel="stylesheet" type="text/css">
<link href="/backendDashboardStyle/css/font-awesome.min.css"
	rel="stylesheet" type="text/css">
<link href="/backendDashboardStyle/css/datepicker3.css" rel="stylesheet"
	type="text/css">
<link href="/backendDashboardStyle/css/styles.css" rel="stylesheet"
	type="text/css">
<link href="/backendDashboardStyle/css/css.css" rel="stylesheet"
	type="text/css">


<link
	href="/advertisementManagement/style/formStyle/vendor/mdi-font/css/material-design-iconic-font.min.css"
	rel="stylesheet" media="all">
<link
	href="/advertisementManagement/style/formStyle/vendor/font-awesome-4.7/css/font-awesome.min.css"
	rel="stylesheet" media="all">
<!-- Font special for pages-->
<link
	href="https://fonts.googleapis.com/css?family=Poppins:100,100i,200,200i,300,300i,400,400i,500,500i,600,600i,700,700i,800,800i,900,900i"
	rel="stylesheet">

<!-- Vendor CSS-->
<link
	href="/advertisementManagement/style/formStyle/vendor/select2/select2.min.css"
	rel="stylesheet" media="all">
<link
	href="/advertisementManagement/style/formStyle/vendor/datepicker/daterangepicker.css"
	rel="stylesheet" media="all">

<!-- Main CSS-->
<link href="/advertisementManagement/style/formStyle/css/main.css"
	rel="stylesheet" media="all">

<link href="https://fonts.googleapis.com/css?family=Poppins"
	rel="stylesheet" />
<link href="/advertisementManagement/style/searchBarStyle/css/main.css"
	rel="stylesheet" />

<link href="/advertisementManagement/style/buttonStyle/button.css"
	rel="stylesheet">

<style type="text/css">
.srhdiv {
	border: 2px solid #3e3e3e;
	padding: 20px;
	margin-left: 20px;
	margin-right: 20px;
	margin-bottom: 20px;
	margin-top: 20px;
	background-color: white;
	border-radius: 10px;
}

.btn-demo {
	background-color: #ff0000;
	border: none;
	color: white;
	padding: 6px;
	width: 100px;
	text-align: center;
	text-decoration: none;
	display: inline-block;
	margin: 4px 2px;
	cursor: pointer;
	font-size: 12px;
	border-radius: 2px;
}

.demo-box {
	position: relative;
	min-height: 1px;
	padding-right: 15px;
	padding-left: 15px;
	width: 13.5%;
	float: left
}

.time-box {
	position: relative;
	min-height: 1px;
	padding-right: 15px;
	padding-left: 15px;
	width: 20%;
	float: left
}

.navigation-bar{
	color: white;
	float: left;
  	height: 50px;
  	padding: 15px 10px;
  	font-size: 13px;
  	line-height: 20px;
}
</style>

<meta charset="ISO-8859-1">
<title>Dhammika Hotel | Dashboard</title>
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
				<a class="navbar-brand" href="/"><span>Dhammika Hotel </span>Management System</a>
				<a href="/addAdvertisement/" class="navigation-bar">Advertise</a>
				<a href="/addEmployee/" class="navigation-bar">Employee</a>
				<a href="/inventory" class="navigation-bar">Inventory</a>
				<a href="/accountmgt" class="navigation-bar">Accounting</a>
				<a href="/newPurchase" class="navigation-bar">Purchasing</a>
				<a href="/addNewSupplierForm" class="navigation-bar">Supplier</a>
				<a href="/userLogs" class="navigation-bar">UserLogs</a>
				<a href="/logout" class="navigation-bar" style="color:red">Logout</a>
			</div>
		</div>
		<!-- /.container-fluid -->
	</nav>
	<br>
	<br>
	<br>
	
	<jsp:include page="/commonNavBar.jsp"></jsp:include>

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


	</div>
	<!--/.sidebar-->

	<div class="col-sm-9 col-sm-offset-3 col-lg-10 col-lg-offset-2 main">

		<div class="row">
			<ol class="breadcrumb">
				<li><a href="#"> <em class="fa fa-home"></em>
				</a></li>
				<li>Dashboard</li>
				<li class="active">Report</li>
			</ol>
		</div>
		<!--/.row-->

		<div class="row">
			<div class="col-lg-12">
				<h1 class="page-header">UserLogs Report</h1>
			</div>
		</div>
		<!--/.row-->

		<div class="panel panel-container">
			<div class="row">
				<div class="col-xs-6 col-md-3 col-lg-3 no-padding"></div>
			</div>
			<!--/.row-->
		</div>

		<div class="row">

			
			<div class="col-md-12 srhdiv">
				<center><br> <br>
				<div class="form-group">
					<label style="font-size:2vw;">Click here to get Userlogs pdf :</label>
				</div>
				<button onclick="location.href='/AlluserLogs'"
					type="button" class="btn ash">Generate</button> </center>
			</div>


		</div>
		<!--/.row-->
		<div class="row">
				<div class="col-md-12">
					<div class="limiter">
						<div class="container-table100">
							<div class="wrap-table100">
								<div class="table100">
									<table>
									<thead>
										<tr class="table100-head">
										
											<th scope="row" class="column1">User ID</th>
											<th scope="row" class="column1">Username</th>
											<th scope="row" class="column2">Date & Time</th>
	
											
										</tr>
									</thead>
									<tbody>
									
										<c:forEach items="${userLogList }" var="userLog">
											<tr>
												
												<td class="column1">${userLog.id}</td>
												<td class="column2">${userLog.username}</td>
												<td class="column3">${userLog.date}</td>
							
			
						    	
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

		<!--/.main-->
	</div>

	<script src="/backendDashboardStyle/js/jquery-1.11.1.min.js"></script>
	<script src="/backendDashboardStyle/js/bootstrap.min.js"></script>
	<script src="/backendDashboardStyle/js/chart.min.js"></script>
	<script src="/backendDashboardStyle/js/chart-data.js"></script>
	<script src="/backendDashboardStyle/js/easypiechart.js"></script>
	<script src="/backendDashboardStyle/js/easypiechart-data.js"></script>
	<script src="/backendDashboardStyle/js/bootstrap-datepicker.js"></script>
	<script src="/backendDashboardStyle/js/custom.js"></script>
	<script
		src="/advertisementManagement/style/searchBarStyle/js/extention/choices.js"></script>
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
</body>
</html>
