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
      <a class="nav-link" href="#">Reports</a>
    </li>
  </ul>
</nav><br>
<h2 align="center">Purchase Records</h2>

			<div class="container text-center" id="tasksDiv">
				<hr>
				<div class="table-responsive">
					<table class="table table-striped table-bordered">
						<thead>
							<tr>
								<th>Id</th>
								<th>Supplier</th>
								<th>Date</th>
								<th>Description</th>
								<th>Item</th>
								<th>Quantity</th>
								<th>Price</th>
								<th>Total</th>								
								<th>Delete</th>
							</tr>
						</thead>
						<tbody>
							<c:forEach var="purchase" items="${purchases }">
								<tr>
									<td>${purchase.id}</td>
									<td>${purchase.supplier}</td>
									<td>${purchase.date}</td>
									<td>${purchase.description}</td>
									<td>${purchase.item}</td>
									<td>${purchase.quantity}</td>									
									<td>${purchase.price}</td>									
									<td>${purchase.total}</td>
									<td><a href="/updatePurchase?id=${purchase.id }">Update</a></td>									
									<td><a href="/deletePurchase?id=${purchase.id }">Delete</a></td>
								</tr>
							</c:forEach>
						</tbody>
					</table>
				</div>
			</div>

</body>
</html>