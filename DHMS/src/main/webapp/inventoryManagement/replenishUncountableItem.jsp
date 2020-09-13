<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Replenish Uncountable Item</title>

<link rel="stylesheet" href="/inventoryManagement/css/confirmModal.css">

</head>
<body>
<jsp:include page="/inventoryManagement/topDivs.jsp"></jsp:include>
<jsp:include page="/inventoryManagement/normalSideNav.jsp"></jsp:include>

<div class="col-10">

<h3>Replenish Uncountable Items</h3>

<!--  
	Item Id: ${uncountableItems.itemId}  <br/>
	Item Name: ${uncountableItems.itemName}  <br/>
	Remaining Amount: ${uncountableItems.remainingAmount} <br/>
	Unit: ${uncountableItems.unit} <br/>
	Type: ${uncountableItems.type}  <br/>
	Lower Limit: ${uncountableItems.lowerLimit}  <br/>  -->
	
	
	<div class="card">
	  <div class="card-header">
	    Item Id: ${uncountableItems.itemId}
	  </div>
	  <div class="card-body">
	    <h5 class="card-title">${uncountableItems.itemName} </h5>
	    <p class="card-text">Remaining Amount: ${uncountableItems.remainingAmount}</p>
	    <p class="card-text">Unit: ${uncountableItems.unit}</p>
	    <p class="card-text">Critical: ${uncountableItems.type}</p>
	    <p class="card-text">Lower Limit: ${uncountableItems.lowerLimit} </p>
	    
	    
	    <form action = "/processReplenishU"  method="post">
	<input type="hidden" name="itemId" value= "${uncountableItems.itemId}" >
		Amount to be Replenished: <br/>
		<input class="form-control" type="number" step="0.1" name="replenishAmount" min = "0" required> <br/>
		
		
		
		<div class="modal fade" id="confirmModal">
                    <div class="modal-dialog modal-md">
                        <div class="modal-content">
                            <div class="modal-header">
                                <h3>Are you sure you want to replenish stock for the following item?</h3>
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
		
		<a href="#" class="btn btn-success"  data-toggle="modal" data-target="#confirmModal">Replenish</a>
		<a href="uncountableItemsAdvanced" class="btn btn-secondary">Cancel</a>
		
		<!--   <input type="submit" value="Replenish"> -->
	</form>
	    
	    
	  </div>
	</div>
	
	
	
	
	
	
</div>
<jsp:include page="/inventoryManagement/bottomDivs.jsp"></jsp:include>


</body>
</html>