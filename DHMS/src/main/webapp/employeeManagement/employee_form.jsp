<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://www.springframework.org/tags" prefix="spring"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>    
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Employee Form</title>
</head>
<body>

	<div class="responstable">
		<spring:url value="/saveEmployee" var="saveURL"/>
		<h2>ADD EMPLOYEE</h2>
		<form:form modelAttribute="employeeForm" method="post" action="${saveURL}" cssClass="responstable">
			<form:hidden path="id" />
			<div class="form-group">
				<label>Employee Name</label>
				<form:input path="empName"  required = "required" />
			</div>
			<div class="form-group">
				<label>employee address</label>
				<form:input path="address" required = "required"/>
			</div>
			<div class="form-group">
				<label>employee NIC</label>
				<form:input path="nicNo" required = "required" />
			</div>
			<div class="form-group">
				<label>Date of birth</label>
				<form:input path="dob" required = "required" />
			</div>
			<div class="form-group">
				<label>Designation</label>
				<form:input path="designation" required = "required"/>
			</div>
			
			
			
			<button type="submit" class="btn btn-primary">Save</button>
		</form:form>

	</div>


</body>
</html>