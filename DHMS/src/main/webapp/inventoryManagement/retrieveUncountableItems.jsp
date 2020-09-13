<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Retrieve Uncountable Item</title>

<link rel="stylesheet" href="/inventoryManagement/css/confirmModal.css">

</head>
<body>
<jsp:include page="/inventoryManagement/topDivs.jsp"></jsp:include>
<jsp:include page="/inventoryManagement/normalSideNav.jsp"></jsp:include>

<div class="col-10">
<!--  
<h1>Retrieve Uncountable Items</h1>
	Item Id: ${uncountableItems.itemId}  <br/>
	Item Name: ${uncountableItems.itemName}  <br/>
	Remaining Quantity: ${uncountableItems.remainingAmount} <br/>
	Unit: ${uncountableItems.unit} <br/>
	Type: ${uncountableItems.type}  <br/>
	Lower Limit: ${uncountableItems.lowerLimit}  <br/>  -->
	
	
	
	<div class="card">
	  <div class="card-header">
	    Item Id: ${uncountableItems.itemId} 
	  </div>
	  <div class="card-body">
	    <h5 class="card-title">${uncountableItems.itemName}</h5>
	    <p class="card-text">Remaining Quantity: ${uncountableItems.remainingAmount}</p>
	    <p class="card-text">Unit: ${uncountableItems.unit}</p>
	    <p class="card-text">Critical: ${uncountableItems.type} </p>
	    <p class="card-text">Lower Limit: ${uncountableItems.lowerLimit} </p>
	    
	    
	    <form action = "/processRetrieveU"  method="post">
	<input type="hidden" name="itemId"  value= "${uncountableItems.itemId}" >
	<label for="amount">Amount to be Retrieved:</label>
		<input type="number" id ="amount" step="0.1" name="retieveAmount" class="form-control" min = "0" max="${uncountableItems.remainingAmount}" required> <br/>
		
		
		<div class="modal fade" id="confirmModal">
                    <div class="modal-dialog modal-md">
                        <div class="modal-content">
                            <div class="modal-header">
                                <h3>Are you sure you want to Retrieve stock from following item?</h3>
                            </div>
                            <div class="modal-body" >
                                Item: ${uncountableItems.itemName}
                            </div>
                            <div class="modal-footer">
                                <input class="btn btn-primary" type="submit" value="Yes">
                                <input class="btn btn-secondary" data-dismiss="modal" value="Cancel">
                            </div>
                        </div>
                    </div>
          </div>
          
          
		<a href="#" class="btn btn-primary btn-block"  data-toggle="modal" data-target="#confirmModal">Retrieve</a>
		
		<!--  <input type="submit" value="Retrieve" class="btn btn-primary btn-block">-->
	</form>
	    
	  </div>
	</div>
	
	
	
	
</div>
<jsp:include page="/inventoryManagement/bottomDivs.jsp"></jsp:include>
</body>
</html>