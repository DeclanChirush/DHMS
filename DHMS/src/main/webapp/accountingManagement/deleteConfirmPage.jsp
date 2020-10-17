<!-- By IT19180526 -->

<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://www.springframework.org/tags" prefix="spring"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@page import="org.springframework.security.core.context.SecurityContextHolder"%>
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
<link href="/accountingManagement/style/css/popup.css" rel="stylesheet"
	type="text/css">

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
	width: 400px;
	height: 220px;
}

.divconf {
	min-height: 1px;
	padding-right: 15px;
	padding-left: 15px;
	float: left;
	text-align: center;
	margin-left: auto;
	margin-right: auto;
	position: absolute;
	z-index: 1;
	left: 0;
	right: 0;
}

.btn-yes {
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

.btn-no {
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

.navigation-bar{
	color: white;
	float: left;
  	height: 50px;
  	padding: 15px 15px;
  	font-size: 14px;
  	line-height: 20px;
}
</style>

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
				<a class="navbar-brand" href="/"><span>Dhammika Hotel </span>Management System</a>
				<a href="/inventory" class="navigation-bar">Inventory</a>
				<a href="/accountmgt" class="navigation-bar">Accounting</a>
				<a href="/newPurchase" class="navigation-bar">Purchasing</a>
				<a href="#" class="navigation-bar">Suppling</a>
				<a href="/logout" class="navigation-bar" style="color:red">Logout</a>
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
				<div class="col-md-12">
					<form:form modelAttribute="deleteTransaction" method="post">
						<h2>Are you want to delete Transaction ID :
							${deleteTransaction.id }</h2>
					</form:form>
				</div>				
			</div>
			<!--/.row-->
			
			<div  class="row">
				<div class="divconf srhdiv">
					<h4>Are you sure?</h4>
					<h5>Do you really want to delete these records? This process
						cannot be undone.</h5>
						<br>
						<br>
					<button
						onclick="location.href='/deleteTransaction?id=${deleteTransaction.id }'"
						type="button" class="btn-yes">Yes</button>
					<button
						onclick="location.href='/viewTransaction?id=${deleteTransaction.id }'"
						type="button" class="btn-no">No</button>
				</div>
			</div>
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
