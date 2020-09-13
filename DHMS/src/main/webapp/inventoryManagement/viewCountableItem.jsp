<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Countable Item</title>
<script>
    //history.forward();
    
    /*window.onbeforeunload = function() {
    	  return "Data will be lost if you leave the page, are you sure?";*/
    	};
</script>

</head>
<body>
<jsp:include page="/inventoryManagement/topDivs.jsp"></jsp:include>
<jsp:include page="/inventoryManagement/normalSideNav.jsp"></jsp:include>



<div class="col-10">

<h3>Countable Item</h3>

<!-- 
Item Id: ${countableItems.itemId}  <br/>
Item Name: ${countableItems.itemName}  <br/>
Remaining Quantity: ${countableItems.remainingQuantity} <br/>
Type: ${countableItems.type}  <br/>
Lower Limit: ${countableItems.lowerLimit}  <br/> 

<form action="/retrieveCountableItem"> 
		<input type="hidden" name = "itemId" value="${countableItems.itemId}" >
		<input type="submit" value="Retrieve Stock" class="btn btn-primary">
</form>  -->

<div class="card">
  <div class="card-header">
    Item Id: ${countableItems.itemId}
  </div>
  <div class="card-body">
    <h5 class="card-title">${countableItems.itemName} </h5>
    <p class="card-text">Remaining Quantity: ${countableItems.remainingQuantity}</p>
    <p class="card-text">Critical: ${countableItems.type} </p>
    <p class="card-text">Lower Limit: ${countableItems.lowerLimit}</p>
    
    
    <form action="/retrieveCountableItem" > 
		<input type="hidden" name = "itemId" value="${countableItems.itemId}" >
		<input type="submit" value="Retrieve Stock" class="btn btn-primary">
	</form>
    
    
  </div>
</div>




</div>
<jsp:include page="/inventoryManagement/bottomDivs.jsp"></jsp:include>



</body>
</html>