<%@page import="com.RSCM.models.UpdateServicesModel"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>

<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<head>
<meta charset="ISO-8859-1">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1">
<!-- mobile metas -->
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta name="viewport" content="initial-scale=1, maximum-scale=1">
<!-- site metas -->
<title>Services Description - RSCM</title>
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
<link rel="stylesheet" href="css/serviceDescriptionCSS.css">
<link rel="stylesheet"
	href="https://fonts.googleapis.com/css?family=Karla:500">

<style>
@import
	url('https://fonts.googleapis.com/css?family=Poppins:400,500,600,700&display=swap')
	;

* {
	margin: 0;
	padding: 0;
	box-sizing: border-box;
	font-family: 'Karla';
	font-weight: 500;
}

html, body {
	display: grid;
	height: 100vh;
	place-items: center;
	font-family: 'Karla';
	font-weight: 500;
}

h4 {
	text-align: left;
	color: white;
	margin-left: 30px;
	margin-right: 20px;
	margin-top: 5%;
	margin-bottom: auto;
	place-items: center;
}

h3 {
	text-align: center;
	color: white;
	margin-top: auto;
	place-items: center;
}

p {
	text-align: left;
	color: white;
	margin-left: 30px;
	margin-right: 20px;
	margin-top: auto;
	margin-bottom: auto;
	place-items: center;
}

textarea {
	width: 100%;
	font-size: 16px;
	border-radius: 10px;
	text-indent: 10px;
}

.wrapper {
	width: 1000px;
	height: auto;
	background: #1b5a8d;
	border-radius: 15px;
	box-shadow: 0px 15px 20px rgba(0, 0, 0, 0.1);
}

.wrapper .title {
	font-size: 35px;
	margin-left: 15%;
	margin-right: 15%;
	width: auto;
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
	color: #1b5a8d;
	width: 20%;
	border: none;
	padding-left: 0;
	margin-top: -10px;
	font-size: 20px;
	font-weight: 500;
	cursor: pointer;
	background-color: #fff;
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
</style>
</head>
<body>

	<%
	UpdateServicesModel updateServicesModel = (UpdateServicesModel) request.getAttribute("SpecificUpdatedServicesData");
	%>
	<div class="wrapper">
		<br>
		<center>
			<br> <br>
			<div class="title"><%=updateServicesModel.getServiceHeading()%></div>

			<h3>
				All About
				<%=updateServicesModel.getServiceHeading()%></h3>

			<h4><%=updateServicesModel.getServiceDescription()%>
			</h4>
			<br>
			<%
			if (updateServicesModel.getServiceSpecializationFirst() != null) {
			%>
			<h3>
				Our Specialization in
				<%=updateServicesModel.getServiceHeading()%></h3><br>
			<p>
				&#10004;
				<%=updateServicesModel.getServiceSpecializationFirst()%></p>
			<br>
			<%
			}
			if (updateServicesModel.getServiceSpecializationSecond() != null) {
			%>
			<p>
				&#10004;
				<%=updateServicesModel.getServiceSpecializationSecond()%></p>
			<br>
			<%
			}
			if (updateServicesModel.getServiceSpecializationThird() != null) {
			%>
			<p>
				&#10004;
				<%=updateServicesModel.getServiceSpecializationThird()%></p>
			<br>
			<%
			}
			if (updateServicesModel.getServiceSpecializationFourth() != null) {
			%>
			<p>
				&#10004;
				<%=updateServicesModel.getServiceSpecializationFourth()%></p>
			<br>
			<%
			}
			if (updateServicesModel.getServiceSpecializationFifth() != null) {
			%>
			<p>
				&#10004;
				<%=updateServicesModel.getServiceSpecializationFifth()%></p>
			<br>
			<%
			}
			%>
		
	</div>
	</center>
</body>
</html>