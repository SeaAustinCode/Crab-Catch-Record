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
<title>View Individual Catch Record</title>
<link rel="stylesheet" href="/webjars/bootstrap/css/bootstrap.min.css">
<link rel="stylesheet" href="/css/main.css">
<!-- change to match your file/naming structure -->
<script src="/webjars/jquery/jquery.min.js"></script>
<script src="/webjars/bootstrap/js/bootstrap.min.js"></script>
</head>
<body style="background-color: #ffffd4;">
	<div class="container p-3 my-3 rounded">
		<table class="table table-striped text-white"
			style="background-color: #fe9929">
			<thead>
				<th scope="col">Location</th>
				<th scope="col"># of crabs caught</th>
				<th scope="col">Date</th>
				<th scope="col" class="text-center">Actions</th>
				<tr>
					<td>${thisCatchRecord.marinearea}</td>
					<td>${thisCatchRecord.catchamount}/5</td>
					<td>${thisCatchRecord.month}/${thisCatchRecord.day}</td>
					<td><c:if
							test="${user_id == thisCatchRecord.catchrecordowner.id}">
							<form action="/remove/${thisCatchRecord.id }" method="post">
								<button class="text-white" style="background-color: #cc4c02">Delete
									Catch Record</button>
							</form>
						</c:if></td>
					<td><c:if
							test="${user_id == thisCatchRecord.catchrecordowner.id}">
							<a class="btn text-white" style="background-color: #cc4c02"
								href="/catchrecords/${id}/edit">Edit</a>
						</c:if></td>
			</thead>
		</table>
	</div>

</body>
</html>