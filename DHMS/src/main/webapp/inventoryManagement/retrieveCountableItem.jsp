<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Retrieve Countable Item</title>

<!--  -->
<link rel="stylesheet" href="/inventoryManagement/css/confirmModal.css">
<script>
//history.forward();
</script>


</head>
<body>
<jsp:include page="/inventoryManagement/topDivs.jsp"></jsp:include>
<jsp:include page="/inventoryManagement/normalSideNav.jsp"></jsp:include>

<div class="col-10">
<h3>Retrieve Countable Items</h3>

<!--  
	Item Id: ${countableItems.itemId}  <br/>
	Item Name: ${countableItems.itemName}  <br/>
	Remaining Quantity: ${countableItems.remainingQuantity} <br/>
	Type: ${countableItems.type}  <br/>
	Lower Limit: ${countableItems.lowerLimit}  <br/>  -->
	
	
	<div class="card">
	  <div class="card-header">
	    Item Id: ${countableItems.itemId}
	  </div>
	  <div class="card-body">
	    <h5 class="card-title">${countableItems.itemName} </h5>
	    <p class="card-text">Remaining Quantity: ${countableItems.remainingQuantity}</p>
	    <p class="card-text">Type: ${countableItems.type} </p>
	    <p class="card-text">Lower Limit: ${countableItems.lowerLimit} </p>
	    
	    
	    
	    <form action = "/processRetreive" method="post">
	
	
		<input type="hidden" name="itemId" value= "${countableItems.itemId}" >
		<label for="quantity">Quantity to be Retrieved:</label>
		<input type="number" id="quantity" name="retrieveQuantity" class="form-control" min = "0" max="${countableItems.remainingQuantity}" required> <br/>
		
		
		<div class="modal fade" id="confirmModal">
                    <div class="modal-dialog modal-md">
                        <div class="modal-content">
                            <div class="modal-header">
                                <h3>Are you sure you want to Retrieve stock from following item?</h3>
                            </div>
                            <div class="modal-body" >
                                Item: ${countableItems.itemName}
                            </div>
                            <div class="modal-footer">
                                <input class="btn btn-primary" type="submit" value="Yes">
                                <input class="btn btn-secondary" data-dismiss="modal" value="Cancel">
                            </div>
                        </div>
                    </div>
          </div>
		
		
		<!--  <input type="submit" value="Retrieve" class="btn btn-primary btn-block"> -->
		<a href="#" class="btn btn-primary btn-block"  data-toggle="modal" data-target="#confirmModal">Retrieve</a>
		
		
	</form>
	    
	    
	    
	    
	  </div>
	</div>
	
	
	
</div>
<jsp:include page="/inventoryManagement/bottomDivs.jsp"></jsp:include>
</body>
</html>