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
		<h6>Last updated: 8/10 @ 1:00PM</h6>
		<table class="table border border-dark text-white" style="background-color: #fe9929; border-width: 3px; border-color: #cc4c02;">
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
					<td>Columbia River</td>
					<td>OPEN</td>
					<td>Everyday</td>
					<td>Year-round</td>
					<td><a class="btn text-white"
						style="background-color: #cc4c02"
						href="https://wdfw.wa.gov/fishing/shellfishing-regulations/crab/seasons-areas/columbia-river">View</a></td>
				</tr>
				<tr>
					<td>2</td>
					<td>Westport / Ocean Shores</td>
					<td>OPEN</td>
					<td>Everyday</td>
					<td>Year-round</td>
					<td><a class="btn text-white"
						style="background-color: #cc4c02"
						href="https://wdfw.wa.gov/fishing/shellfishing-regulations/crab/seasons-areas/westportocean-shores">View</a></td>
				</tr>
				<tr>
					<td>2-1</td>
					<td>Willapa Bay</td>
					<td>OPEN</td>
					<td>Everyday</td>
					<td>Year-round</td>
					<td><a class="btn text-white"
						style="background-color: #cc4c02"
						href="https://wdfw.wa.gov/fishing/shellfishing-regulations/crab/seasons-areas/willapa-bay-area-2-1">View</a></td>
				</tr>
				<tr>
					<td>2-2</td>
					<td>Grays Harbor</td>
					<td>OPEN</td>
					<td>Everyday</td>
					<td>Year-round</td>
					<td><a class="btn text-white"
						style="background-color: #cc4c02"
						href="https://wdfw.wa.gov/fishing/shellfishing-regulations/crab/seasons-areas/grays-harbor-area-2-2">View</a></td>
				</tr>
				<tr>
					<td>3</td>
					<td>LaPush</td>
					<td>OPEN</td>
					<td>Everyday</td>
					<td>Year-round</td>
					<td><a class="btn text-white"
						style="background-color: #cc4c02"
						href="https://wdfw.wa.gov/fishing/shellfishing-regulations/crab/seasons-areas/lapush">View</a></td>
				</tr>
				<tr>
					<td>4</td>
					<td>Neah Bay: East of Tatoosh-Bonilla line</td>
					<td>LIMITED</td>
					<td>Thursday, Friday, Saturday, Sunday, Monday</td>
					<td><strong>July 1 - September 5</strong><br>Closed on Tuesday & Wednesday</td>
					<td><a class="btn text-white"
						style="background-color: #cc4c02"
						href="https://wdfw.wa.gov/fishing/shellfishing-regulations/crab/seasons-areas/neah-bay-east-tatoosh-bonilla-line">View</a></td>
				</tr>
				<tr>
					<td>5</td>
					<td>Sekiu and Pillar Point</td>
					<td>LIMITED</td>
					<td>Thursday, Friday, Saturday, Sunday, Monday</td>
					<td><strong>July 1 - September 5</strong><br>Closed on Tuesday & Wednesday</td>
					<td><a class="btn text-white"
						style="background-color: #cc4c02"
						href="https://wdfw.wa.gov/fishing/shellfishing-regulations/crab/seasons-areas/sekiu-and-pillar-point">View</a></td>
				</tr>
				<tr>
					<td>6</td>
					<td>East Juan de Fuca Strait,<br>Port Angeles Harbor,<br>Discovery Bay</td>
					<td>LIMITED</td>
					<td>Thursday, Friday, Saturday, Sunday, Monday</td>
					<td><strong>July 1 - September 5</strong><br>Closed on Tuesday & Wednesday</td>
					<td><a class="btn text-white"
						style="background-color: #cc4c02"
						href="https://wdfw.wa.gov/fishing/shellfishing-regulations/crab/seasons-areas/east-juan-de-fuca-strait-port-angeles-harbor">View</a></td>
				</tr>
				<tr>
					<td>7</td>
					<td>San Juan Islands,<br>Bellingham</td>
					<td>LIMITED</td>
					<td>Thursday, Friday, Saturday, Sunday, Monday</td>
					<td><strong>July 14 - September 30</strong><br>Closed on Tuesday & Wednesday</td>
					<td><a class="btn text-white"
						style="background-color: #cc4c02"
						href="https://wdfw.wa.gov/fishing/shellfishing-regulations/crab/seasons-areas/south-san-juan-islandsbellingham">View</a></td>
				</tr>
				<tr>
					<td>7</td>
					<td>Gulf of Georgia</td>
					<td><strong>CLOSED</strong></td>
					<td>None</td>
					<td><strong>Scheduled to open August 18</strong><br>Closed on Tuesday & Wednesday</td>
					<td><a class="btn text-white"
						style="background-color: #cc4c02"
						href="https://wdfw.wa.gov/fishing/shellfishing-regulations/crab/seasons-areas/north-gulf-georgia">View</a></td>
				</tr>
				<tr>
					<td>8-1</td>
					<td>Deception Pass</td>
					<td>LIMITED</td>
					<td>Thursday, Friday, Saturday, Sunday, Monday</td>
					<td><strong>July 1 - September 5</strong><br>Closed on Tuesday & Wednesday</td>
					<td><a class="btn text-white"
						style="background-color: #cc4c02"
						href="https://wdfw.wa.gov/fishing/shellfishing-regulations/crab/seasons-areas/deception-pass-area-8-1">View</a></td>
				</tr>
				<tr>
					<td>8-2</td>
					<td>Port Susan,<br>Everett</td>
					<td>LIMITED</td>
					<td>Thursday, Friday, Saturday, Sunday, Monday</td>
					<td><strong>July 1 - September 5</strong><br>Closed on Tuesday & Wednesday</td>
					<td><a class="btn text-white"
						style="background-color: #cc4c02"
						href="https://wdfw.wa.gov/fishing/shellfishing-regulations/crab/seasons-areas/port-susaneverett-area-8-2">View</a></td>
				</tr>
				<tr>
					<td>9</td>
					<td>Port Gamble,<br>Port Ludlow</td>
					<td>LIMITED</td>
					<td>Thursday, Friday, Saturday, Sunday, Monday</td>
					<td><strong>July 1 - September 5</strong><br>Closed on Tuesday & Wednesday</td>
					<td><a class="btn text-white"
						style="background-color: #cc4c02"
						href="https://wdfw.wa.gov/fishing/shellfishing-regulations/crab/seasons-areas/port-gambleport-ludlow">View</a></td>
				</tr>
				<tr>
					<td>9</td>
					<td>Admiralty Inlet</td>
					<td>LIMITED</td>
					<td>Thursday, Friday, Saturday, Sunday, Monday</td>
					<td><strong>July 1 - September 5</strong><br>Closed on Tuesday & Wednesday</td>
					<td><a class="btn text-white"
						style="background-color: #cc4c02"
						href="https://wdfw.wa.gov/fishing/shellfishing-regulations/crab/seasons-areas/admiralty-inlet">View</a></td>
				</tr>
				<tr>
					<td>10</td>
					<td>Seattle,<br>Bremerton</td>
					<td>LIMITED</td>
					<td>Sunday & Monday</td>
					<td><strong>July 3 - September 5</strong><br>Closed on Tuesday, Wednesday, Thursday, Friday, Saturday</td>
					<td><a class="btn text-white"
						style="background-color: #cc4c02"
						href="https://wdfw.wa.gov/fishing/shellfishing-regulations/crab/seasons-areas/seattlebremerton">View</a></td>
				</tr>
				<tr>
					<td>11</td>
					<td>Tacoma,<br>Vashon Island</td>
					<td>LIMITED</td>
					<td>Sunday & Monday</td>
					<td><strong>July 3 - September 5</strong><br>Closed on Tuesday, Wednesday, Thursday, Friday, Saturday</td>
					<td><a class="btn text-white"
						style="background-color: #cc4c02"
						href="https://wdfw.wa.gov/fishing/shellfishing-regulations/crab/seasons-areas/tacoma-vashon-island">View</a></td>
				</tr>
				<tr>
					<td>12</td>
					<td>Hood Canal,<br>North of Ayock Point</td>
					<td>LIMITED</td>
					<td>Thursday, Friday, Saturday, Sunday, Monday</td>
					<td><strong>July 1 - September 5</strong><br>Closed on Tuesday & Wednesday</td>
					<td><a class="btn text-white"
						style="background-color: #cc4c02"
						href="https://wdfw.wa.gov/fishing/shellfishing-regulations/crab/seasons-areas/hood-canal-north-ayock-point">View</a></td>
				</tr>
				<tr>
					<td>12</td>
					<td>Hood Canal,<br>South of Ayock Point</td>
					<td><strong>CLOSED</strong></td>
					<td>None</td>
					<td><strong>Closed until further notice.</strong></td>
					<td><a class="btn text-white"
						style="background-color: #cc4c02"
						href="https://wdfw.wa.gov/fishing/shellfishing-regulations/crab/seasons-areas/hood-canal-south-ayock-point">View</a></td>
				</tr>
				<tr>
					<td>13</td>
					<td>South Puget Sound</td>
					<td><strong>CLOSED</strong></td>
					<td>None</td>
					<td><strong>Closed until further notice.</strong></td>
					<td><a class="btn text-white"
						style="background-color: #cc4c02"
						href="https://wdfw.wa.gov/fishing/shellfishing-regulations/crab/seasons-areas/south-puget-sound">View</a></td>
				</tr>
			</thead>
		</table>
	</div>

</body>
</html>