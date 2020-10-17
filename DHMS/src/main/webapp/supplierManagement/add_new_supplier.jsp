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
        <a class="nav-link" href="inventory">Inventory<span class="sr-only">(current)</span></a>
      </li>
      <li class="nav-item active">
        <a class="nav-link" href="Supplier">Suppliers</a>
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


<div class="content-wrapper">

        <div class="container-fluid">

            <div class="col-md-4 mx-auto mt-5">
                <form class="form-horizontal" th:action="@{/addSupplier}" th:object ="${supplier}" method="POST">
                    <fieldset>
                      <div id="legend">
                        <legend class="text-center">Add New Supplier</legend>
                      </div>
                      <div class="form-group">
                        <label class="control-label">Supplier Name</label>
                        <div class="controls">
                          <input type="text" th:field="*{supplier_name}" placeholder="Enter Supplier Name" class="input-xlarge form-control">
                        </div>
                      </div>
                   
                      <div class="form-group">
                        <label class="control-label">E-mail</label>
                        <div class="controls">
                          <input type="email" th:field="*{supplier_email}" placeholder="Enter Supplier Email" class="input-xlarge form-control">
                        </div>
                      </div>
                   
                      <div class="form-group">
                        <label class="control-label">Address</label>
                        <div class="controls">
                          <input type="text" th:field="*{supplier_address}"  placeholder="Enter Supplier Address" class="input-xlarge form-control">
                        </div>
                      </div>
                   
                      <div class="form-group">
                        <label class="control-label">Contact Person</label>
                        <div class="controls">
                          <input type="text" th:field="*{contact_person}" placeholder="Enter Contact Person" class="input-xlarge form-control">
                     
                        </div>
                      </div>
                   
                      <div class="form-group">
                        <div class="controls">
                          <button class="btn btn-success btn-block" type="submit" >Add New Supplier</button>
                        </div>
                      </div>

                      <div class="form-group">
                        <div class="controls">
                          <a th:href = "@{/}" class="btn btn-danger btn-block">Back to Home</a>
                        </div>
                      </div>
                    </fieldset>
                  </form>

              



            </div>


        



        </div>

</div>

<script src="https://code.jquery.com/jquery-3.5.1.slim.min.js" integrity="sha384-DfXdz2htPH0lsSSs5nCTpuj/zy4C+OGpamoFVy38MVBnE+IbbVYUew+OrCXaRkfj" crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.1/dist/umd/popper.min.js" integrity="sha384-9/reFTGAW83EW2RDu2S0VKaIzap3H66lZH81PoYlFhbGU+6BZp6G7niu735Sk7lN" crossorigin="anonymous"></script>
<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js" integrity="sha384-B4gt1jrGC7Jh4AgTPSdUtOBvfO8shuf57BaghqFfPlYxofvL8/KUEfYiJOMMV+rV" crossorigin="anonymous"></script>

</body>
</html>