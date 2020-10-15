
<%@page import="org.springframework.security.core.context.SecurityContextHolder"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title> <!--  -->
<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css"
        integrity="sha384-JcKb8q3iqJ61gNV9KGb8thSsNjpSL0n8PARn9HuZOnIxN0hoP+VmmDGMN5t9UJ0Z" crossorigin="anonymous">
        
        
    <link rel="stylesheet" href="/inventoryManagement/css/sidebar.css">
    
    
    
    <script src="https://code.jquery.com/jquery-3.5.1.slim.min.js"
        integrity="sha384-DfXdz2htPH0lsSSs5nCTpuj/zy4C+OGpamoFVy38MVBnE+IbbVYUew+OrCXaRkfj"
        crossorigin="anonymous"></script>
    <script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.1/dist/umd/popper.min.js"
        integrity="sha384-9/reFTGAW83EW2RDu2S0VKaIzap3H66lZH81PoYlFhbGU+6BZp6G7niu735Sk7lN"
        crossorigin="anonymous"></script>
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"
        integrity="sha384-B4gt1jrGC7Jh4AgTPSdUtOBvfO8shuf57BaghqFfPlYxofvL8/KUEfYiJOMMV+rV"
        crossorigin="anonymous"></script>
</head>
<body>

<div class="col-2">
        <!--col with side nav-->
        
        <div class="sidebar">
        <%final String currentUserName = SecurityContextHolder.getContext().getAuthentication().getName(); %>
         <div class="container-fluid">
         	<!--  <a href="#" class="badge badge-primary"> User:<%=currentUserName %> </a>-->
         	<span class="badge badge-pill badge-secondary">User:<%=currentUserName %></span>
         </div>
            <a data-toggle="collapse" href="#countableSubmenu" aria-expanded="false" role="button" aria-controls="collapseExample" class="dropdown-toggle active">Countable Items</a>

            <div class="collapse" id="countableSubmenu">
                <a href="viewAllCountableItems">View countable Items</a>
                <a href="viewCountableLowStock">Low stock</a>
                <a href="countableItemsAdvanced">Countable Items Advanced Functions</a>

            </div>

            <a href="#uncountableSubmenu" data-toggle="collapse" aria-expanded="false" class="dropdown-toggle active">Uncountable Items</a>

            <div class="collapse" id="uncountableSubmenu">
                <a href="viewAllUncountableItems">View uncountable Items</a>
                <a href="viewUncountableLowStock">Low stock</a>
                <a href="uncountableItemsAdvanced">Uncountable Items Advanced Functions</a>

            </div>
            
        </div>
        
        
    </div>
    <!--End of col with side nav-->

</body>
</html>