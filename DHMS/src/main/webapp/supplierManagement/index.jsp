<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Supplier Management System</title>
<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css" 
integrity="sha384-JcKb8q3iqJ61gNV9KGb8thSsNjpSL0n8PARn9HuZOnIxN0hoP+VmmDGMN5t9UJ0Z" crossorigin="anonymous">
	
</head>
<body>
	<nav class="navbar navbar-expand-lg navbar-light bg-light">
	  <a class="navbar-brand" href="internal">Dhammika Hotel </a>
	  <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
	    <span class="navbar-toggler-icon"></span>
	  </button>
	
	  <div class="collapse navbar-collapse" id="navbarSupportedContent">
	    <ul class="navbar-nav mr-auto">
	      <li class="nav-item">
	        <a class="nav-link" href="inventory">Inventory <span class="sr-only">(current)</span></a>
	      </li>
	      <li class="nav-item active">
	        <a class="nav-link" href="#">Suppliers</a>
	      </li>
	      <li class="nav-item">
	        <a class="nav-link" href="#">Purchases</a>
	      </li>
	      <li class="nav-item">
	        <a class="nav-link" href="#">Accounts</a>
	      </li>
	      <li class="nav-item">
	        <a class="nav-link" href="#">Employee Info</a>
	      </li>
	      <li class="nav-item dropdown">
	        <a class="nav-link dropdown-toggle" href="#" id="navbarDropdown" role="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
	          Dropdown
	        </a>
	        <div class="dropdown-menu" aria-labelledby="navbarDropdown">
	          <a class="dropdown-item" href="#">Action</a>
	          <a class="dropdown-item" href="#">Another action</a>
	          <div class="dropdown-divider"></div>
	          <a class="dropdown-item" href="#">Something else here</a>
	        </div>
	      </li>
	      <li class="nav-item">
	        <a class="nav-link disabled" href="#" tabindex="-1" aria-disabled="true">Disabled</a>
	      </li>
	    </ul>
	    
	  </div>
	</nav>

	<div class="container mt-5">
	<h1>Suppliers List<span><a th:href = "@{/addNewSupplierForm}" class="btn btn-success" style="margin-left: 655px;">Add Supplier</a></span></h1>
	
		<form action="/" class="form-inline">
			<div class="form-group mb-2">
				<input type="text" class="form-control" name="name" placeholder="Search Supplier" />
				<input type="submit" value="Search" class="btn btn-primary"/>
			</div>
		</form>
	
	
		<table class ="table mt-3">
			<thead>
				<tr>
					<th>Supplier Name</th>
					<th>Supplier Email</th>
					<th>Supplier Address</th>
					<th>Contact Person</th>
					<th>Actions</th>
				</tr>
			</thead>
			<tbody>
				<tr th:each="supplier : ${listSuppliers}">
					
					<td th:text="${supplier.supplier_name}"></td>
					<td th:text="${supplier.supplier_email}"></td>
					<td th:text="${supplier.supplier_address}"></td>
					<td th:text="${supplier.contact_person}"></td>
					<td> <a  th:href="@{/supplierFormForUpdate/{id}(id=${supplier.supplier_id})}" class="btn btn-primary">Update</a>
					    <a  th:href="@{/deleteSupplier/{id}(id=${supplier.supplier_id})}" class="btn btn-danger">Delete</a></td>
				</tr>
			</tbody>
		</table>
		
		
	</div>
<script src="https://code.jquery.com/jquery-3.5.1.slim.min.js" integrity="sha384-DfXdz2htPH0lsSSs5nCTpuj/zy4C+OGpamoFVy38MVBnE+IbbVYUew+OrCXaRkfj" crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.1/dist/umd/popper.min.js" integrity="sha384-9/reFTGAW83EW2RDu2S0VKaIzap3H66lZH81PoYlFhbGU+6BZp6G7niu735Sk7lN" crossorigin="anonymous"></script>
<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js" integrity="sha384-B4gt1jrGC7Jh4AgTPSdUtOBvfO8shuf57BaghqFfPlYxofvL8/KUEfYiJOMMV+rV" crossorigin="anonymous"></script>
</body>
</html>