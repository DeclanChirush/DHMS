<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://www.springframework.org/tags" prefix="spring"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<%@page import="org.springframework.security.core.context.SecurityContextHolder"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>



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

				<spring:url value="/saveLeave" var="saveURL" />
				<form:form modelAttribute="LeaveForm" method="post"
					action="${saveURL}">

					<div class="form-group">
						<form:hidden path="leaveId" class="form-control" />
					</div>

					<div class="form-group">

						<label for="year">Leave Year:</label>
						<form:select path="year" class="form-control">

							<form:option value="2020" />
							<form:option value="2021" />
							<form:option value="2022" />
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

						<label for="type">Leave Type:</label> &nbsp; &nbsp; &nbsp;

						<form:radiobutton path="type" value="Annual" label="Annual"
							checked="checked" />
						&nbsp; &nbsp; &nbsp; &nbsp;
						<form:radiobutton path="type" value="Casual" label="Casual" />

					</div>
		
					<div class="form-group">

						<label for="date">From Date:</label>
						<form:input type="date" path="date" class="form-control"
							required="required" />

					</div>
<!--  
					<div class="form-group">

						<label for="toDate">From Date:</label>
						<form:input type="toDate" path="toDate" class="form-control"
							required="required" />

					</div>
-->

					<button type="submit" class="btn btn-primary">Add
						Transaction</button>
				</form:form>
			</div>
</div>
</div>


</body>
</html>