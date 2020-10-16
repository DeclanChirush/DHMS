<%@taglib uri="http://www.springframework.org/tags" prefix="spring" %>
<%@taglib uri="http://www.springframework.org/tags/form" prefix="form" %>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    
    <%@ page import="com.dhms.model.UncountableLowStock" %>
    <%@ page import="com.dhms.controller.UncountableLowStockController" %>
    <%@ page import="com.dhms.dao.CountableLowstockRepo" %>
    
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Uncountable Items- Low Stock</title>
</head>
<body style="background-color:#DDDDE8;">
<jsp:include page="/inventoryManagement/topDivs.jsp"></jsp:include>
<jsp:include page="/inventoryManagement/normalSideNav.jsp"></jsp:include>
<!--  -->
<div class="col-10">

<h1>Low Stock- Uncountable Items</h1> <br/>

<a href="reportUncountableLowStock">Generate report</a>

<table class="table table-striped">
		<tr> 
			<th>Item Id </th>
			<th>Item Name </th>
			
		</tr>
		
		
		<c:forEach items="${lowStockList}" var="item">
	
		 <tr>
		 		
		 	<td><c:out value="${item.itemId}"> </c:out>   </td>
		 	<td><c:out value="${item.itemName}"> </c:out> </td>
		 		
			
		 </tr>
		 
	</c:forEach>
		 
	</table>

</div>
<jsp:include page="/inventoryManagement/bottomDivs.jsp"></jsp:include>
</body>
</html>