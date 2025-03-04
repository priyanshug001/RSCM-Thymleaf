<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html lang="en" dir="ltr">
<head>
<meta charset="utf-8">
<!--  <meta http-equiv="refresh" content="10"> -->
<title>Admin Login - RSCM</title>
<link rel="stylesheet" href="css/allcss.css">
<script>
	function autoRefresh() {
		var refresh = document.getElementById('refresh');
		if (refresh != null) {
			window.location = window.location.href;
			setInterval('autoRefresh()', 200);
		}
	}
</script>
<link rel="stylesheet"
	href="https://fonts.googleapis.com/css?family=Karla:700">

<style>
body {
	font-family: 'Karla';
	font-weight: 600;
}
</style>
</head>
<body>
	<div class="wrapper">
		<br> <br> <br>
		<div class="title">Admin Login</div>
		<form action="adminLogin" method="post">

			<div class="field">
				<input type="text" id="username" name="username" required> <label>Username</label>
			</div>
			<div class="field">
				<input type="password" id="password" name="password" required>
				<label>Password</label>
			</div>
			<div class="field">
				<input type="submit" id="refresh" name="refresh" value="login"
					onclick="autoRefresh()">
			</div>
			<div class="button">
				<center style="color:white;">
					Not a Admin? Register Now <br> <br>
					<p>To New Admin Registration, Login With Main Admin Credentials</p>
				</center>
			</div>
		</form>
	</div>
</body>
</html>