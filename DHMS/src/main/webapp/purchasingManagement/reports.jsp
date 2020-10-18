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
<h2 align="center">Reports</h2>

<div class="container-fluid">
	<table border="0" width="100%">
	<tr>
		<th style="padding-left: 40px;">
		<td>
		<form class="form-horizontal" action="/reportAllPurchase" method="get">
		<fieldset>		
			<!-- Button -->
			<div class="form-group">
			  <label class="col-md-4 control-label" for="submit"></label>
			  <div class="col-md-8">
			    <button type="submit" class="btn btn-info btn-block my-4" value="Register">All Purchase Records</button>
			  </div>
			</div>
		</fieldset>
		</form>
		</td>	
		</th>
		
		<th>
		<td>
		<form class="form-horizontal" action="/reportAllPurchase" method="get">
		<fieldset>		
			<!-- Button -->
			<div class="form-group">
			  <label class="col-md-4 control-label" for="submit"></label>
			  <div class="col-md-8">
			    <button type="submit" class="btn btn-info btn-block my-4" value="Register">All Purchase Records</button>
			  </div>
			</div>
		</fieldset>
		</form>
		</td>
	</tr>
	</table>
	</div>
</body>
</html>