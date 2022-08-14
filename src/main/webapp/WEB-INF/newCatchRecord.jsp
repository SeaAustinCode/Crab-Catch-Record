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
	<div class="container p-3 my-3 rounded "
		style="background-color: #fed98e;">
		<h1>Create a new Crab Catch Record</h1>
		<hr />
		<div>
			<form:form action="/catchrecords/new/method" method="post"
				modelAttribute="catchRecord">
				<form:input type="hidden" path="catchrecordowner"
					value="${userloggedin.id }" />
				<div class="d-flex">
					<div>
						<form:label path="marinearea">
							<h3>Marine Area:</h3>
						</form:label>
						<form:errors path="marinearea" style="color: red" />
						<div>
							<form:select path="marinearea">
								<form:option value="South Coast / Pacific Ocean" />
								<form:option value="Columbia River" />
								<form:option value="Westport / Ocean Shores" />
								<form:option value="Willapa Bay: Area 2-1" />
								<form:option value="Grays Harbor: Area 2-2" />
								<form:option value="LaPush" />
								<form:option value="Neah Bay: West of Tatoosh-Bonilla line" />
								<form:option value="Seiku and Pillar Point" />
								<form:option
									value="East Juan de Fuca Strait, Port Angeles Harbor, Discovery Bay" />
								<form:option value="South: San Juan Islands / Bellingham" />
								<form:option value="North: Gulf of Georgia" />
								<form:option value="Deception Pass: Area 8-1" />
								<form:option value="Port Susan / Everett: Area 8-2" />
								<form:option value="Port Gamble / Port Ludlow" />
								<form:option value="Admiralty Inlet" />
								<form:option value="Seattle / Bremerton" />
								<form:option value="Tacoma-Vashon Island" />
								<form:option value="Hood Canal: North of Ayock Point" />
								<form:option value="Hood Canal: South of Ayock Point" />
								<form:option value="South Puget Sound" />
							</form:select>
							<br> <br>
						</div>
					</div>
				</div>
				<div class="d-flex">
					<div>
						<form:label path="month">
							<h3>Date</h3>
						</form:label>
						<form:errors path="month" style="color: red" />
						<div>
							<form:select type="number" path="month">
								<form:option value="01" label="January" />
								<form:option value="02" label="February" />
								<form:option value="03" label="March" />
								<form:option value="04" label="April" />
								<form:option value="05" label="May" />
								<form:option value="06" label="June" />
								<form:option value="07" label="July" />
								<form:option value="08" label="August" />
								<form:option value="09" label="September" />
								<form:option value="10" label="October" />
								<form:option value="11" label="November" />
								<form:option value="12" label="December" />
							</form:select>
						</div>
					</div>
				</div>
				<form:label path="day"></form:label>
				<form:errors path="day" style="color: red" />
				<form:select type="number" path="day">
					<form:option value="01" label="1" />
					<form:option value="02" label="2" />
					<form:option value="03" label="3" />
					<form:option value="04" label="4" />
					<form:option value="05" label="5" />
					<form:option value="06" label="6" />
					<form:option value="07" label="7" />
					<form:option value="08" label="8" />
					<form:option value="09" label="9" />
					<form:option value="10" label="10" />
					<form:option value="11" label="11" />
					<form:option value="12" label="12" />
					<form:option value="13" label="13" />
					<form:option value="14" label="14" />
					<form:option value="15" label="15" />
					<form:option value="16" label="16" />
					<form:option value="17" label="17" />
					<form:option value="18" label="18" />
					<form:option value="19" label="19" />
					<form:option value="20" label="20" />
					<form:option value="21" label="21" />
					<form:option value="22" label="22" />
					<form:option value="23" label="23" />
					<form:option value="24" label="24" />
					<form:option value="25" label="25" />
					<form:option value="26" label="26" />
					<form:option value="27" label="27" />
					<form:option value="28" label="28" />
					<form:option value="29" label="29" />
					<form:option value="30" label="30" />
					<form:option value="31" label="31" />
				</form:select>
				<div>
					<form:label path="catchamount">Number of Crab caught</form:label>
					<form:errors path="catchamount" style="color: red" />
					<form:select type="number" path="catchamount">
						<form:option value="1" label="1" />
						<form:option value="2" label="2" />
						<form:option value="3" label="3" />
						<form:option value="4" label="4" />
						<form:option value="5" label="5" />
					</form:select>
				</div>

				<button>Create</button>
			</form:form>
		</div>
		<hr />
		<div>
			<a href="/home">Return Home</a>
		</div>
	</div>
</body>
</html>