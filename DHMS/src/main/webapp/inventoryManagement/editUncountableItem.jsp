<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Edit Uncountable Item</title> <!--  -->

<link rel="stylesheet" href="/inventoryManagement/css/confirmModal.css">

</head>
<body style="background-color:#DDDDE8;">

<jsp:include page="/inventoryManagement/topDivs.jsp"></jsp:include>
<jsp:include page="/inventoryManagement/normalSideNav.jsp"></jsp:include>

<div class="col-10">
<!--  
Item Id: ${uncountableItems.itemId}  <br/>
Item Name: ${uncountableItems.itemName}  <br/>
Remaining Amount: ${uncountableItems.remainingAmount} <br/>
Unit: ${uncountableItems.unit}  <br/>
Type: ${uncountableItems.type}  <br/> 
Lower Limit: ${uncountableItems.lowerLimit}  <br/>  <br/> <br/>-->

<h3>Edit uncountable item</h3>
<div class="card">
  <div class="card-header">
    Item Id: ${uncountableItems.itemId} 
  </div>
  <div class="card-body">
    <h5 class="card-title">${uncountableItems.itemName}</h5>
    <p class="card-text">Remaining Amount: ${uncountableItems.remainingAmount}</p>
    <p class="card-text">Unit: ${uncountableItems.unit}</p>
    <p class="card-text">Critical: ${uncountableItems.type}</p>
    <p class="card-text">Lower Limit: ${uncountableItems.lowerLimit}</p>
  </div>
</div>

<br/> <br/>
<div class="card">
  <div class="card-header">
    Enter new Details:
  </div>
  <div class="card-body">
    
    <form action="/processEditUncountabltItem"  method="post">

			<label for="itemname">Item Name: </label>
			<input type="text" id="itemname" name="itemName" class="form-control"  required> <br/>
			<label for="amount">Remaining Amount: </label>
			<input type="number" id="amount" step="0.1" name="remainingAmount" min="0" class="form-control"  required> <br/>
			
			<label for="units">Select Unit:</label>
				<select name="unit" id="units" class="form-control"  required>
					<option value="Grams">Grams</option>
					<option value="Kilograms">Kilograms</option>
					<option value="Mililiter">Milliliter</option>
					<option value="Liter">Liter</option>
				</select> <br/>
			
			<label for="type">Type: </label>
			<input type="radio" id="critical" id="type" name="type" value="true" required>
			<label for="critical">Critical</label>
			<input type="radio" id="ncritical" name="type" value="false" > 
			<label for="ncritical">Non-Critical</label> <br/>
			
			<label for="lowerlimit">Lower Limit: </label>
			<input type="number" id="lowerlimit" name="lowerLimit" min="0" class="form-control" > <br/>
			
			<input type="hidden" name="itemId" value="${uncountableItems.itemId}">
			
			<div class="modal fade" id="confirmModal">
                    <div class="modal-dialog modal-md">
                        <div class="modal-content">
                            <div class="modal-header">
                                <h3>Are you sure you want to save the changes you made?</h3>
                            </div>
                            
                            <div class="modal-footer">
                                <input class="btn btn-primary" type="submit" value="Yes">
                                <input class="btn btn-secondary" data-dismiss="modal" value="Cancel">
                            </div>
                        </div>
                    </div>
          </div>
			
			
			<!--  input type="submit" value="Edit Item" class="btn btn-warning"> <br/> -->
			
			<a href="#" class="btn btn-warning"  data-toggle="modal" data-target="#confirmModal">Edit</a>
			<a href="uncountableItemsAdvanced" class="btn btn-secondary">Cancel</a>
</form>
  </div>
</div>



 <br/>

</div>

<jsp:include page="/inventoryManagement/bottomDivs.jsp"></jsp:include>

</body>
</html>