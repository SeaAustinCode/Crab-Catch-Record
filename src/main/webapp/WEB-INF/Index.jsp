<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!-- c:out ; c:forEach etc. -->
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
<meta charset="UTF-8">
<title>Login and Registration page for Washington crab catch
	record card</title>
<link rel="stylesheet" href="/webjars/bootstrap/css/bootstrap.min.css">
<link rel="stylesheet" href="/css/main.css">
<!-- change to match your file/naming structure -->
<script src="/webjars/jquery/jquery.min.js"></script>
<script src="/webjars/bootstrap/js/bootstrap.min.js"></script>
</head>
<body style="background-color: #ffffd4;">
	<div class="container p-3" style="background-color: #fed98e;">
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
			</ul>
		</div>
	</div>
	<h1 class="centered"></h1>
	<div class="container">

		<!-- REGISTER A NEW USER  -->
		<!-- bring in the newUser empty Object -->
		<div class="container p-4 border">
			<h3>Register:</h3>
			<form:form action="/register" method="post" modelAttribute="newUser">
				<div class="form-group">
					<label>Username:</label>
					<form:input path="userName" class="form-control" />
					<form:errors path="userName" class="text-danger" />
				</div>
				<div class="form-group">
					<label>Email:</label>
					<form:input path="email" class="form-control" />
					<form:errors path="email" class="text-danger" />
				</div>
				<div class="form-group">
					<label>Password:</label>
					<form:password path="password" class="form-control" />
					<form:errors path="password" class="text-danger" />
				</div>
				<div class="form-group">
					<label>Confirm Password:</label>
					<form:password path="confirm" class="form-control" />
					<form:errors path="confirm" class="text-danger" />
				</div>
				<input type="submit" value="Register" class="btn btn-primary" />
			</form:form>
		</div>

		<!-- LOGIN -->
		<!-- newLogin object will touch the model to validate only -->
		<div class="container p-4 border my-4" style="background-color: #cc4c02">
			<h3>Login:</h3>
			<form:form action="/login" method="post" modelAttribute="newLogin">
				<div class="form-group">
					<label>Email:</label>
					<form:input path="email" class="form-control" />
					<form:errors path="email" class="text-danger" />
				</div>
				<div class="form-group">
					<label>Password:</label>
					<form:password path="password" class="form-control" />
					<form:errors path="password" class="text-danger" />
				</div>
				<input type="submit" value="Login" class="btn btn-success" />
			</form:form>
		</div>

	</div>
</body>
</html>