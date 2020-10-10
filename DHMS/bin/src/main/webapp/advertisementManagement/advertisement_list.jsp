<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>  
<%@ taglib uri="http://www.springframework.org/tags" prefix="spring"%>  

<!DOCTYPE html>
<html>
<head>


<link href="/backendDashboardStyle/css/bootstrap.min.css"
	rel="stylesheet" type="text/css">
<link href="/backendDashboardStyle/css/font-awesome.min.css"
	rel="stylesheet" type="text/css">
<link href="/backendDashboardStyle/css/datepicker3.css"
	rel="stylesheet" type="text/css">
<link href="/backendDashboardStyle/css/styles.css" rel="stylesheet"
	type="text/css">
<link href="/backendDashboardStyle/css/css.css" rel="stylesheet"
	type="text/css">
	
	<link href="/advertisementManagement/style/formStyle/vendor/mdi-font/css/material-design-iconic-font.min.css" rel="stylesheet" media="all">
    <link href="/advertisementManagement/style/formStyle/vendor/font-awesome-4.7/css/font-awesome.min.css" rel="stylesheet" media="all">
    <!-- Font special for pages-->
    <link href="https://fonts.googleapis.com/css?family=Poppins:100,100i,200,200i,300,300i,400,400i,500,500i,600,600i,700,700i,800,800i,900,900i" rel="stylesheet">

    <!-- Vendor CSS-->
    <link href="/advertisementManagement/style/formStyle/vendor/select2/select2.min.css" rel="stylesheet" media="all">
    <link href="/advertisementManagement/style/formStyle/vendor/datepicker/daterangepicker.css" rel="stylesheet" media="all">

    <!-- Main CSS-->
    <link href="/advertisementManagement/style/formStyle/css/main.css" rel="stylesheet" media="all">
    <link href="/advertisementManagement/style/buttonStyle/button.css" rel = "stylesheet">
    
	
	<link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Roboto|Varela+Round">

<link rel="stylesheet" href="https://fonts.googleapis.com/icon?family=Material+Icons">
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css">
	<link href="/advertisementManagement/style/alertPopUPStyle/alert.css" rel="stylesheet" media="all">


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
				<li class="active">List</li>
			</ol>
		</div>
		<!--/.row-->

		<div class="row">
			<div class="col-lg-12">
				<h1 class="page-header">Advertisement List</h1>
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
				<div class="col-md-12">
					<div class="limiter">
						<div class="container-table100">
							<div class="wrap-table100">
								<div class="table100">
									<table>
									<thead>
										<tr class="table100-head">
								
											<th scope="row" class="column1">Title</th>
											<th scope="row" class="column2">Offer Percentage</th>
											<th scope="row" class="column3">Time Period</th>
											<th scope="row" class="column4">Type</th>
											<th scope="row" class="column5">Description</th>
											<th scope="row" class="column6">Update</th>
											<th scope="row" class="column7">Delete</th>
										</tr>
									</thead>
									<tbody>
									
										<c:forEach items="${advertisementList }" var="advertisement">
											<tr>
												
												<td class="column1">${advertisement.title }</td>
												<td class="column2">${advertisement.percentage }</td>
												<td class="column3">${advertisement.timePeriod }</td>
												<td class="column4">${advertisement.type }</td>
												<td class="column5">${advertisement.description }</td>
											
												<td class="column6">
													<a href="/editAdvertisement?id=${advertisement.id}" type="button">Update</a>
												 </td>
												<td class="column7">
													
														<a href="#myModal" data-toggle="modal">Delete</a>
						
														
														<!-- Modal HTML -->
														<div id="myModal" class="modal fade">
															<div class="modal-dialog modal-confirm">
																<div class="modal-content">
																	<div class="modal-header flex-column">
																		<div class="icon-box">
																			<i class="material-icons">&#xE5CD;</i>
																		</div>						
																		<h4 class="modal-title w-100">Are you sure?</h4>	
														                <button type="button" class="close" data-dismiss="modal" aria-hidden="true">&times;</button>
																	</div>
																	<div class="modal-body">
																		<p>Do you really want to delete these records? This process cannot be undone.</p>
																	</div>
																	<div class="modal-footer justify-content-center">
																		<div class="row">
																			<button type="button" class="btn btn-secondary" data-dismiss="modal">Cancel</button>
																			<button type="button" onclick="location.href='/deleteAdvertisement?id=${advertisement.id}'" class="btn btn-danger">Delete</button>
																		</div>
																	</div>
																</div>
															</div>
														</div>     
												
												
												
													<!--  <a href="/deleteAdvertisement?id=${advertisement.id}" type="button">Delete</a> -->
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
		<!--/.row-->
	</div>
	<!--/.main-->


	<script src="/backendDashboardStyle/js/jquery-1.11.1.min.js"></script>
	<script src="/backendDashboardStyle/js/bootstrap.min.js"></script>
	<script src="/backendDashboardStyle/js/chart.min.js"></script>
	<script src="/backendDashboardStyle/js/chart-data.js"></script>
	<script src="/backendDashboardStyle/js/easypiechart.js"></script>
	<script src="/backendDashboardStyle/js/easypiechart-data.js"></script>
	<script src="/backendDashboardStyle/js/bootstrap-datepicker.js"></script>
	<script src="/backendDashboardStyle/js/custom.js"></script>
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
</body>
</html>
