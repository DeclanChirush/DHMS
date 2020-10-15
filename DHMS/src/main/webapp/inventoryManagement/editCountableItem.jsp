<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title> <!--  -->

<link rel="stylesheet" href="/inventoryManagement/css/confirmModal.css">

</head>
<body>
<jsp:include page="/inventoryManagement/topDivs.jsp"></jsp:include>
<jsp:include page="/inventoryManagement/normalSideNav.jsp"></jsp:include>

<div class="col-10">

<!-- 
Item Id: ${countableItems.itemId}  <br/>
Item Name: ${countableItems.itemName}  <br/>
Remaining Quantity: ${countableItems.remainingQuantity} <br/>
Type: ${countableItems.type}  <br/>
Lower Limit: ${countableItems.lowerLimit}  <br/> <br/>  <br/>   -->

<h3>Edit Item</h3>
<div class="card">
  <div class="card-header">
    ${countableItems.itemId} 
  </div>
  <div class="card-body">
    <h5 class="card-title">${countableItems.itemName}  </h5>
    <p class="card-text">Remaining Quantity: ${countableItems.remainingQuantity}</p>
    <p class="card-text">Critical: ${countableItems.type}  </p>
    <p class="card-text">Lower Limit: ${countableItems.lowerLimit}   </p>
  </div>
</div>

<br/> <br/>

<div class="card">
  <div class="card-header">
    Enter new details
  </div>
  <div class="card-body">
  
  
    <form action="/processEditCountabltItem"  method="post">

			<label for="itemname">Item Name: </label>
			<input type="text" id="itemname" name="itemName" class="form-control"  required> <br/>
			<label for="quantity">Remaining Quantity: </label>
			<input type="number" id="quantity" name="remainingQuantity" min="0" class="form-control"  required> <br/>
			
			<label for="type">Type: </label>
			<input type="radio" id="critical" id="type" name="type" value="true"  required>
			<label for="critical">Critical</label>
			<input type="radio" id="ncritical" name="type" value="false" >
			<label for="ncritical">Non-Critical</label> <br/>
			
			<label for="lowerlimit">Lower Limit: </label>
			<input type="number" id="lowerlimit" name="lowerLimit" min="0" class="form-control" > <br/>
			
			<input type="hidden" name="itemId" value="${countableItems.itemId}">
			
			
			<div class="modal fade" id="confirmModal">
                    <div class="modal-dialog modal-md">
                        <div class="modal-content">
                            <div class="modal-header">
                                <h3>Are you sure you want to save the changes you made?</h3>
                            </div>
                            <!-- 
                            <div class="modal-body" >
                                Item: ${countableItems.itemName}
                            </div>  -->
                            <div class="modal-footer">
                                <input class="btn btn-primary" type="submit" value="Yes">
                                <input class="btn btn-secondary" data-dismiss="modal" value="Cancel">
                            </div>
                        </div>
                    </div>
          </div>
          
          <a href="#" class="btn btn-warning"  data-toggle="modal" data-target="#confirmModal">Edit Item</a>
			
			<!--  <input type="submit" value="Edit Item" class="btn btn-warning"> <br/> -->
			
			<a href="countableItemsAdvanced" class="btn btn-secondary">Cancel</a>
</form>
    
    
  </div>
</div>



</div>

<jsp:include page="/inventoryManagement/bottomDivs.jsp"></jsp:include>
</body>
</html>