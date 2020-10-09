<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://www.springframework.org/tags" prefix="spring"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/animate.css/4.0.0/animate.min.css" />

<title>Insert title here</title>
<link rel="stylesheet" type="text/css"
	href="/advertisementManagement/style/bannerStyle/bannerVersion2.css" />
<style>
#more {
	display: none;
}
</style>
</head>
<body>




	<c:forEach items="${advertisementList2}" var="advertisement">

		<div class="banner animate__animated animate__rubberBand">
			<!-- ${advertisement.title }
						${advertisement.description } -->
			<h1>${advertisement.title}</h1>
			<div class="redColor">
				<h1>${advertisement.percentage}OFF</h1>
			</div>
			<h2>${advertisement.timePeriod } season offer</h2>
			<h3>On All Hotels</h3>
			<span id="dots"></span> 
			<span id="more">${advertisement.description}</span>
			<br>
			<a onclick="myFunction()" id="myBtn">SHOW MORE</a>
			
			<script>
				function myFunction() {
				  var dots = document.getElementById("dots");
				  var moreText = document.getElementById("more");
				  var btnText = document.getElementById("myBtn");
				
				  if (dots.style.display === "none") {
				    dots.style.display = "inline";
				    btnText.innerHTML = "SHOW MORE"; 
				    moreText.style.display = "none";
				  } else {
				    dots.style.display = "none";
				    btnText.innerHTML = "BOOK NOW!"; 
				    moreText.style.display = "inline";
				  }
				}
			</script>

		</div>

		<br>
		<br>

	</c:forEach>



</body>
</html>
