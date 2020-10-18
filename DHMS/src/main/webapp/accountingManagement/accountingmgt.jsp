<!-- By IT19180526 -->
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@page import="org.springframework.security.core.context.SecurityContextHolder"%>
<link href="/accountingManagement/style/css/bootstrap.min.css"
	rel="stylesheet" type="text/css">
<link href="/accountingManagement/style/css/font-awesome.min.css"
	rel="stylesheet" type="text/css">
<link href="/accountingManagement/style/css/datepicker3.css"
	rel="stylesheet" type="text/css">
<link href="/accountingManagement/style/css/styles.css" rel="stylesheet"
	type="text/css">
	
<style type="text/css">
.navigation-bar{
	color: white;
	float: left;
  	height: 50px;
  	padding: 15px 10px;
  	font-size: 13px;
  	line-height: 20px;
}
</style>
<title>Dhammika Hotel | Account Management</title>

</head>
<body>

	<nav class="navbar navbar-custom navbar-fixed-top" role="navigation">
		<div class="container-fluid">
			<div class="navbar-header">
				<button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#sidebar-collapse">
					<span class="sr-only">Toggle navigation</span>
					<span class="icon-bar"></span>
					<span class="icon-bar"></span>
					<span class="icon-bar"></span>
				</button>
				<a class="navbar-brand" href="/"><span>Dhammika Hotel </span>Management System</a>
				<a href="/addAdvertisement/" class="navigation-bar">Advertise</a>
				<a href="/addEmployee/" class="navigation-bar">Employee</a>
				<a href="/inventory" class="navigation-bar">Inventory</a>
				<a href="/accountmgt" class="navigation-bar">Accounting</a>
				<a href="/newPurchase" class="navigation-bar">Purchasing</a>
				<a href="#" class="navigation-bar">Supplier</a>
				<a href="/userLogs" class="navigation-bar">UserLogs</a>
				<a href="/logout" class="navigation-bar" style="color:red">Logout</a>
			</div>
		</div>
		<!-- /.container-fluid -->
	</nav>

	<div id="sidebar-collapse" class="col-sm-3 col-lg-2 sidebar">

		<div class="profile-sidebar">
			<div class="profile-userpic">
				<img
					src="/accountingManagement/style/profile.png"
					class="img-responsive" alt="Profile-Photo">
			</div>
			<div class="profile-usertitle">
				<div class="profile-usertitle-name">
					<%
						final String currentUserName = SecurityContextHolder.getContext().getAuthentication().getName();
					%>
					<span class="badge badge-pill badge-secondary">User: <%=currentUserName%></span>
				</div>
				<div class="profile-usertitle-status">
					<span class="indicator label-success"></span>Online
				</div>
			</div>
			<div class="clear"></div>
		</div>

		<div class="divider"></div>

		<ul class="nav menu">
			<li class="active"><a href="/accountmgt"><em
					class="fa fa-dashboard">&nbsp;</em> Dashboard</a></li>
			<li><a class="" href="/addTransaction"><em
					class="fa fa-navicon"></em> New Transaction</a></li>
			<li><a class="" href="/showTransactionList"><em
					class="fa fa-navicon"></em> Transaction History</a></li>
			<li><a class="" href="/searchTransaction"><em
					class="fa fa-navicon"></em> Search</a></li>
			<li><a class="" href="/reportTransaction"><em
					class="fa fa-navicon"></em> Report</a></li>
		</ul>

	</div>
	<!--/.sidebar-->

	<div class="col-sm-9 col-sm-offset-3 col-lg-10 col-lg-offset-2 main">
		<div class="row">
			<ol class="breadcrumb">
				<li><a href="#"> <em class="fa fa-home"></em>
				</a></li>
				<li class="active">Dashboard</li>
			</ol>
		</div>
		<!--/.row-->

		<div class="row">
			<div class="col-lg-12">
				<h1 class="page-header">Accounting Management Dashboard</h1>
			</div>
		</div>
		<!--/.row-->

		<div class="panel panel-container">
			<div class="row">
				<div class="col-xs-6 col-md-3 col-lg-3 no-padding">
					<div class="panel panel-teal panel-widget border-right">
						<div class="row no-padding">
							<a href="/addTransaction">Add new Transactions</a>
						</div>
					</div>
				</div>
				<div class="col-xs-6 col-md-3 col-lg-3 no-padding">
					<div class="panel panel-blue panel-widget border-right">
						<div class="row no-padding">
							<a href="/reportTransaction">Transactions Report<br>by Type
							</a>
						</div>
					</div>
				</div>

				<div class="col-xs-6 col-md-3 col-lg-3 no-padding">
					<div class="panel panel-blue panel-widget border-right">
						<div class="row no-padding">
							<a href="/reportTransaction">Transactions Report<br>by Date
							</a>
						</div>
					</div>
				</div>

				<div class="col-xs-6 col-md-3 col-lg-3 no-padding">
					<div class="panel panel-blue panel-widget border-right">
						<div class="row no-padding">
							<a href="/reportTransaction">Transactions Report<br>by Categories
							</a>
						</div>
					</div>
				</div>
			</div><!--/.row-->
		</div>
		
		<div class="panel panel-container">
			<div class="row">
				<div class="col-xs-6 col-md-3 col-lg-3 no-padding">
					<div class="panel panel-teal panel-widget border-right">
						<div class="row no-padding">
							<a href="/showTransactionList">All Transactions</a>
						</div>
					</div>
				</div>
				<div class="col-xs-6 col-md-3 col-lg-3 no-padding">
					<div class="panel panel-blue panel-widget border-right">
						<div class="row no-padding">
							<a href="/searchTransaction">Transactions Search<br>by Type
							</a>
						</div>
					</div>
				</div>

				<div class="col-xs-6 col-md-3 col-lg-3 no-padding">
					<div class="panel panel-blue panel-widget border-right">
						<div class="row no-padding">
							<a href="/searchTransaction">Transactions Search<br>by Date
							</a>
						</div>
					</div>
				</div>

				<div class="col-xs-6 col-md-3 col-lg-3 no-padding">
					<div class="panel panel-blue panel-widget border-right">
						<div class="row no-padding">
							<a href="/searchTransaction">Transactions Search<br>by Categories
							</a>
						</div>
					</div>
				</div>
			</div><!--/.row-->
		</div>
		
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

</body>
</html>
