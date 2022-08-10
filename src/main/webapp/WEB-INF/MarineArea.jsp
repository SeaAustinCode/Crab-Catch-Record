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
<title>WA state Marine Areas</title>
<link rel="stylesheet" href="/webjars/bootstrap/css/bootstrap.min.css">
<link rel="stylesheet" href="/css/main.css">
<!-- change to match your file/naming structure -->
<script src="/webjars/jquery/jquery.min.js"></script>
<script src="/webjars/bootstrap/js/bootstrap.min.js"></script>
</head>

<!-- #ffffd4
#fed98e
#fe9929
#cc4c02 -->

<body class="p-4" style="background-color: #ffffd4;">
	<div class="container p-3" style="background-color: #fed98e;">
		<div
			class="d-flex justify-content-between align-items-center rounded-lg"
			style="background-color: #ffffd4;">
			<h1 class="p-3" style="color: #cc4c02">Austin's Crab Shack</h1>
			<ul class="nav nav-pills gap-3 p-3 justify-content-end">
				<li class="nav-item"><a class="nav-link text-white"
					style="background-color: #cc4c02" href="/">Home</a></li>
				<li class="nav-item"><a class="nav-link text-white"
					style="background-color: #fe9929" href="/marine-areas">Marine
						Areas</a></li>
				<li class="nav-item"><a class="nav-link text-white"
					style="background-color: #cc4c02"
					href="/login-and-registration-page">Create an Account</a></li>
			</ul>
		</div>
	</div>
	<div class="container p-3">
		<h1>Seasons and areas</h1>
		<table class="table border">
			<thead>
				<th scope="col">Marine Area</th>
				<th scope="col">Location</th>
				<th scope="col">Status</th>
				<th scope="col">Days Open</th>
				<th scope="col">Season dates</th>
				<th scope="col">Additional Information</th>
				<tr>
					<td>1</td>
					<td>South Coast / Pacific Ocean</td>
					<td>OPEN</td>
					<td>Everyday</td>
					<td>Year-round</td>
					<td><a class="btn text-white"
						style="background-color: #cc4c02"
						href="https://wdfw.wa.gov/fishing/shellfishing-regulations/crab/seasons-areas/south-coastpacific-ocean">View</a></td>
				</tr>
				<tr>
					<td>1</td>
					<td>South Coast / Pacific Ocean</td>
					<td>OPEN</td>
					<td>Everyday</td>
					<td>Year-round</td>
					<td><a class="btn text-white"
						style="background-color: #cc4c02"
						href="https://wdfw.wa.gov/fishing/shellfishing-regulations/crab/seasons-areas/south-coastpacific-ocean">View</a></td>
				</tr>
			</thead>
		</table>
	</div>

</body>
</html>