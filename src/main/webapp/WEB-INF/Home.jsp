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
<body>
	<h1>WELCOME ${thisUser.userName}</h1>
	<h1>WELCOME ${thisUser.id}</h1>
	<hr />
	<div>
		<a class="btn btn-primary" href="/catchrecords/new">Create a new
			Catch Record</a>
	</div>
	<div>
		<a class="btn btn-secondary" href="/logout">Logout</a>
	</div>
	<hr />
	<table class="table table-striped">
		<thead>
			<th scope="col">#</th>
			<th scope="col">Location</th>
			<th scope="col"># of crabs caught</th>
			<th scope="col">Date</th>
			<th scope="col">Actions</th>
			<c:forEach items="${allCatchRecords}" var="catchRecord">
				<tr>
					<c:if test="${user_id == catchRecord.catchrecordowner.id}">
						<!-- This logic makes it so a user can only see the catch records that they created. -->
						<td>${catchRecord.id }</td>
						<td style="color: blue">${catchRecord.marinearea}</td>
						<td style="color: orange">${catchRecord.catchamount}/5</td>
						<td style="color: red">${catchRecord.month}/${catchRecord.day}</td>
						<td><a class="btn btn-primary"
							href="/catchrecords/${catchRecord.id}">View</a></td>
					</c:if>
			</c:forEach>
		</thead>
	</table>
</body>
</html>