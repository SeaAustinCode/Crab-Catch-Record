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
<title>WDFW Crab Catch Record</title>
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
	<div class="container p-3 rounded" style="background-color: #fed98e;">
		<div
			class="d-flex justify-content-between align-items-center rounded-lg"
			style="background-color: #ffffd4;">
			<h1 class="p-3" style="color: #cc4c02">Austin's Crab Shack</h1>
			<ul class="nav nav-pills gap-3 p-3 justify-content-end rounded">
				<li class="nav-item"><a class="nav-link text-white"
					style="background-color: #fe9929" href="/">Home</a></li>
				<li class="nav-item"><a class="nav-link text-white"
					style="background-color: #cc4c02" href="/marine-areas">Marine
						Areas</a></li>
				<li class="nav-item"><a class="nav-link text-white"
					style="background-color: #cc4c02"
					href="/login-and-registration-page">Create an Account</a></li>
			</ul>
		</div>
	</div>
	<div class="container p-3 my-3 rounded"
		style="background-color: #fe9929;">
		<h4>Hello and welcome to Austin's Crab Shack!</h4>
		<h6>The goal of this website is to help enable crab fishermen and
			fisherwomen in the state of Washington to responsibly enjoy this
			great outdoor activity.</h6>
		<h6>By creating an account on this website fishermen and
			fisherwomen are able to keep track of their crab catch records
			electronically. This allows for easy organization for users and
			streamlined data collection for WDFW!</h6>
	</div>
	<div class="container p-3 my-3 d-flex align-items-center"
		style="background-color: #fed98e">
		<h6>Several species of crab are found in Washington's marine
			waters and along its shores, though only a few are large enough to be
			of commercial and sport interest. Crabs are crustaceans, having an
			exterior skeleton or shell. <br><br>When crabbing in Washington, it's
			important to be able to identify your catch, to ensure you've caught
			the correct species.<br><br>It's also important to identify whether a crab
			is soft-shelled -- <strong>crabbers must release all soft-shell crab.</strong></h6>
		<img class="rounded img-fluid" alt="Washington Dungeoness Crab"
			src="https://wdfw.wa.gov/sites/default/files/styles/page_body_half_width/public/2019-04/cancer_productus.jpg?itok=aCqSl41J">
	</div>
</body>
</html>