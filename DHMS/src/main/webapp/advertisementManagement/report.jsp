<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://www.springframework.org/tags" prefix="spring"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>

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
	
	<link href="/advertisementManagement/style/buttonStyle/button.css" rel = "stylesheet">

<style type="text/css">
.srhdiv {
	border: 2px solid #3e3e3e;
	height: 220px;
	padding: 20px;
	margin:auto;
	background-color: white;
	border-radius: 6px;
}
.center {
  margin: auto;
  width: 60%;
  padding: 10px;
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


			<form action="/advertisementSearch" method="get">
				<input class="form-control" type="text" placeholder="ex: food, booking" aria-label="Search"  name="type">
				<br>
				<button class="button ash" type="submit">Search</button>
			</form> 
		
		<ul class="nav menu">

			<li><a class="" href="/addAdvertisement/"><em
					class="fa fa-navicon"></em> Add Advertisement</a></li>
			<li><a class="" href="/advertisementList"><em
					class="fa fa-navicon"></em> View List</a></li>
			<li><a class="" href="/report"><em
					class="fa fa-navicon"></em> Report</a></li>
			
		</ul>

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
				<h1 class="page-header">Advertisement Report</h1>
			</div>
		</div>
		<!--/.row-->

		<div class="panel panel-container">
			<div class="row">
				<div class="col-xs-6 col-md-3 col-lg-3 no-padding"></div>
			</div>
			<!--/.row-->
		</div>
	
		<div class="col-md-12 srhdiv">
			<form action="/reportType" method="get">
					<caption><u><b>Advertisement by Type</u></b></caption>
					<br> <br>
					<div class="form-group">
						<label for="type">Select Type:</label> <select name="type"
							id="type" class="form-control">
							<option value="food">Food</option>
							<option value="booking">Booking</option>
						</select>
					</div>
					<center><button type="submit" class="btn btn-primary">Generate</button></center>
			</form>
		</div>
		<!--/.row-->
	
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
