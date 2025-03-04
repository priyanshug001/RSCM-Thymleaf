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
<title>Updates Data - RSCM</title>

<link rel="stylesheet" href="css/serviceDescriptionCSS.css">
<style>
@charset "ISO-8859-1";

@import
	url('https://fonts.googleapis.com/css?family=Poppins:400,500,600,700&display=swap')
	;

* {
	margin: 0;
	padding: 0;
	box-sizing: border-box;
	font-family: 'Poppins', sans-serif;
}

html, body {
	display: grid;
	width: 100%;
	place-items: center;
}

.wrapper {
	width: 100%;
	width: 100%;
	background: #1b5a8d;
	border-radius: 15px;
	box-shadow: 0px 15px 20px rgba(0, 0, 0, 0.1);
	height: auto;
}

.wrapper .title {
	font-size: 35px;
	width: 100%;
	font-weight: 600;
	text-align: center;
	line-height: 100px;
	color: #1b5a8d;
	user-select: none;
	border-radius: 30px 30px 30px 30px;
	background-color: white;
	margin-bottom: 20px;
}

.wrapper form {
	padding: 10px 30px 50px 30px;
}

.wrapper form .field {
	height: 50px;
	width: 100%;
	margin-top: 20px;
	position: relative;
}

.wrapper form .field input {
	height: 100%;
	width: 100%;
	outline: none;
	font-size: 17px;
	padding-left: 20px;
	border: 1px solid lightgrey;
	border-radius: 25px;
	transition: all 0.3s ease;
}

.wrapper form .field input:focus, form .field input:valid {
	border-color: #1b5a8d;
}

.wrapper form .field label {
	position: absolute;
	top: 50%;
	top: 50%;
	top: 50%;
	left: 20px;
	color: #999999;
	font-weight: 400;
	font-size: 17px;
	pointer-events: none;
	transform: translateY(-50%);
	transition: all 0.3s ease;
	left: 20px;
	color: #999999;
	font-weight: 400;
	font-size: 17px;
	pointer-events: none;
	transform: translateY(-50%);
	transition: all 0.3s ease;
	left: 20px;
	color: #999999;
	font-weight: 400;
	font-size: 17px;
	pointer-events: none;
	transform: translateY(-50%);
	transition: all 0.3s ease;
}

form .field input:focus ~label, form .field input:valid ~label {
	top: -15%;
	font-size: 16px;
	color: white;
	color: white;
	background: #1b5a8d;
	transform: translateY(-50%);
	background: #1b5a8d;
	transform: translateY(-50%);
}

form .content {
	display: flex;
	width: 100%;
	height: 50px;
	font-size: 16px;
	align-items: center;
	justify-content: space-around;
}

form .content .checkbox {
	display: flex;
	align-items: center;
	align-items: center;
	justify-content: center;
	justify-content: center;
}

form .content input {
	width: 15px;
	height: 15px;
	background: white;
	background: white;
}

form .content label {
	color: #262626;
	user-select: none;
	padding-left: 5px;
	padding-left: 5px;
}

form .content .pass-link {
	color: "";
}

form .field input[type="submit"] {
	color: #fff;
	border: none;
	padding-left: 0;
	margin-top: -10px;
	font-size: 20px;
	font-weight: 500;
	cursor: pointer;
	background-color: #1b5a8d;
	transition: all 0.3s ease;
}

form .field input[type="submit"]:active {
	transform: scale(0.95);
}

form .signup-link {
	color: #fff;
	margin-top: 20px;
	text-align: center;
}

form .pass-link a, form .signup-link a {
	color: rgb(0, 0, 160);
	text-decoration: none;
}

form .pass-link a:hover, form .signup-link a:hover {
	text-decoration: underline;
}

table {
	font-family: arial, sans-serif;
	border-collapse: collapse;
	height: 100%;
	width: 100%;
	table-layout: auto;
}

th {
	border: 5px solid white;
	text-align: left;
	padding: 8px;
	color: white;
	background-color: orangered;
	width: 100%;
	height: 100%;
}

td {
	border: 5px solid white;
	text-align: left;
	padding: 8px;
	color: white;
	width: 100%;
	height: 100%;
}

tr:nth-child(odd) {
	background-color: #1b5a8d;
}

tr:nth-child(even) {
	background-color: #1b5a8d;
}

h2 {
	margin-top: 20px;
	margin-bottom: 20px;
	font-family: arial, sans-serif;
	text-align: center;
	color: orangered;
	font-family: arial, sans-serif;
	width: 100%;
	height: 100%;
}
</style>
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
<body id="refresh" name="refresh" value="refresh"
	onended="autoRefresh()">
	<div class="wrapper">
		<br>
		<center>
			<br> <br>
			<div class="title">Updates Data</div>
		</center>
		<div
			style="text-align: right; padding-right: 20px; padding-bottom: 10px;">
			<a href="deleteAllUpdatesData" style="color: white;">Delete All
				Updates</a>
		</div>
		<table>
			<thead>
				<tr>
					<th>Data Updation Date</th>
					<th>Data Updation Time</th>
					<th>Updates ID</th>
					<th>Updates Category</th>
					<th>Updates Heading</th>
					<th>Updates Description</th>
					<th>First Bullet Point</th>
					<th>Second Bullet Point</th>
					<th>Third Bullet Point</th>
					<th>Fourth Bullet Point</th>
					<th>Fifth Bullet Point</th>
					<th>Sixth Bullet Point</th>
					<th>Seventh Bullet Point</th>
					<th>Eighth Bullet Point</th>
					<th>Ninth Bullet Point</th>
					<th>Tenth Bullet Point</th>
					<th>Edit Updates</th>
					<th>Delete Updates</th>

				</tr>
			</thead>
			<c:forEach var="item" items="${AllUpdatesData}">
				<tr>
					<td>${item.localDate}</td>
					<td>${item.localTime}</td>
					<td>${item.updatesId}</td>
					<td>${item.updatesCategory}</td>
					<td>${item.updatesHeading}</td>
					<td>${item.updatesDescription}</td>
					<td>${item.firstBulletPoint}</td>
					<td>${item.secondBulletPoint}</td>
					<td>${item.thirdBulletPoint}</td>
					<td>${item.fourthBulletPoint}</td>
					<td>${item.fifthBulletPoint}</td>
					<td>${item.sixthBulletPoint}</td>
					<td>${item.seventhBulletPoint}</td>
					<td>${item.eighthBulletPoint}</td>
					<td>${item.ninthBulletPoint}</td>
					<td>${item.tenthBulletPoint}</td>

					<td><a href="editUpdates/${item.updatesId}">Edit</a></td>
					<td><a href="deleteUpdates/${item.updatesId}">Delete</a></td>
				</tr>
			</c:forEach>
		</table>
	</div>
</body>
<%
} else {
response.sendRedirect("adminPage");
}
%>
</html>