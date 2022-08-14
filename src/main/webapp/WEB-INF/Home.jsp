<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!-- Formatting (dates) -->
<%@taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<!-- form:form -->
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<!-- for rendering errors on PUT routes -->
<%@ page isErrorPage="true"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Create a new Catch Record</title>
<link rel="stylesheet" href="/webjars/bootstrap/css/bootstrap.min.css">
<link rel="stylesheet" href="/css/main.css">
<!-- change to match your file/naming structure -->
<script src="/webjars/jquery/jquery.min.js"></script>
<script src="/webjars/bootstrap/js/bootstrap.min.js"></script>
</head>
<body style="background-color: #ffffd4;">
	<div class="container p-3 my-3 rounded"
		style="background-color: #fed98e;">
		<div
			class="d-flex justify-content-between align-items-center rounded-lg"
			style="background-color: #ffffd4;">
			<h1 class="p-3" style="color: #cc4c02">Austin's Crab Shack</h1>
			<ul class="nav nav-pills gap-3 p-3 justify-content-end">
				<li class="nav-item"><a class="nav-link text-white"
					style="background-color: #cc4c02" href="/">Home</a></li>
				<li class="nav-item"><a class="nav-link text-white"
					style="background-color: #cc4c02" href="/marine-areas">Marine
						Areas</a></li>
				<li class="nav-item"><a class="btn text-white" style="background-color: #cc4c02" href="/logout">Logout</a></li>
			</ul>
		</div>
	</div>
	<div class="container p-3 my-3 rounded">
		<h1 style="color: #cc4c02">Welcome ${thisUser.userName}!</h1>
		<%-- <h1>WELCOME ${thisUser.id}</h1> --%>
		<div>
			<a class="btn text-white my-3" style="background-color: #cc4c02" href="/catchrecords/new">Create a new
				Catch Record</a>
		</div>
		<!-- <div>
			<a class="btn btn-secondary" href="/logout">Logout</a>
		</div> -->
	
		<table class="table border border-dark text-white" style="background-color: #fe9929">
			<thead>
				<!-- <th scope="col">#</th> -->
				<th scope="col">Location</th>
				<th scope="col"># of crabs caught</th>
				<th scope="col">Date</th>
				<th scope="col">Delete</th>
				<c:forEach items="${allCatchRecords}" var="catchRecord">
					<tr>
						<c:if test="${user_id == catchRecord.catchrecordowner.id}">
							<!-- This logic makes it so a user can only see the catch records that they created. -->
							<%-- <td>${catchRecord.id }</td> --%>
							<td>${catchRecord.marinearea}</td>
							<td>${catchRecord.catchamount}/5</td>
							<td>${catchRecord.month}/${catchRecord.day}</td>
							<td><a class="btn text-white" style="background-color: #cc4c02"
								href="/catchrecords/${catchRecord.id}">View</a></td>
						</c:if>
				</c:forEach>
			</thead>
		</table>
	</div>
</body>
</html>