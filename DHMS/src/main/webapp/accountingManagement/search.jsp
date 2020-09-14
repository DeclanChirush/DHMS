<!-- By IT19180526 -->
<!DOCTYPE html>
<html>
<head>

<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>

<link href="/accountingManagement/style/css/bootstrap.min.css"
	rel="stylesheet" type="text/css">
<link href="/accountingManagement/style/css/font-awesome.min.css"
	rel="stylesheet" type="text/css">
<link href="/accountingManagement/style/css/datepicker3.css"
	rel="stylesheet" type="text/css">
<link href="/accountingManagement/style/css/styles.css" rel="stylesheet"
	type="text/css">
<link href="/accountingManagement/style/css/css.css" rel="stylesheet"
	type="text/css">

<meta charset="ISO-8859-1">
<title>Dhammika Hotel | Account Management</title>
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
			<li><a href="/accountmgt"><em class="fa fa-dashboard">&nbsp;</em>
					Dashboard</a></li>
			<li><a class="" href="/addTransaction"><em
					class="fa fa-navicon"></em> New Transaction</a></li>
			<li><a class="" href="/showTransactionList"><em
					class="fa fa-navicon"></em> Transaction History</a></li>
			<li><a class="" href="/categories"><em class="fa fa-navicon"></em>
					Categories</a></li>
			<li class="active"><a class="" href="/search"><em
					class="fa fa-navicon"></em> Search</a></li>
			<li><a class="" href="/report"><em class="fa fa-navicon"></em>
					Report</a></li>
			<li><a href="/logout"><em class="fa fa-power-off">&nbsp;</em>
					Logout</a></li>
		</ul>

	</div>
	<!--/.sidebar-->

	<div class="col-sm-9 col-sm-offset-3 col-lg-10 col-lg-offset-2 main">

		<div class="row">
			<ol class="breadcrumb">
				<li><a href="#"> <em class="fa fa-home"></em>
				</a></li>
				<li>Dashboard</li>
				<li class="active">Search</li>
			</ol>
		</div>
		<!--/.row-->

		<div class="row">
			<div class="col-lg-12">
				<h1 class="page-header">Search</h1>
			</div>
		</div>
		<!--/.row-->

		<div class="panel panel-container">
			<div class="row">
				<div class="">
					<div class="col-md-3">
						<form action="/">
							<caption>Search Transactions by Period</caption>
							<br> <br>
							<div class="form-group">
								<label for="stdate">Start Date:</label> <input type="date"
									id="stdate" name="stdate" class="form-control">
							</div>
							<div class="form-group">
								<label for="enddate">End Date:</label>
								</td> <input type="date" id="enddate" name="enddate"
									class="form-control">
							</div>
							<button type="submit" class="btn btn-primary">Search</button>
						</form>
					</div>
					<div class="col-md-3">
						<form action="/">
							<caption>Search</caption>
							<br> <br>
							<div class="form-group">
								<label for="search">Enter here:</label> <input type="text"
									id="search" name="search" class="form-control">
							</div>
							<button type="submit" class="btn btn-primary">Search</button>
						</form>
					</div>
				</div>
			</div>
			<!--/.row-->
		</div>

		<div class="row"></div>
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
											<th class="column1">Transaction ID</th>
											<th class="column2">Date & Time</th>
											<th class="column3">Type</th>
											<th class="column4">Categorie</th>
											<th class="column5">Description</th>
											<th class="column6">Amount</th>
											<th class="column7"></th>
										</tr>
									</thead>
									<tbody>
										<tr>
											<td class="column1">TC0001</td>
											<td class="column2">2017-09-29 01:22</td>
											<td class="column3">iPhone</td>
											<td class="column4">X Series</td>
											<td class="column5">XR</td>
											<td class="column6">$999.00</td>
											<td class="column7"><button>View</button></td>
										</tr>
										<tr>
											<td class="column1">TC0002</td>
											<td class="column2">2017-09-28 05:57</td>
											<td class="column3">Samsung</td>
											<td class="column4">S Series</td>
											<td class="column5">S9 Plus</td>
											<td class="column6">$756.00</td>
											<td class="column7"><button>View</button></td>
										</tr>

									</tbody>
								</table>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
		<!--/.row-->

		<div class="row">
			<div class="col-md-12"></div>
		</div>
		<!--/.row-->


		<div class="row">
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


	<script src="/accountingManagement/style/js/jquery-1.11.1.min.js"></script>
	<script src="/accountingManagement/style/js/bootstrap.min.js"></script>
	<script src="/accountingManagement/style/js/chart.min.js"></script>
	<script src="/accountingManagement/style/js/chart-data.js"></script>
	<script src="/accountingManagement/style/js/easypiechart.js"></script>
	<script src="/accountingManagement/style/js/easypiechart-data.js"></script>
	<script src="/accountingManagement/style/js/bootstrap-datepicker.js"></script>
	<script src="/accountingManagement/style/js/custom.js"></script>
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
