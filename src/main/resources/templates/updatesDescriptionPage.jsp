<%@page import="com.RSCM.models.UpdatesModel"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@page import="com.mysql.cj.x.protobuf.MysqlxCrud.Update"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@page import="com.RSCM.models.UpdateServicesModel"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta name="viewport" content="initial-scale=1, maximum-scale=1">
<!-- site metas -->
<title>Updates Description - RSCM</title>
<meta name="keywords" content="">
<meta name="description" content="">
<meta name="author" content="">
<!-- bootstrap css -->
<link rel="stylesheet" type="text/css" href="css/bootstrap.min.css">
<!-- style css -->
<link rel="stylesheet" type="text/css" href="css/style.css">
<!-- Responsive-->
<link rel="stylesheet" href="css/responsive.css">
<!-- fevicon -->
<link rel="icon" href="images/favicon.jpg" type="image/gif" />
<!-- Scrollbar Custom CSS -->
<link rel="stylesheet" href="css/jquery.mCustomScrollbar.min.css">
<!-- Tweaks for older IEs-->
<link rel="stylesheet"
	href="https://netdna.bootstrapcdn.com/font-awesome/4.0.3/css/font-awesome.css">
<!-- owl stylesheets -->
<link rel="stylesheet" href="css/owl.carousel.min.css">
<link rel="stylesheet" href="css/owl.theme.default.min.css">
<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/fancybox/2.1.5/jquery.fancybox.min.css"
	media="screen">
<link rel="stylesheet"
	href="https://fonts.googleapis.com/css?family=Karla:500">
<style>
body {
	font-family: 'Karla';
	font-weight: 500;
	margin: 0;
	padding: 0;
	line-height: 1.6;
	background-color: #f9f9f9;
	color: #333;
}

.container {
	max-width: 800px;
	margin: 20px auto;
	padding: 20px;
	background: #1b5a8d;
	box-shadow: 0 2px 4px rgba(0, 0, 0, 0.1);
	border-radius: 8px;
}

.container img {
	max-width: 100%;
	height: auto;
	border-radius: 5px;
	margin-bottom: 15px;
}

h1 {
	margin-top: 0;
	font-size: 24px;
	color: White;
	font-family: 'Karla';
	font-weight: 500;
}

p {
	margin: 10px 0;
	font-size: 16px;
	color: white;
}

.container:hover {
	box-shadow: 0 4px 8px rgba(0, 0, 0, 0.2);
	background-color: orangered;
}

.blog-details {
	font-size: 14px;
	color: white;
	margin-bottom: 15px;
}
</style>
</head>
<body>
	<%
	UpdatesModel updatesModel = (UpdatesModel) request.getAttribute("UpdatesDescriptionData");
	%>
	<div class="container">
		<h1><%=updatesModel.getUpdatesHeading()%></h1>
		<div class="blog-details">
			Posted on:
			<%=updatesModel.getLocalDate()%></div>
		<img
			src="https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQ67lmg6uakCXsP11h3eJedXzqbrnLU4uEAkg&s" alt="Blog Image 1">
		<p><%=updatesModel.getUpdatesDescription()%></p>


		<div class="wrapper">
			<br>
			<%
			if (updatesModel.getFirstBulletPoint() != null) {
			%>
			<h3 style="font-style: italic; color: white;">
				Key Points :
				<%=updatesModel.getUpdatesHeading()%></h3>
			<p>
				&#10004;
				<%=updatesModel.getFirstBulletPoint()%></p>

			<%
			}
			if (updatesModel.getSecondBulletPoint() != null) {
			%>
			<p>
				&#10004;
				<%=updatesModel.getSecondBulletPoint()%></p>

			<%
			}
			if (updatesModel.getThirdBulletPoint() != null) {
			%>
			<p>
				&#10004;
				<%=updatesModel.getThirdBulletPoint()%></p>
			<%
			}
			if (updatesModel.getFourthBulletPoint() != null) {
			%>
			<p>
				&#10004;
				<%=updatesModel.getFourthBulletPoint()%></p>

			<%
			}
			if (updatesModel.getFifthBulletPoint() != null) {
			%>
			<p>
				&#10004;
				<%=updatesModel.getFifthBulletPoint()%></p>
			<%
			}
			if (updatesModel.getSixthBulletPoint() != null) {
			%>
			<p>
				&#10004;
				<%=updatesModel.getSixthBulletPoint()%></p>

			<%
			}
			if (updatesModel.getSeventhBulletPoint() != null) {
			%>
			<p>
				&#10004;
				<%=updatesModel.getSeventhBulletPoint()%></p>

			<%
			}
			if (updatesModel.getEighthBulletPoint() != null) {
			%>
			<p>
				&#10004;
				<%=updatesModel.getEighthBulletPoint()%></p>

			<%
			}
			if (updatesModel.getNinthBulletPoint() != null) {
			%>
			<p>
				&#10004;
				<%=updatesModel.getNinthBulletPoint()%></p>

			<%
			}
			if (updatesModel.getTenthBulletPoint() != null) {
			%>
			<p>
				&#10004;
				<%=updatesModel.getTenthBulletPoint()%></p>

			<%
			}
			%>

		</div>
	</div>

	<footer>
		<p>&copy; 2024 My Blog. All Rights Reserved.</p>
	</footer>

</body>
</html>
