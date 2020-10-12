<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Inventory Dashboard</title>


</head>
<body style="background-color:#DDDDE8;">
<jsp:include page="/inventoryManagement/navbar.jsp"></jsp:include>
	
	
	<div class="container-fluid" >
	
		<div class="row">
		

			<jsp:include page="/inventoryManagement/normalSideNav.jsp"></jsp:include>

			<div class="col-10">
				
				<h2>Inventory Management</h2> <br/><br/>
				<!--  
				<h3>Countable Items</h3>
				<a href="viewAllCountableItems"> View All Countable Items</a> <br/>
				<a href="inventoryManagement/addCountableItem.jsp">Add countable items</a> <br/>
				<a href="viewCountableLowStock">View Low stock for countable items</a> <br/>
				<a href="countableItemsAdvanced">Advanced functions on countable items</a> <br/>
				
				<h3>Uncountable Items</h3>
				<a href="viewAllUncountableItems"> View All Uncountable Items</a> <br/>
				<a href="/inventoryManagement/addUncountableItems.jsp">Add Uncountable items</a> <br/>
				<a href="viewUncountableLowStock">View Low stock for uncountable items</a> <br/>
				<a href="uncountableItemsAdvanced">Advanced functions on uncountable items</a> <br/> -->
				
				<div class="row">
				
					<div class="col-6">
					<div class="jumbotron">
					
						<h3>Countable Items</h3> <br/>
						<h4>Quick search</h4>
						
						<form action="/getCountableItem">

			            	<div class="form-group mx-sm-3 mb-2">
			                    <input class="form-control" type="text" placeholder="Enter countable item Id " name="itemId" aria-label="Search">
			                </div>
			
			                <button class="btn btn-primary btn-block" type="submit">Search</button> <br/>
			
			            </form>
			            
			            <a href="viewAllCountableItems" class="btn btn-secondary btn-block"> View All Countable Items</a> <br/> 
						<a href="viewCountableLowStock" class="btn btn-secondary btn-block">View Low stock for countable items</a> <br/> 
						<a href="countableItemsAdvanced" class="btn btn-secondary btn-block">Advanced functions on countable items</a> <br/>
						<a href="countableItemRetrieveLogs" class="btn btn-secondary btn-block">Countable Items Retrieve logs</a> <br/> 
						
					</div> <!-- End jumbotron -->
					</div> <!-- End of countable items column -->
					
					<div class="col-6">
					<div class="jumbotron">
					
						<h3>Uncountable Items</h3> <br/>
						<h4>Quick search</h4>
						
						<form action="/getUncountableItem">

		                        <div class="form-group mx-sm-3 mb-2">
		                            <input class="form-control" type="text" placeholder="Enter uncountable item Id " name="itemId" aria-label="Search">
		                        </div>
		
		                        <button class="btn btn-primary btn-block" type="submit">Search</button>  <br/>
		
		             	</form>
		             	
		             	<a href="viewAllUncountableItems" class="btn btn-secondary btn-block"> View All Uncountable Items</a> <br/> 
						<a href="viewUncountableLowStock" class="btn btn-secondary btn-block">View Low stock for uncountable items</a> <br/> 
						<a href="uncountableItemsAdvanced" class="btn btn-secondary btn-block">Advanced functions on uncountable items</a> <br/>
						<a href="uncountableItemRetrieveLogs" class="btn btn-secondary btn-block">Uncountable Items retrieve logs</a> <br/> 
		             	
		             	
		            </div>	<!-- End jumbotron -->
					</div> <!-- End of uncountable items column -->
					
					
				</div>
				
				
			</div>
			
			
            
            
            
			
		</div>  <!-- end of row -->
	
	</div>
</body>
</html>