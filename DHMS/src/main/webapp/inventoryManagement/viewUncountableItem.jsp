<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Uncountable Item</title>
</head>
<body>
<jsp:include page="/inventoryManagement/topDivs.jsp"></jsp:include>
<jsp:include page="/inventoryManagement/normalSideNav.jsp"></jsp:include>

<div class="col-10">

<h3>Uncountable Item</h3>

<!--  
Item Id: ${uncountableItems.itemId}  <br/>
Item Name: ${uncountableItems.itemName}  <br/>
Remaining Amount: ${uncountableItems.remainingAmount} <br/>
Unit: ${uncountableItems.unit}  <br/>
Type: ${uncountableItems.type}  <br/>
Lower Limit: ${uncountableItems.lowerLimit}  <br/>  -->
<!--  -->

<div class="card">
  <div class="card-header">
    Item Id: ${uncountableItems.itemId} 
  </div>
  <div class="card-body">
    <h5 class="card-title">${uncountableItems.itemName} </h5>
    <p class="card-text">Remaining Amount: ${uncountableItems.remainingAmount}.</p>
    <p class="card-text">Unit: ${uncountableItems.unit}</p>
    <p class="card-text">Critical: ${uncountableItems.type}</p>
    <p class="card-text">Lower Limit: ${uncountableItems.lowerLimit}</p>


	<form action="retrieveUncountableItem"> 
		<input type="hidden" name = "itemId" value="${uncountableItems.itemId}" >
		<input type="submit" value="Retrieve Stock" class="btn btn-primary">
	</form>
	
	
  </div>
</div>





</div>
<jsp:include page="/inventoryManagement/bottomDivs.jsp"></jsp:include>
</body>
</html>