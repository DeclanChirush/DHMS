<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://www.springframework.org/tags" prefix="spring"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>  
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>


	<spring:url value="/saveUserLog" var="saveURL"/>
	<form:form modelAttribute="userLogsForm" method="post" action="${saveURL}" cssClass="responstable">
			<form:hidden path="id" />
			<div class="form-group">
				<label>Username</label>
				<form:input path="username" required = "required"/>
			</div>
			<div class="form-group">
				<label>Password</label>
				<form:input path="password" type="password" required = "required" />
			</div>
			<div class="form-group">
				<label>Select State:</label>
				<select name="state" id="type" class="form-control">
							<option value="deactivate">Deactivate</option>
							<option value="activate">Activate</option>
	
				</select>
				
			</div>
			
			<button type="submit" class="btn btn-primary">Save</button>
			
	</form:form>		

</body>
</html>