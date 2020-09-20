<!-- By IT19180526 -->
<!DOCTYPE html>
<html>
<head>

<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>

<%@ taglib uri="http://www.springframework.org/tags" prefix="spring"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>

<link href="/accountingManagement/style/css/bootstrap.min.css"
	rel="stylesheet" type="text/css">
<link href="/accountingManagement/style/css/font-awesome.min.css"
	rel="stylesheet" type="text/css">
<link href="/accountingManagement/style/css/datepicker3.css"
	rel="stylesheet" type="text/css">
<link href="/accountingManagement/style/css/styles.css" rel="stylesheet"
	type="text/css">

<style type="text/css">
.editdiv {
	border: 2px solid #3e3e3e;
	padding: 20px;
	margin-left: 20px;
	margin-right: 20px;
	margin-bottom: 20px;
	margin-top: 20px;
	background-color: white;
	border-radius: 10px;
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
				<li class="active">Transaction</li>
			</ol>
		</div>
		<!--/.row-->

		<div class="row">
			<div class="col-lg-12">
				<h1 class="page-header">Edit Transaction</h1>
			</div>
		</div>
		<!--/.row-->

		<div class="panel panel-container">

			<div class="row"></div>
			<!--/.row-->

			<div class="row">
				<div class="col-md-6 editdiv">

					<spring:url value="/insertTransaction" var="saveTransaction" />
					<form:form modelAttribute="transactionobj" method="post"
						action="${saveTransaction}">

						<h3>Transaction ID : ${transactionobj.id}</h3>

						<div class="form-group">
							<form:hidden path="id" class="form-control" />
							<!-- 
							<label for="id">Transaction ID:</label>
							<form:input path="id" class="form-control" />
							 -->

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

							<form:radiobutton path="type" value="Income" />
							<label for="income">Income</label> &nbsp; &nbsp; &nbsp; &nbsp;

							<form:radiobutton path="type" value="Expense" />
							<label for="expense">Expense</label>
						</div>

						<div class="form-group">

							<label for="amount">Amount:</label>
							<form:input path="amount" class="form-control" />

						</div>

						<div class="form-group">

							<label for="date">Date:</label>
							<form:input type="date" path="date" class="form-control" />

						</div>

						<div class="form-group">

							<label for="description">Description:</label>
							<form:input path="description" class="form-control" />

						</div>

						<button type="submit" class="btn btn-primary">Save
							Transaction</button>

					</form:form>

				</div>

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