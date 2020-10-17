<!-- By IT19180526 -->
<!DOCTYPE html>
<html>
<head>

<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>

<%@ taglib uri="http://www.springframework.org/tags" prefix="spring"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<%@page
	import="org.springframework.security.core.context.SecurityContextHolder"%>
<link href="/accountingManagement/style/css/bootstrap.min.css"
	rel="stylesheet" type="text/css">
<link href="/accountingManagement/style/css/font-awesome.min.css"
	rel="stylesheet" type="text/css">
<link href="/accountingManagement/style/css/datepicker3.css"
	rel="stylesheet" type="text/css">
<link href="/accountingManagement/style/css/styles.css" rel="stylesheet"
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

.navigation-bar {
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
				<a class="navbar-brand" href="/"><span>Dhammika Hotel </span>Management
					System</a> <a href="/inventory" class="navigation-bar">Inventory</a> <a
					href="/accountmgt" class="navigation-bar">Accounting</a> <a
					href="/newPurchase" class="navigation-bar">Purchasing</a> <a
					href="#" class="navigation-bar">Suppling</a> <a href="/logout"
					class="navigation-bar" style="color: red">Logout</a>
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
			<li class="active"><a class="" href="/addTransaction"><em
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
				<li class="active">Transaction</li>
			</ol>
		</div>
		<!--/.row-->

		<div class="row">
			<div class="col-lg-12">
				<h1 class="page-header">New Transaction</h1>
			</div>
		</div>
		<!--/.row-->

		<div class="row">
			<div class="col-md-6 srhdiv">

				<spring:url value="/insertTransaction" var="saveTransaction" />
				<form:form modelAttribute="transactionobj" method="post"
					action="${saveTransaction}">

					<div class="form-group">
						<form:hidden path="id" class="form-control" />
					</div>

					<div class="form-group">

						<label for="categorie">Transaction Categories:</label>
						<form:select path="categorie" class="form-control">

							<form:option value="Room" />
							<form:option value="Food Sales" />
							<form:option value="Beverage Sales" />
							<form:option value="Telephone & Internet" />
							<form:option value="Spa" />
							<form:option value="Maintenance" />
							<form:option value="Security" />
							<form:option value="Office supplies expense" />
							<form:option value="Miscellaneous Labor" />
							<form:option value="Inventory Purchases" />
							<form:option value="Other Purchases" />

						</form:select>

					</div>

					<div class="form-group">

						<label for="type">Transaction Type:</label> &nbsp; &nbsp; &nbsp;

						<form:radiobutton path="type" value="Income" label="Income"
							checked="checked" />
						&nbsp; &nbsp; &nbsp; &nbsp;
						<form:radiobutton path="type" value="Expense" label="Expense" />

					</div>

					<div class="form-group">

						<label for="amount">Amount:</label>
						<form:input type="number" path="amount"
							class="form-control variable1" required="required" />

					</div>

					<div class="form-group">

						<label for="date">Date & Time:</label>
						<c:set var="dateTime" value="<%=new java.util.Date()%>" />
						<fmt:formatDate type="both" value="${dateTime}" />
						<form:input type="date" path="date" class="form-control"
							required="required" />

					</div>

					<div class="form-group">

						<label for="description">Description:</label>
						<form:input path="description" class="form-control variable3"
							required="required" />

					</div>

					<button type="submit" class="btn btn-primary">Add
						Transaction</button>
				</form:form>
			</div>
			<div class="demo-box srhdiv">
				<button class="btn-demo"
					onClick="autoFill(10000,'Cash'); return false;">DEMO</button>
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
	<script type="text/javascript">
		function autoFill(var1, var3) {
			$('.variable1').val(var1);
			$('.variable3').val(var3);
		}
	</script>

</body>
</html>
