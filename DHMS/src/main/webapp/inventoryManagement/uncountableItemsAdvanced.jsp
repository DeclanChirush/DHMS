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
<title>Uncountable Items- Advanced</title>

<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css" integrity="sha384-JcKb8q3iqJ61gNV9KGb8thSsNjpSL0n8PARn9HuZOnIxN0hoP+VmmDGMN5t9UJ0Z" crossorigin="anonymous">
<link rel="stylesheet" href="css/deleteConfirmModal.css">

<script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.1/dist/umd/popper.min.js" integrity="sha384-9/reFTGAW83EW2RDu2S0VKaIzap3H66lZH81PoYlFhbGU+6BZp6G7niu735Sk7lN" crossorigin="anonymous"></script>
<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js" integrity="sha384-B4gt1jrGC7Jh4AgTPSdUtOBvfO8shuf57BaghqFfPlYxofvL8/KUEfYiJOMMV+rV" crossorigin="anonymous"></script>
<script src="http://code.jquery.com/jquery-3.5.1.min.js" integrity="sha256-9/aliU8dGd2tb6OSsuzixeV4y/faTqgFtohetphbbj0=" crossorigin="anonymous"></script>
<style>
	.headerLink{
		text-align: center;
	}
	.headerLink h1{
		display:inline-block;
		float:left;
	}
	.headerLink a{
		float:right;
	}
</style>
</head>
<body>
<jsp:include page="/inventoryManagement/topDivs.jsp"></jsp:include> 
<jsp:include page="/inventoryManagement/normalSideNav.jsp"></jsp:include>

<div class="col-10">

<br/>
<div class="headerLink">
	<h1>Uncountable Items- Advanced Functions</h1> 
	<a href="inventoryManagement/addUncountableItems.jsp" class="btn btn-secondary">
	Add Uncountable items
	</a>
</div>
<table class="table table-striped">
		<tr> 
			<th>Item Id </th>
			<th>Item Name </th>
			<th>Remaining Amount </th>
			<th>Unit </th>
			<th>Critical </th>
			<th>Lower Limit </th>
			<th>Actions </th>
		</tr>
		
		
		<c:forEach items="${itemList}" var="item">
	
		 <tr>
		 		
		 	<td><c:out value="${item.itemId}"> </c:out>   </td>
		 	<td><c:out value="${item.itemName}"> </c:out> </td>
		 	<td><c:out value="${item.remainingAmount}"> </c:out> </td>
		 	<td><c:out value="${item.unit}"> </c:out> </td>
		 	<td><c:out value="${item.type}"> </c:out> </td>
		 	<td><c:out value="${item.lowerLimit}"> </c:out> </td>
		 	
		 	
			 	
				<td>
					<form action="getUncountableItem"> 
						<input type="hidden" name = "itemId" value="${item.itemId}" >
						<input type="submit" value="View" class="btn btn-dark">
					</form> 
				</td>
				
				<td>
					<form action="retrieveUncountableItem"> 
						<input type="hidden" name = "itemId" value="${item.itemId}" >
						<input type="submit" value="Retrieve Items" class="btn btn-primary">
					</form>
				</td>
				
				<td>
					<form action="editUncountableItem">
						<input type="hidden" name = "itemId" value="${item.itemId}">
						<input type="submit" value="Edit" class="btn btn-warning">
					</form>
				</td>
				
				<td> 
					<form action="uncountableItemDeleteConfirm">
						<input type="hidden" name="itemId" value="${item.itemId}">
						<input type="submit" value="Delete" class="btn btn-danger">
					</form> 
					
					
				</td>
				
				<td> 
					<form action="replenishUncountableItem">
						<input type="hidden" name="itemId" value="${item.itemId}">
						<input type="submit" value="Replenish" class="btn btn-success">
					</form>
				</td>
			
		 </tr>
		 
	</c:forEach>
		 
	</table>
	
	
	
</div>
<jsp:include page="/inventoryManagement/bottomDivs.jsp"></jsp:include>

<script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.1/dist/umd/popper.min.js" integrity="sha384-9/reFTGAW83EW2RDu2S0VKaIzap3H66lZH81PoYlFhbGU+6BZp6G7niu735Sk7lN" crossorigin="anonymous"></script>
<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js" integrity="sha384-B4gt1jrGC7Jh4AgTPSdUtOBvfO8shuf57BaghqFfPlYxofvL8/KUEfYiJOMMV+rV" crossorigin="anonymous"></script>
<script src="http://code.jquery.com/jquery-3.5.1.min.js" integrity="sha256-9/aliU8dGd2tb6OSsuzixeV4y/faTqgFtohetphbbj0=" crossorigin="anonymous"></script>

</body>
</html>