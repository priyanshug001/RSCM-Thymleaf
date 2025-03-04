<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%
String MainAdminRSCMUsername = (String) session.getAttribute("Main-Admin-RSCM-Username");
%>
<!DOCTYPE html>
<html lang="en" dir="ltr">
<head>
<meta charset="UTF-8">
<title>Admin Registration - RSCM</title>
<link rel="stylesheet" href="css/signup.css">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<link rel="stylesheet"
	href="https://fonts.googleapis.com/css?family=Karla:700">

<style>
body {
	font-family: 'Karla';
}
textarea {
	width: 100%;
	height: 40px;
	font-size: 16px;
	border-radius: 6px;
	text-indent: 10px;
	resize: none;
	font-family: 'karla';
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
<body>
	<%
	if (MainAdminRSCMUsername != null) {
	%>
	<div class="container">

		<br> <br> <br>
		<div class="title">Admin Registration</div>
		<div class="content">
			<form action="adminRegistration" method="post">
				<div class="user-details">
					<div class="input-box">
						<span class="details">Fullname</span>
						<textarea placeholder="Fullname" id="fullName" name="fullName"
							required></textarea>
					</div>
					<div class="input-box">
						<span class="details">E-mail</span> <input type="email"
							placeholder="E-mail" id="e-mail" name="e-mail" required>
					</div>
					<div class="input-box">
						<span class="details">Mobile No.</span> <input type="number"
							placeholder="Mobile No." id="mobile-no" name="mobile-no" required>
					</div>
					<div class="input-box">
						<span class="details">Address</span>
						<textarea placeholder="Address" id="address" name="address"
							required></textarea>
					</div>
					<div class="input-box">
						<span class="details">City</span>
						<textarea placeholder="City" id="city" name="city" required></textarea>
					</div>
					<div class="input-box">
						<span class="details">District</span>
						<textarea placeholder="District" id="district" name="district"
							required></textarea>
					</div>
					<div class="input-box">
						<span class="details">State</span>
						<textarea placeholder="State" id="state" name="state" required></textarea>
					</div>
					<div class="input-box">
						<span class="details">ZIP-Code</span> <input type="number"
							placeholder="ZIP-Code" id="zip-code" name="zip-code" required>
					</div>
					<div class="input-box">
						<span class="details">Create Username</span>
						<textarea placeholder="Create Username" id="username"
							name="username" required></textarea>
					</div>
					<div class="input-box">
						<span class="details">Create Password</span> <input
							type="password" placeholder="Create Password" id="password"
							name="password" required>
					</div>
				</div>
				<div class="button">
					<input type="submit" value="Register Admin" id="refresh"
						name="refresh" onclick="autoRefresh()">
				</div>
				<div class="signup-link">
					<center>
						If a Admin? <a href="adminLogin"
							style="color: orangered; text-decoration: none;">Login now</a>
					</center>
				</div>
			</form>
		</div>
	</div>
	<%
	} else {
	response.sendRedirect("adminLogin");
	}
	%>
</body>
</html>