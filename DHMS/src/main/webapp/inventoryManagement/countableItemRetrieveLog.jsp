<%@page import="java.util.ArrayList"%>
<%@page import="java.util.List"%>

<%@page import="org.springframework.web.servlet.ModelAndView"%>
<%@page import="org.springframework.beans.factory.annotation.Autowired"%>

<%@taglib uri="http://www.springframework.org/tags" prefix="spring" %>
<%@taglib uri="http://www.springframework.org/tags/form" prefix="form" %>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    
    <%@ page import="com.dhms.model.CountableItemRetrieveLog" %>
    <%@ page import="com.dhms.controller.CountableItemController" %>
    <%@ page import="com.dhms.dao.CountableItemRetrieveLogRepo" %>
    
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Countable Items Retrieve Logs</title>
</head>
<body style="background-color:#DDDDE8;">

<jsp:include page="/inventoryManagement/topDivs.jsp"></jsp:include>
<jsp:include page="/inventoryManagement/normalSideNav.jsp"></jsp:include>

<div class="col-10">
<h1>Countable Item Logs</h1><br/>

<a href="deleteCountableItemRetrieveLogs">Clear Logs</a>

	<table class="table table-striped">
	<tr>
		<th>LogId</th>
		<th>Username</th>
		<th>Item ID</th>
		<th>Item name</th>
		<th>Quantity</th>
		<th>Date and Time</th>
		
	</tr>
		
		<c:forEach items="${logList}" var="log">
		
			<tr>
				<td> <c:out value="${log.logId}"> </c:out>  </td>
				<td> <c:out value="${log.username}"> </c:out>  </td>
				<td> <c:out value="${log.itemId}"> </c:out>  </td>
				<td> <c:out value="${log.itemName}"> </c:out>  </td>
				<td> <c:out value="${log.quantity}"> </c:out>  </td>
				<td> <c:out value="${log.dateTime}"> </c:out>  </td>
				
			</tr>
		
		</c:forEach>
	</table>
	
	</div>
<jsp:include page="/inventoryManagement/bottomDivs.jsp"></jsp:include>
</body>
</html>