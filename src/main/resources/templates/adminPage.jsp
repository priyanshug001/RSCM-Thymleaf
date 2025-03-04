<%@page import="java.lang.ProcessBuilder.Redirect"%>
<%@page import="com.RSCM.models.UpdateServicesModel"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>

<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%
String Username = (String) session.getAttribute("username");
String Fullname = (String) session.getAttribute("Fullname");
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<meta http-equiv="refresh" content="20">
<title>Admin Page - RSCM</title>
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
	width: auto;
	margin-left: 100px;
	margin-right: 100px;
	font-weight: 600;
	text-align: center;
	line-height: 100px;
	color: #1b5a8d;
	user-select: none;
	border-radius: 30px 30px 30px 30px;
	background-color: white;
	margin-bottom: 20px;
	font-weight: 600;
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

button {
	background-color: orangered;
	color: white;
	padding: 14px 40px;
	font-size: 20px;
	margin: 20px;
	cursor: pointer;
	border: 1px solid #1b5a8d;
	border-radius: 12px;
	box-shadow: 0 8px 16px 0 rgba(0, 0, 0, 0.2), 0 6px 20px 0
		rgba(0, 0, 0, 0.19);
	width: 90%;
}
</style>
<script>
	function openOptions() {
		// Get the element to toggle
		var divOption = document.getElementById('divoption');

		// Check the current state and toggle
		if (divOption.hidden) {
			divOption.hidden = false; // Show the element
		} else {
			divOption.hidden = true; // Hide the element
		}
	}

	function autoRefresh() {
		var logout = document.getElementById('logout');
		if (logout != null) {
			window.location = window.location.href;
			setInterval('autoRefresh()', 1000);
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
			<br> <br>
			<div class="title">
				Welcome
				<%=Fullname%>
				<a href="logout" style="color: white; text-decoration: none;">
					<button id="logout" name="logout" value="logout"
						onclick="autoRefresh()"
						style="background-color: #1b5a8d; color: white; padding: 10px 5px; font-size: 14px; margin: 20px; cursor: pointer; border: 5px solid; border-radius: 12px; box-shadow: 0 8px 16px 0 rgba(0, 0, 0, 0.2), 0 6px 20px 0 rgba(0, 0, 0, 0.19); width: 20%;">
						Logout</button>
				</a>
			</div>

			<div class="button-container">

				<button onclick="openOptions()">Admin Updates</button>
				<div id="divoption" hidden
					style="background-color: orangered; color: white; padding: 14px 40px; font-size: 20px; margin: 20px; cursor: pointer; border: 1px solid #4aafff; border-radius: 12px; box-shadow: 0 8px 16px 0 rgba(0, 0, 0, 0.2), 0 6px 20px 0 rgba(0, 0, 0, 0.19); width: 50%;">
					<a href="adminLoginData"
						style="color: white; text-decoration: none;"><button
							style="background-color: #1b5a8d; color: white; padding: 14px 40px; font-size: 20px; margin: 20px; cursor: pointer; border: 1px solid orangered; border-radius: 12px; box-shadow: 0 8px 16px 0 rgba(0, 0, 0, 0.2), 0 6px 20px 0 rgba(0, 0, 0, 0.19); width: 50%;">
							Admin Login Data</button></a> <a href="checkAdminUpdates"
						style="color: white; text-decoration: none;"><button
							style="background-color: #1b5a8d; color: white; padding: 14px 40px; font-size: 20px; margin: 20px; cursor: pointer; border: 1px solid orangered; border-radius: 12px; box-shadow: 0 8px 16px 0 rgba(0, 0, 0, 0.2), 0 6px 20px 0 rgba(0, 0, 0, 0.19); width: 50%;">
							Admin Registration Data</button></a> <a href="contactData"
						style="color: white; text-decoration: none;">
						<button
							style="background-color: #1b5a8d; color: white; padding: 14px 40px; font-size: 20px; margin: 20px; cursor: pointer; border: 1px solid orangered; border-radius: 12px; box-shadow: 0 8px 16px 0 rgba(0, 0, 0, 0.2), 0 6px 20px 0 rgba(0, 0, 0, 0.19); width: 50%;">
							Contact Data</button>
					</a> <a href="recruitmentData"
						style="color: white; text-decoration: none;">
						<button
							style="background-color: #1b5a8d; color: white; padding: 14px 40px; font-size: 20px; margin: 20px; cursor: pointer; border: 1px solid orangered; border-radius: 12px; box-shadow: 0 8px 16px 0 rgba(0, 0, 0, 0.2), 0 6px 20px 0 rgba(0, 0, 0, 0.19); width: 50%;">
							Recruitment Data</button>
					</a> <a href="updatesData" style="color: white; text-decoration: none;"><button
							style="background-color: #1b5a8d; color: white; padding: 14px 40px; font-size: 20px; margin: 20px; cursor: pointer; border: 1px solid orangered; border-radius: 12px; box-shadow: 0 8px 16px 0 rgba(0, 0, 0, 0.2), 0 6px 20px 0 rgba(0, 0, 0, 0.19); width: 50%;">
							Updates Data</button></a> <a href="servicesData"
						style="color: white; text-decoration: none;"><button
							style="background-color: #1b5a8d; color: white; padding: 14px 40px; font-size: 20px; margin: 20px; cursor: pointer; border: 1px solid orangered; border-radius: 12px; box-shadow: 0 8px 16px 0 rgba(0, 0, 0, 0.2), 0 6px 20px 0 rgba(0, 0, 0, 0.19); width: 50%;">
							Services Data</button></a>
				</div>

				<a href="updateServices"
					style="color: white; text-decoration: none;"><button>
						Update Services</button></a> <a href="editIndexPageContent"
					style="color: white; text-decoration: none;">
					<button>Update Index Page</button>
				</a> <a href="updateAboutPageData"
					style="color: white; text-decoration: none;">
					<button>Update About Page</button>
				</a> <a href="updateCareerPage"
					style="color: white; text-decoration: none;">
					<button>Update Career Page</button>
				</a> <a href="updateUpdatesPage"
					style="color: white; text-decoration: none;">
					<button>Update Updates</button>
				</a>


			</div>
	</div>
	</center>

</body>
<%
} else {
response.sendRedirect("adminLogin");
%>
<%
}
%>
</html>