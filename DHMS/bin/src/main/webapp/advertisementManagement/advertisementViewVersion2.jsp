<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>  
<%@ taglib uri="http://www.springframework.org/tags" prefix="spring"%>  	
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
	<link
 	   rel="stylesheet"
   	   href="https://cdnjs.cloudflare.com/ajax/libs/animate.css/4.0.0/animate.min.css"
	  />

<title>Insert title here</title>
<link rel="stylesheet" type="text/css" href="/advertisementManagement/style/bannerStyle/banner2.css" />
</head>
<body>


	
	
				 <c:forEach items="${advertisementList2}" var="advertisement">
					
					<div class="banner animate__animated animate__rubberBand">
						<!-- ${advertisement.title }
						${advertisement.description } -->
					<h1>${advertisement.title} </h1>	
					<h1>${advertisement.percentage} OFF</h1>
					<h2>${advertisement.timePeriod } season offer</h2>
					<h3>On All Hotels</h3>
					<p>${advertisement.description} </p>
					<a href="#">Book Now!</a>
						
    				</div>
    				
    				<br>
    				<br>
					
				</c:forEach> 
		
	

</body>
</html>