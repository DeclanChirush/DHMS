<!-- By IT19180526 -->
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://www.springframework.org/tags" prefix="spring"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@page import="org.springframework.security.core.context.SecurityContextHolder"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
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

<style type="text/css">
.srhdiv {
	border: 2px solid #3e3e3e;
	height: 220px;
	width: 300px;
	padding: 20px;
	margin-left: 20px;
	margin-right: 10px;
	margin-bottom: 10px;
	margin-top: 10px;
	background-color: white;
	border-radius: 10px;
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
				<a href="/addAdvertisement/" class="navigation-bar">Advertise</a>
				<a href="/addEmployee/" class="navigation-bar">Employee</a>
				<a href="/inventory" class="navigation-bar">Inventory</a>
				<a href="/accountmgt" class="navigation-bar">Accounting</a>
				<a href="/newPurchase" class="navigation-bar">Purchasing</a>
				<a href="/supplierList" class="navigation-bar">Supplier</a>
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
			<li><a href="/accountmgt"><em class="fa fa-dashboard">&nbsp;</em>
					Dashboard</a></li>
			<li><a class="" href="/addTransaction"><em
					class="fa fa-navicon"></em> New Transaction</a></li>
			<li><a class="" href="/showTransactionList"><em
					class="fa fa-navicon"></em> Transaction History</a></li>
			<li class="active"><a class="" href="/searchTransaction"><em
					class="fa fa-navicon"></em> Search</a></li>
			<li><a class="" href="/reportTransaction"><em class="fa fa-navicon"></em>
					Report</a></li>
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
			 
		<div class="row">
			<div class="col-md-3 srhdiv">
				<form action="/searchByDate">
					<caption>Search Transactions by Date</caption>
					<br> <br>
					<div class="form-group">
						<label for="date">Start Date:</label> <input type="date" id="date"
							name="date" class="form-control">
					</div>
					<button type="submit" class="btn btn-primary">Search</button>
				</form>
			</div>
			<div class="col-md-3 srhdiv">
				<form action="/searchByType" method="get">
					<caption>Search Transactions by Type</caption>
					<br> <br>
					<div class="form-group">
						<label for="type">Select Type:</label> <select name="type"
							id="type" class="form-control">
							<option value="Income">Income</option>
							<option value="Expense">Expense</option>
						</select>
					</div>
					<button type="submit" class="btn btn-primary">Search</button>
				</form>
			</div>
			<div class="col-md-3 srhdiv">
				<form action="/searchByCategorie" method="get">
					<caption>Search Transactions by Categories</caption>
					<br> <br>
					<div class="form-group">
						<label for="categorie">Select Categorie:</label>
						<select name="categorie" id="categorie" class="form-control">
						
							<option value="Room">Room</option>
							<option value="Food Sales">Food Sales</option>
							<option value="Beverage Sales">Beverage Sales</option>
							<option value="Telephone & Internet">Telephone & Internet</option>
							<option value="Spa">Spa</option>
							<option value="Maintenance">Maintenance</option>
							<option value="Security">Security</option>
							<option value="Office supplies expense">Office supplies expense</option>
							<option value="Miscellaneous Labor">Miscellaneous Labor</option>
							<option value="Inventory Purchases">Inventory Purchases</option>
							<option value="Other Purchases">Other Purchases</option>
							
						</select>
					</div>
					<button type="submit" class="btn btn-primary">Search</button>
				</form>
			</div>
		</div>
		<!--/.row-->

		<div class="row"></div>
		<!--/.row-->

		<div class="row">
			<div class="col-md-12">
				<div class="limiter">
					<div class="container-table100">
						<div class="wrap-table100">
							<div class="table100">
								<table class="table-fill">
									<thead>
										<tr>
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
										<c:forEach items="${transactionList}" var="transaction">
											<tr>
												<td class="text-center">${transaction.id }</td>
												<td class="text-center">${transaction.date }</td>
												<td class="text-center">${transaction.type }</td>
												<td class="text-center">${transaction.categorie }</td>
												<td class="text-center">${transaction.description }</td>
												<td class="text-center">${transaction.amount }</td>
												<td><a href="/viewTransaction?id=${transaction.id }"
													type="button">View</a></td>
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
