<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Dashboard</title>

<link rel="stylesheet" type="text/css" href="/commonNavBarStyle/navBar.css" />
</head>
<body>



<!-- USING BOOTSTRAP 3.0.3 -->
<nav class="navbar navbar-inverse">
  <div class="container">
    <div class="navbar-header">
      <button type="button" class="navbar-toggle" data-toggle="collapse" data-target=".navbar-collapse">
        <span class="icon-bar"></span>
        <span class="icon-bar"></span>
        <span class="icon-bar"></span>
      </button>
    </div>
    <div class="collapse navbar-collapse">
      <ul class="nav navbar-nav pull-right">
        <li class="active"><a href="#">Home</a></li>
        <li><a href="/addAdvertisement/">Advertise</a></li>
        <li><a href="/inventory">Inventory</a></li>
         <li><a href="/accountmgt">Accounts</a></li>
          <li><a href="/newPurchase">Purchase</a></li>
           <li><a href="/addEmployee/">Employee</a></li>
           <li><a href="/userLogs">UserLogs</a></li>
            <li><a href="/logout">Log out</a><li>
      </ul>
    </div><!--/.nav-collapse -->
  </div>
</nav>

<script>
$(window).scroll(function() {
  if ($(document).scrollTop() > 50) {
    $('nav').addClass('shrink');
  } else {
    $('nav').removeClass('shrink');
  }
});
</script>
</body>
</html>