<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://www.springframework.org/tags" prefix="spring"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>

	<div class="row">
		<div class="col-md-3 srhdiv">
			<form action="/searchByDate">
				<caption>Search Transactions by Date</caption>
				<br> <br>
				<div class="form-group">
					<label for="date">Start Date:</label> <input type="date" id="date"
						name="date" class="form-control">
				</div>
				<button type="submit" class="btn btn-primary">Search</button>


			</form>
		</div>


	</div>


	<div class="row">
		<div class="col-md-12">
			<div class="limiter">
				<div class="container-table100">
					<div class="wrap-table100">
						<div class="table100">
							<h2>Employee List</h2>
							<table>
								<thead>
									<tr class="table100-head">
										<th scope="row" class="column1">id</th>
										<th scope="row" class="column2">Name</th>
										<th scope="row" class="column3">Address</th>
										<th scope="row" class="column4">NIC</th>
										<th scope="row" class="column5">DOB</th>
										<th scope="row" class="column6">Designation</th>
										<th scope="row" class="column7">Salary</th>

									</tr>
								</thead>
								<tbody>

									<c:forEach items="${employeeList }" var="employee">
										<tr>
											<td class="column1">${employee.id }</td>
											<td class="column2">${employee.empName }</td>
											<td class="column3">${employee.address }</td>
											<td class="column4">${employee.nicNo }</td>
											<td class="column5">${employee.dob }</td>
											<td class="column6">${employee.designation }</td>
											<td class="column7">${employee.salary }</td>

											<td class="column8"><a
												href="/editEmployee?id=${employee.id}" type="button">Update</a>
											</td>
											<td class="column9"><a
												href="/deleteEmployee?id=${employee.id}" type="button">Delete</a>
											</td>

										</tr>
									</c:forEach>
								</tbody>
							</table>

						</div>
					</div>
				</div>
			</div>
		</div>
	</div>

</body>
</html>