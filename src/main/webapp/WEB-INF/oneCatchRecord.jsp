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
<body>
	<table class="table table-striped">
		<thead>
			<th scope="col">Location</th>
			<th scope="col"># of crabs caught</th>
			<th scope="col">Date</th>
			<th scope="col">Actions</th>
			<tr>
				<td style="color: blue">${thisCatchRecord.marinearea}</td>
				<td style="color: orange">${thisCatchRecord.catchamount}/5</td>
				<td style="color: red">${thisCatchRecord.month}/${thisCatchRecord.day}</td>
				<td><c:if
						test="${user_id == thisCatchRecord.catchrecordowner.id}">
						<form action="/remove/${thisCatchRecord.id }" method="post">
							<button>Delete Catch Record</button>
						</form>
					</c:if></td>
		</thead>
	</table>

</body>
</html>