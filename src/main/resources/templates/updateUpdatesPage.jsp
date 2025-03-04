<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@page import="com.mysql.cj.x.protobuf.MysqlxCrud.Update"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%
String Username = (String) session.getAttribute("username");
String Fullname = (String) session.getAttribute("Fullname");
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Update Updates Page - RSCM</title>
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

			<div class="title">Update Updates</div>
			<form action="/updateUpdatesPage" method="post">
				<h4>Updates Heading</h4>
				<textarea placeholder="Updates Heading" id="updatesHeading"
					name="updatesHeading" required></textarea>
				<br> <br> <select id="updatesCategory"
					name="updatesCategory">
					<option value="Choose Updates Category">Choose Updates
						Category</option>
					<c:forEach items="${UpdatedServicesData}" var="data">
						<option value="${data.serviceHeading}">${data.serviceHeading}</option>
					</c:forEach>
				</select>



				<h4>Updates Description</h4>
				<textarea placeholder="Updates Description" id="updatesDescription"
					name="updatesDescription" rows="5" cols="10" required></textarea>
				<br> <br>

				<h3 style="text-align: center; color: white;">You Can Add
					Updates Bullet Points (Not Mandatory To Fill All Bullet Points But
					You Can Add Maxixmum 10 Bullet Points.)</h3>
				<br>
				<h4>First Bullet Point</h4>
				<textarea placeholder="First Bullet Point" id="firstBulletPoint"
					name="firstBulletPoint"></textarea>
				<br> <br>

				<h4>Second Bullet Point</h4>
				<textarea placeholder="Second Bullet Point" id="secondBulletPoint"
					name="secondBulletPoint"></textarea>
				<br> <br>

				<h4>Third Bullet Point</h4>
				<textarea placeholder="Third Bullet Point" id="thirdBulletPoint"
					name="thirdBulletPoint"></textarea>
				<br> <br>

				<h4>Fourth Bullet Point</h4>
				<textarea placeholder="Fourth Bullet Point" id="fourthBulletPoint"
					name="fourthBulletPoint"></textarea>
				<br> <br>

				<h4>Fifth Bullet Point</h4>
				<textarea placeholder="Fifth Bullet Point" id="fifthBulletPoint"
					name="fifthBulletPoint"></textarea>
				<br> <br>

				<h4>Sixth Bullet Point</h4>
				<textarea placeholder="Sixth Bullet Point" id="sixthBulletPoint"
					name="sixthBulletPoint"></textarea>
				<br> <br>

				<h4>Seventh Bullet Point</h4>
				<textarea placeholder="Seventh Bullet Point" id="seventhBulletPoint"
					name="seventhBulletPoint"></textarea>
				<br> <br>

				<h4>Eighth Bullet Point</h4>
				<textarea placeholder="Eighth Bullet Point" id="eighthBulletPoint"
					name="eighthBulletPoint"></textarea>
				<br> <br>

				<h4>Ninth Bullet Point</h4>
				<textarea placeholder="Ninth Bullet Point" id="ninthBulletPoint"
					name="ninthBulletPoint"></textarea>
				<br> <br>

				<h4>Tenth Bullet Point</h4>
				<textarea placeholder="Tenth Bullet Point" id="tenthBulletPoint"
					name="tenthBulletPoint"></textarea>
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