<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="core" uri="http://java.sun.com/jsp/jstl/core"%>
<%
String Username = (String) session.getAttribute("username");
String Fullname = (String) session.getAttribute("Fullname");
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Update Service - RSCM</title>
<link rel="stylesheet" href="css/updateServiceCSS.css">
<script>
	function autoRefresh() {
		var refresh = document.getElementById('refresh');
		if (refresh != null) {
			window.location = window.location.href;
			setInterval('autoRefresh()', 200);
		}
	}
</script>
</head>
<%
if (Username != null) {
%>
<body>
	<div class="wrapper">
		<br>
		<center>
			<br> <br> <br>

			<div class="title">Update Service</div>
			<form action="/updateServices" method="post">
				<h4>Service Heading</h4>
				<textarea placeholder="Service Heading" id="serviceHeading"
					name="serviceHeading" required></textarea>
				<br> <br>
				<h4>Service Description</h4>
				<textarea placeholder="Service Description" id="serviceDescription"
					name="serviceDescription" rows="5" cols="10" required></textarea>
				<br> <br>

				<h3 style="text-align: center; color: white;">You Can Add
					Service Specialization/Points (Not Mandatory To Fill All
					Specialization)</h3>
				<br>
				<h4>Service Specialization First</h4>
				<textarea placeholder="Service Specialization First"
					id="serviceSpecializationFirst" name="serviceSpecializationFirst"></textarea>
				<br> <br>

				<h4>Service Specialization Second</h4>
				<textarea placeholder="Service Specialization Second"
					id="serviceSpecializationSecond" name="serviceSpecializationSecond"></textarea>
				<br> <br>

				<h4>Service Specialization Third</h4>
				<textarea placeholder="Service Specialization Third"
					id="serviceSpecializationThird" name="serviceSpecializationThird"></textarea>
				<br> <br>

				<h4>Service Specialization Fourth</h4>
				<textarea placeholder="Service Specialization Fourth"
					id="serviceSpecializationFourth" name="serviceSpecializationFourth"></textarea>
				<br> <br>

				<h4>Service Specialization Fifth</h4>
				<textarea placeholder="Service Specialization Fifth"
					id="serviceSpecializationFifth" name="serviceSpecializationFifth"></textarea>
				<br> <br>
				<div class="field">
					<input type="submit" value="Update Service" id="refresh"
						name="refresh" onclick="autoRefresh()"
						style="background-color: orangered; color: white;">
				</div>
			</form>
	</div>
	</center>
</body>
<%
} else {
response.sendRedirect("adminPage");
}
%>
</html>