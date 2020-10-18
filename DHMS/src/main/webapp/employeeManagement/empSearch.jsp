<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://www.springframework.org/tags" prefix="spring"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>

<meta charset="ISO-8859-1">
<title>Dhammika Hotel | Employee Management</title>
<link rel="stylesheet" href="Style.css">

<link href="/employeeManagement/style/css/bootstrap.min.css"
	rel="stylesheet" type="text/css">
<link href="/employeeManagement/style/css/font-awesome.min.css"
	rel="stylesheet" type="text/css">
<link href="/employeeManagement/style/css/datepicker3.css"
	rel="stylesheet" type="text/css">
<link href="/employeeManagement/style/css/styles.css" rel="stylesheet"
	type="text/css">

<link href="/employeeManagement/style/css/css.css" rel="stylesheet"
	type="text/css">

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
					System</a> <a class="navbar-brand"> </a>
				<div class="collapse navbar-collapse">
					<ul class="nav navbar-nav pull-left">
						<li><a href="/addAdvertisement/" style="color: white">Advertise</a></li>
						<li><a href="/addEmployee/" style="color: white">Employee</a></li>
						<li><a href="/inventory" style="color: white">Inventory</a></li>
						<li><a href="/accountmgt" style="color: white">Accounting</a></li>
						<li><a href="/newPurchase" style="color: white">Purchasing</a></li>
						<li><a href="/supplierList" style="color: white">Supplier</a></li>
						<li><a href="/userLogs" style="color: white">UserLogs</a></li>
						<li><a href="/logout" style="color: red">Logout</a>
						<li>
					</ul>
				</div>
			</div>
		</div>
		<!-- /.container-fluid -->
	</nav>
	<br>
	<br>
	<br>

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
			<li><a class="active" href="/employeeList"><em class="fa fa-dashboard">&nbsp;</em>
					Employee List</a></li>
			<li class=""><a href="/addEmployee/"><em
					class="fa fa-navicon"></em> Add Employees</a></li>
			<li><a class="" href="/categories"><em class="fa fa-navicon"></em>
					Approve Leaves</a></li>
			<li><a class="" href="/search"><em class="fa fa-navicon"></em>
					Salary</a></li>
			<li><a class="" href="/empReport"><em class="fa fa-navicon"></em>
					Report</a></li>
			<li><a class="" href="/empSearch"><em class="fa fa-navicon"></em>
					Search</a></li>		

		</ul>

	</div>
	<!--/.sidebar-->
	<div class="col-sm-9 col-sm-offset-3 col-lg-10 col-lg-offset-2 main">
		<div class="row">
			<ol class="breadcrumb">
				<li><a href="#"> <em class="fa fa-home"></em>
				</a></li>
				<li class="active">All Employee</li>
			</ol>
		</div>
		<!--/.row-->

		<div class="row">
			<div class="col-lg-12"></div>
		</div>
		<!--/.row-->
	





	<div class="row">
		<form action="/empSearchByType" method="get">
					<caption>Search Employee by Type</caption>
					<br> <br>
					<div class="form-group">
						<label for="categorie">Select Type:</label>
						<select name="type" id="type" class="form-control">
						
							<option value="inventory">Inventory</option>
							<option value="accounts">accounts</option>
							<option value="supplier">supplier</option>
							<option value="purchasing">purchasing</option>
							<option value="booking">booking</option>
							
									
							
						</select>
					</div>
					<button type="submit" class="btn btn-primary">Search</button>
				</form>


	</div>


	<div class="row">
		<div class="col-md-12">
			<div class="limiter">
				<div class="container-table100">
					<div class="wrap-table100">
						<div class="table100">
							<h2>Employee List</h2>
							<table>
								<thead>
									<tr class="table100-head">
										<th scope="row" class="column1">id</th>
										<th scope="row" class="column2">Name</th>
										<th scope="row" class="column3">Address</th>
										<th scope="row" class="column4">NIC</th>
										<th scope="row" class="column5">DOB</th>
										<th scope="row" class="column6">Designation</th>
										<th scope="row" class="column7">Salary</th>
										<th scope="row" class="column8">Type</th>

									</tr>
								</thead>
								<tbody>

									<c:forEach items="${employeeLists }" var="employee">
										<tr>
											<td class="column1">${employee.id }</td>
											<td class="column2">${employee.empName }</td>
											<td class="column3">${employee.address }</td>
											<td class="column4">${employee.nicNo }</td>
											<td class="column5">${employee.dob }</td>
											<td class="column6">${employee.designation }</td>
											<td class="column7">${employee.salary }</td>
											<td class="column8">${employee.type }</td>

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
</div>
</body>
</html>
