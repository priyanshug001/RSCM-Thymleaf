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
<title>Specific User Admin Login Data - RSCM</title>
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
	height: 100vh;
	place-items: center;
}

.wrapper {
	width: 1000px;
	height: auto;
	background: #1b5a8d;
	border-radius: 15px;
	box-shadow: 0px 15px 20px rgba(0, 0, 0, 0.1);
	height: auto;
}

.wrapper .title {
	font-size: 35px;
	width: 50%;
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
	justify-content: center;
}

form .content input {
	width: 15px;
	height: 15px;
	background: white;
}

form .content label {
	color: #262626;
	user-select: none;
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
	width: 100%;
}

th {
	border: 5px solid white;
	text-align: left;
	padding: 8px;
	color: white;
	background-color: orangered;
}

td {
	border: 5px solid white;
	text-align: left;
	padding: 8px;
	color: white;
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
	color: white;
	font-family: arial, sans-serif;
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
			<div class="title">Admin Login Data</div>
		</center>
		<table>
			<thead>
				<tr>
					<th>Data Updation Date</th>
					<th>Username</th>
					<th>Password</th>
					<th>Admin Login Id</th>
					<th>Fullname</th>
				</tr>
			</thead>
			<c:forEach var="item" items="${SpecificAdminLoginData}">
				<tr>
					<td>${item.dataUpdationDate}</td>
					<td>${item.username}</td>
					<td>${item.password }</td>
					<td>${item.adminLoginId}</td>
					<td>${item.fullName}</td>
				</tr>
			</c:forEach>
		</table>
		<h2>Total Count : ${SpecificAdminLoginCount}</h2>
	</div>
</body>
<%
} else {
response.sendRedirect("adminPage");
}
%>
</html>