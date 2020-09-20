<!-- By IT19180526 -->

<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://www.springframework.org/tags" prefix="spring"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>

<!DOCTYPE html>
<html>
<head>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

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

<style type="text/css">
.btn-edit {
	background-color: #555555;
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

.btn-delete {
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

.view-div {
	border: 2px solid #3e3e3e;
	height: auto;
	width: 450px;
	padding: 20px;
	margin-left: 20px;
	margin-right: 10px;
	margin-bottom: 10px;
	margin-top: 10px;
	background-color: white;
	border-radius: 10px;
}
</style>
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
			<li><a class="" href="/searchTransaction"><em
					class="fa fa-navicon"></em> Search</a></li>
			<li><a class="" href="/reportTransaction"><em
					class="fa fa-navicon"></em> Report</a></li>
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
				<li class="active">View Transaction</li>
			</ol>
		</div>
		<!--/.row-->

		<div class="row">
			<div class="col-lg-12">
				<h1 class="page-header">Transaction Details</h1>
			</div>
		</div>
		<!--/.row-->

		<div class="panel panel-container">
			<div class="row">
				<div class="col-xs-6 col-md-6 col-lg-3 view-div">
					<form:form modelAttribute="viewTransaction" method="post">
						<table>
							<tbody>
								<tr>
									<td class="column4">Transaction ID</td>
									<td class="column4">${viewTransaction.id }</td>
								</tr>
								<tr>
									<td>Date & Time</td>
									<td>${viewTransaction.date }</td>
								</tr>
								<tr>
									<td>Type</td>
									<td>${viewTransaction.type }</td>
								</tr>
								<tr>
									<td>Categorie</td>
									<td>${viewTransaction.categorie }</td>
								</tr>
								<tr>
									<td>Description</td>
									<td>${viewTransaction.description }</td>
								</tr>
								<tr>
									<td>Amount</td>
									<td>${viewTransaction.amount }</td>
								</tr>
							</tbody>
						</table>
					</form:form>
				</div>
				<div class="col-md-6">
					<button
						onclick="location.href='/editTransaction?id=${viewTransaction.id }'"
						type="button" class="btn-edit">Edit</button>
					<br>
					<button
						onclick="location.href='/deleteConfirm?id=${viewTransaction.id }'"
						type="button" class="btn-delete">Delete</button>
				</div>
			</div>
			<!--/.row-->
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
