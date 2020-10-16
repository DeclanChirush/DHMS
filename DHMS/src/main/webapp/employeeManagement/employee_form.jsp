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

	<div>
		<spring:url value="/saveEmployee" var="saveURL"/>
		<h2>ADD EMPLOYEE</h2>
		<form:form modelAttribute="employeeForm" method="post" action="${saveURL}" >
			<form:hidden path="id" />
			<div>
				<label>Employee Name</label>
				<form:input path="empName"  required = "required" />
			</div>
			<div>
				<label>employee address</label>
				<form:input path="address" required = "required"/>
			</div>
			<div>
				<label>employee NIC</label>
				<form:input path="nicNo" pattern="[0-9]{9}[V]" required = "required" />
			</div>
			<div>
				<label>Date of birth</label>
				<form:input path="dob" required = "required" />
			</div>
			<div>
				<label>Designation</label>
				<form:input path="designation" required = "required"/>
			</div>
			<div>
				<label>Salary</label>
				<form:input path="salary" required = "required"/>
			</div>
			
			
			<button type="submit">Save</button>
		</form:form>

	</div>


</body>
</html>