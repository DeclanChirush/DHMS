<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
 <%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>   
<html>
<head>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
  <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
<title>New Purchase Record</title>
</head>
<body>

<nav class="navbar navbar-expand-sm bg-dark navbar-dark">
  <!-- Brand/logo -->
  <a class="navbar-brand" href="#">Dhammika Hotel</a>
  
  <!-- Links -->
  <ul class="navbar-nav">
    <li class="nav-item">
      <a class="nav-link" href="/newPurchase">Add New</a>
    </li>
    <li class="nav-item">
      <a class="nav-link" href="/purchaseList">View All</a>
    </li>
    <li class="nav-item">
      <a class="nav-link" href="/purchaseReport">Reports</a>
    </li>
  </ul>
</nav><br>
<h2 align="center">New Purchase Record</h2>

<div class="container-fluid">
<form class="form-horizontal" action="savePurchase" method="post">
<fieldset>
	<table border="0" width="100%">
	<tr>
		<th style="padding-left: 40px;">
			
			<!-- Text input-->
			<div class="form-group">
			  <label class="col-md-4 control-label" for="id">Purchase ID</label>  
			  <div class="col-md-8">
			  <input id="id" name="id" type="text" placeholder="Auto Generated" class="form-control input-md" value="${purchase.id }" readonly>
			  </div>
			</div>
			
			<!-- Select Basic -->
			<div class="form-group">
			  <label class="col-md-4 control-label" for="supplier">Supplier</label>
			  <div class="col-md-8">
			    <select id="supplier" name="supplier" class="form-control" value="${purchase.supplier }" required>
			      <option value="HK Farm House">HK Farm House</option>
			      <option value="UDH Fish">UDH Fish</option>
			      <option value="Samantha Fresh vegetables">Samantha Fresh vegetables</option>		      
			    </select>
			  </div>
			</div>
			
			<!-- Date input-->
			<div class="form-group">
			  <label class="col-md-4 control-label" for="date">Date</label>  
			  <div class="col-md-8">
			  <input id="date" name="date" type="date" placeholder="Purchase Date" class="form-control input-md" value="${purchase.date }" required>
			    
			  </div>
			</div>
			
			<!-- Textarea -->
			<div class="form-group">
			  <label class="col-md-4 control-label" for="description">Remark</label>
			  <div class="col-md-8">                     
			    <textarea class="form-control" id="description" name="description" value="${purchase.description }">Description</textarea>
			  </div>
			</div>
	
		</th>
		
		<th>
			
			<!-- Select Basic -->
			<div class="form-group">
			  <label class="col-md-4 control-label" for="item">Item</label>
			  <div class="col-md-8">
			    <select id="item" name="item" class="form-control" value="${purchase.item }" required>
			      <option value="Chicken">Chicken</option>
			      <option value="Egg">Egg</option>
			      <option value="Thalapath">Thalapath</option>
			      <option value="Onion">Onion</option>
			      <option value="Carrot">Carrot</option>		      
			    </select>
			  </div>
			</div>
			
			<!-- Text input-->
			<div class="form-group">
			  <label class="col-md-4 control-label" for="quantity">Quantity</label>  
			  <div class="col-md-8">
			  <input id="quantity" name="quantity" type="text" placeholder="Quantity" class="form-control input-md" value="${purchase.quantity }" required>
			  </div>
			</div>
			
			<!-- Text input-->
			<div class="form-group">
			  <label class="col-md-4 control-label" for="price">Unit Price</label>  
			  <div class="col-md-8">
			  <input id="price" name="price" type="text" placeholder="Price" class="form-control input-md" value="${purchase.price }" required>
			  </div>
			</div>	
	
			<!-- Text input-->
			<div class="form-group">
			  <label class="col-md-4 control-label" for="total">Total</label>  
			  <div class="col-md-8">
			  <input id="total" name="total" type="text" placeholder="Total Cost" class="form-control input-md" value="${purchase.total }" required>
			  </div>
			</div>
		</th>		
	</tr>
	<tr>
		<td></td>
		<td>		
			<!-- Button -->
			<div class="form-group">
			  <label class="col-md-4 control-label" for="submit"></label>
			  <div class="col-md-8">
			    <button type="submit" class="btn btn-info btn-block my-4" value="Register">Add Record</button>
			  </div>
			</div>
		</td>
	</tr>
	</table>
	</fieldset>
	</form>
	</div>
</body>
</html>