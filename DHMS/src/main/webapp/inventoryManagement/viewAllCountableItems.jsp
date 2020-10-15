<%@page import="java.util.ArrayList"%>
<%@page import="java.util.List"%>

<%@page import="org.springframework.web.servlet.ModelAndView"%>
<%@page import="org.springframework.beans.factory.annotation.Autowired"%>

<%@taglib uri="http://www.springframework.org/tags" prefix="spring" %>
<%@taglib uri="http://www.springframework.org/tags/form" prefix="form" %>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    
    <%@ page import="com.dhms.model.CountableItems" %>
    <%@ page import="com.dhms.controller.CountableItemController" %>
    <%@ page import="com.dhms.dao.CountableItemRepo" %>
    
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Countable Items</title>

<script>
    //history.forward();
</script>



</head>
<body>
<jsp:include page="/inventoryManagement/topDivs.jsp"></jsp:include>
<jsp:include page="/inventoryManagement/normalSideNav.jsp"></jsp:include>

<div class="col-10">

<h1> All Countable Items</h1>
	
	
	<table class="table table-striped">
		<tr> 
			<th>Item Id </th>
			<th>Item Name </th>
			<th>Remaining Quantity </th>
			<th>Type </th>
			<th>Lower Limit </th>
			<th>Actions </th>
		</tr>
		
		
		<c:forEach items="${itemList}" var="item">
	
		 <tr>
		 		
		 	<td><c:out value="${item.itemId}"> </c:out>   </td>
		 	<td><c:out value="${item.itemName}"> </c:out> </td>
		 	<td><c:out value="${item.remainingQuantity}"> </c:out> </td>
		 	<td><c:out value="${item.type}"> </c:out> </td>
		 	<td><c:out value="${item.lowerLimit}"> </c:out> </td>
		 	
		 	
			 	
				<td>
					<form action="getCountableItem"> 
						<input type="hidden" name = "itemId" value="${item.itemId}" >
						<input type="submit" value="View" class="btn btn-dark">
					</form> 
				</td>
				
				<td>
					<form action="retrieveCountableItem"> 
						<input type="hidden" name = "itemId" value="${item.itemId}" >
						<input type="submit" value="Retrieve Items" class="btn btn-primary">
					</form>
				</td>
				
				
			
		 </tr>
		 
	</c:forEach>
		 
	</table>
	
</div>
<jsp:include page="/inventoryManagement/bottomDivs.jsp"></jsp:include>

</body>
</html>