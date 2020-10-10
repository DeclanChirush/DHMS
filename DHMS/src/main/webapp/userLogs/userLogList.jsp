<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>  
<%@ taglib uri="http://www.springframework.org/tags" prefix="spring"%>  
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
			
			
	<div>
		<h2>Employee List</h2>
		<table border = "1">
			<thead>
				<tr>
					<th scope="row">User Id</th>
					<th scope="row">Username</th>
					<th scope="row">Password</th>
					<th scope="row">State</th>
					<th scope="row">Update</th>
					<th scope="row">Delete</th>
				</tr>
			</thead>
			<tbody>
			
				<c:forEach items="${userLogList }" var="user">
					<tr Class="responstable">
						<td>${user.id }</td>
						<td>${user.username }</td>
						<td>${user.password }</td>
						<td>${user.state }</td>
						<td>
							<a href="/editUserLog?id=${user.id}" type="button">Update</a>
						 </td>
						<td>
							<a href="/deleteUserLog?id=${user.id}" type="button">Delete</a>
						</td>
    	
					</tr>
				</c:forEach>
			</tbody>
		</table>
		
	</div> 


</body>
</html>