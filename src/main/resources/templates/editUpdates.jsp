<%@page import="com.RSCM.models.UpdatesModel"%>
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
<title>Edit Updates - RSCM</title>
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
	<%
	UpdatesModel updatesModel = (UpdatesModel) request.getAttribute("UpdatesDescriptionData");
	%>
	<div class="wrapper">
		<br>
		<center>
			<br> <br>

			<div class="title">Edit Updates</div>
			<form action="/editUpdates/<%=updatesModel.getUpdatesId()%>"
				method="post">
				<h4>Updates Heading</h4>
				<textarea placeholder="Updates Heading" id="updatesHeading"
					name="updatesHeading" required><%=updatesModel.getUpdatesHeading()%></textarea>
				<br> <br> <select id="updatesCategory"
					name="updatesCategory">
					<c:forEach items="${UpdatedServicesData}" var="data">
						<option value="${data.serviceHeading}">${data.serviceHeading}</option>
					</c:forEach>
				</select>

				<h4>Updates Description</h4>
				<textarea placeholder="Updates Description" id="updatesDescription"
					name="updatesDescription" rows="5" cols="10" required><%=updatesModel.getUpdatesDescription()%></textarea>
				<br> <br>

				<h3 style="text-align: center; color: white;">You Can Add
					Updates Bullet Points (Not Mandatory To Fill All Bullet Points But
					You Can Add Maxixmum 10 Bullet Points.)</h3>
				<br>
				<%
				if (updatesModel.getFirstBulletPoint() != null) {
				%>
				<h4>First Bullet Point</h4>
				<textarea placeholder="First Bullet Point" id="firstBulletPoint"
					name="firstBulletPoint"><%=updatesModel.getFirstBulletPoint()%></textarea>
				<br> <br>
				<%
				} else {
				%>
				<h4>First Bullet Point</h4>
				<textarea placeholder="First Bullet Point" id="firstBulletPoint"
					name="firstBulletPoint"></textarea>
				<br> <br>
				<%
				}
				%>

				<%
				if (updatesModel.getSecondBulletPoint() != null) {
				%>
				<h4>Second Bullet Point</h4>
				<textarea placeholder="Second Bullet Point" id="secondBulletPoint"
					name="secondBulletPoint"><%=updatesModel.getSecondBulletPoint()%></textarea>
				<br> <br>
				<%
				} else {
				%>
				<h4>Second Bullet Point</h4>
				<textarea placeholder="Second Bullet Point" id="secondBulletPoint"
					name="secondBulletPoint"></textarea>
				<br> <br>
				<%
				}
				%>

				<%
				if (updatesModel.getThirdBulletPoint() != null) {
				%>
				<h4>Third Bullet Point</h4>
				<textarea placeholder="Third Bullet Point" id="thirdBulletPoint"
					name="thirdBulletPoint"><%=updatesModel.getThirdBulletPoint()%></textarea>
				<br> <br>
				<%
				} else {
				%>
				<h4>Third Bullet Point</h4>
				<textarea placeholder="Third Bullet Point" id="thirdBulletPoint"
					name="thirdBulletPoint"></textarea>
				<br> <br>
				<%
				}
				%>


				<%
				if (updatesModel.getFourthBulletPoint() != null) {
				%>
				<h4>Fourth Bullet Point</h4>
				<textarea placeholder="Fourth Bullet Point" id="fourthBulletPoint"
					name="fourthBulletPoint"><%=updatesModel.getFourthBulletPoint()%></textarea>
				<br> <br>
				<%
				} else {
				%>
				<h4>Fourth Bullet Point</h4>
				<textarea placeholder="Fourth Bullet Point" id="fourthBulletPoint"
					name="fourthBulletPoint"></textarea>
				<br> <br>
				<%
				}
				%>

				<%
				if (updatesModel.getFifthBulletPoint() != null) {
				%>
				<h4>Fifth Bullet Point</h4>
				<textarea placeholder="Fifth Bullet Point" id="fifthBulletPoint"
					name="fifthBulletPoint"><%=updatesModel.getFifthBulletPoint()%></textarea>
				<br> <br>
				<%
				} else {
				%>
				<h4>Fifth Bullet Point</h4>
				<textarea placeholder="Fifth Bullet Point" id="fifthBulletPoint"
					name="fifthBulletPoint"></textarea>
				<br> <br>
				<%
				}
				%>

				<%
				if (updatesModel.getSixthBulletPoint() != null) {
				%>
				<h4>Sixth Bullet Point</h4>
				<textarea placeholder="Sixth Bullet Point" id="sixthBulletPoint"
					name="sixthBulletPoint"><%=updatesModel.getSixthBulletPoint()%></textarea>
				<br> <br>
				<%
				} else {
				%>
				<h4>Sixth Bullet Point</h4>
				<textarea placeholder="Sixth Bullet Point" id="sixthBulletPoint"
					name="sixthBulletPoint"></textarea>
				<br> <br>
				<%
				}
				%>

				<%
				if (updatesModel.getSeventhBulletPoint() != null) {
				%>
				<h4>Seventh Bullet Point</h4>
				<textarea placeholder="Seventh Bullet Point" id="seventhBulletPoint"
					name="seventhBulletPoint"><%=updatesModel.getSeventhBulletPoint()%></textarea>
				<br> <br>
				<%
				} else {
				%>
				<h4>Seventh Bullet Point</h4>
				<textarea placeholder="Seventh Bullet Point" id="seventhBulletPoint"
					name="seventhBulletPoint"></textarea>
				<br> <br>
				<%
				}
				%>

				<%
				if (updatesModel.getEighthBulletPoint() != null) {
				%>
				<h4>Eighth Bullet Point</h4>
				<textarea placeholder="Eighth Bullet Point" id="eighthBulletPoint"
					name="eighthBulletPoint"><%=updatesModel.getEighthBulletPoint()%></textarea>
				<br> <br>
				<%
				} else {
				%>
				<h4>Eighth Bullet Point</h4>
				<textarea placeholder="Eighth Bullet Point" id="eighthBulletPoint"
					name="eighthBulletPoint"></textarea>
				<br> <br>
				<%
				}
				%>

				<%
				if (updatesModel.getNinthBulletPoint() != null) {
				%>
				<h4>Ninth Bullet Point</h4>
				<textarea placeholder="Ninth Bullet Point" id="ninthBulletPoint"
					name="ninthBulletPoint"><%=updatesModel.getNinthBulletPoint()%></textarea>
				<br> <br>
				<%
				} else {
				%>
				<h4>Ninth Bullet Point</h4>
				<textarea placeholder="Ninth Bullet Point" id="ninthBulletPoint"
					name="ninthBulletPoint"></textarea>
				<br> <br>
				<%
				}
				%>

				<%
				if (updatesModel.getTenthBulletPoint() != null) {
				%>
				<h4>Tenth Bullet Point</h4>
				<textarea placeholder="Tenth Bullet Point" id="tenthBulletPoint"
					name="tenthBulletPoint"><%=updatesModel.getTenthBulletPoint()%></textarea>
				<br> <br>
				<%
				} else {
				%>
				<h4>Tenth Bullet Point</h4>
				<textarea placeholder="Tenth Bullet Point" id="tenthBulletPoint"
					name="tenthBulletPoint"></textarea>
				<br> <br>
				<%
				}
				%>

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