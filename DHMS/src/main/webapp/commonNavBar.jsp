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
<!-- //ravindu1
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
        <li class="active"><a href="/">Home</a></li>
        <li><a href="/addAdvertisement/">Advertise</a></li>
        <li><a href="/inventory">Inventory</a></li>
         <li><a href="/accountmgt">Accounts</a></li>
          <li><a href="/newPurchase">Purchase</a></li>
           <li><a href="/addEmployee/">Employee</a></li>
           <li><a href="/addUser/">UserLogs</a></li>
            <li><a href="/logout">Log out</a><li>
      </ul>
    </div><!--/.nav-collapse 
  </div>
</nav>  -->

	<!-- <nav class="navbar navbar-custom navbar-fixed-top" role="navigation">
		<div class="container-fluid">
			<div class="navbar-header">
				<button type="button" class="navbar-toggle collapsed"
					data-toggle="collapse" data-target="#sidebar-collapse">
					<span class="sr-only">Toggle navigation</span> <span
						class="icon-bar"></span> <span class="icon-bar"></span> <span
						class="icon-bar"></span>
				</button>
				<a class="navbar-brand" href="/"><span>Dhammika
						Hotel </span>Management System</a>
				<a class="navbar-brand">  </a>
				<div class="collapse navbar-collapse">
					<ul class="nav navbar-nav pull-left">
						<li><a href="/backendHome" style="color:white">Home</a></li>
						<li><a href="/addAdvertisement/" style="color:white">Advertise</a></li>
						<li><a href="/addEmployee/" style="color:white">Employee</a></li>
						<li><a href="/inventory" style="color:white">Inventory</a></li>
						<li><a href="/accountmgt" style="color:white">Accounting</a></li>
						<li><a href="/newPurchase" style="color:white">Purchasing</a></li>
						<li><a href="#" style="color:white">Suppling</a></li>
						<li><a href="/userLogs" style="color:white">UserLogs</a></li>
						<li><a href="/logout" style="color:red">Logout</a>
						<li>
					</ul>
				</div>
			</div>
		</div> 
		<!-- /.container-fluid 
	</nav>  -->
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