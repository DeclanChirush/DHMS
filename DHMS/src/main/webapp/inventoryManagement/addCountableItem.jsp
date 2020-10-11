<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1"> 
<title>Add Countable Items</title>
</head>
<body>
<jsp:include page="/inventoryManagement/topDivs.jsp"></jsp:include>

	<jsp:include page="/inventoryManagement/normalSideNav.jsp"></jsp:include>
	
	<div class="col-10">
		<h1>Add countable Item</h1>
	
		<form action="/addCountableItem" method="post">
			<!--  Item Id: <input type="number" name="itemId"> <br/> -->
			<label for="itemname">Item Name:</label>
			<input type="text" name="itemName" id="itemname" class="form-control"  required> <br/>
			<label for="quantity">Initial Quantity:</label>
			<input type="number" name="remainingQuantity" id="quantity" min="0" class="form-control"  required> <br/>
			
			<label for="type">Type: </label>
			<input type="radio" id="critical" id="type" name="type" value="true"   required>
			<label for="critical">Critical</label>
			<input type="radio" id="ncritical" name="type" value="false"  >
			<label for="ncritical">Non-Critical</label> <br/>
			
			<label for="lowerlimit">Lower Limit: </label>
			<input type="number" name="lowerLimit" min="0" id="lowerlimit" class="form-control" > <br/>
			
			
			<input type="submit" value="Add Item" class="btn btn-primary"> 
			<a href="countableItemsAdvanced" class="btn btn-secondary">Cancel</a>
			
		</form>
		
	</div>
	
<jsp:include page="/inventoryManagement/bottomDivs.jsp"></jsp:include>

</body>
</html>