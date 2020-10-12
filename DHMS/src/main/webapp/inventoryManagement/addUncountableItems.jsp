<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1"> 
<title>Add Uncountable Items</title>
</head>
<body style="background-color:#DDDDE8;">

<jsp:include page="/inventoryManagement/topDivs.jsp"></jsp:include>
<jsp:include page="/inventoryManagement/normalSideNav.jsp"></jsp:include>
			
			<div class="col-10">
				<h1>Add Uncountable Item</h1>
			
				<form action="/addUncountableItem">
					<!--  Item Id: <input type="number" name="itemId"> <br/> -->
					<label for="itemname">Item Name: </label>
					<input type="text" id="itemname" name="itemName" class="form-control" required> <br/>
					<label for="amount">Initial Amount: </label>
					<input type="number" id="amount" step="0.1" name="remainingAmount" class="form-control"  required> <br/>
					<!--  Unit: <input type="text" name="unit"> <br/> -->
					
					<label for="units">Select Unit: </label>
					  <select name="unit" id="units" class="form-control" required>
					    <option value="Grams">Grams</option>
					    <option value="Kilograms">Kilograms</option>
					    <option value="Mililiter">Milliliter</option>
					    <option value="Liter">Liter</option>
					  </select> <br/>
					
					<label for="type">Type: </label>
					<input type="radio" id="critical" id="type" name="type" value="true"  required>
					<label for="critical">Critical</label>
					<input type="radio" id="ncritical" name="type" value="false" >
					<label for="ncritical">Non-Critical</label> <br/>
					
					<label for="lowerlimit">Lower Limit: </label>
					<input type="number" name="lowerLimit" class="form-control" > <br/>
					
					<input type="submit" value="Add Item" id="lowerlimit" class="btn btn-primary"> 
					<a href="uncountableItemsAdvanced" class="btn btn-primary">Cancel</a>
				</form>
				
			</div>
	
	<jsp:include page="/inventoryManagement/bottomDivs.jsp"></jsp:include>

</body>
</html>