<!DOCTYPE html>
<%@page import="com.mysql.cj.x.protobuf.MysqlxCrud.Update"%>
<%@page import="java.util.List"%>
<%@page import="com.RSCM.models.UpdateServicesModel"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<html lang="en">
<head>
<!-- basic -->
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1">
<!-- mobile metas -->
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta name="viewport" content="initial-scale=1, maximum-scale=1">
<!-- site metas -->
<title>Updates Page - RSCM</title>
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
}

.blog-grid {
	display: grid;
	grid-template-columns: repeat(auto-fit, minmax(250px, 1fr));
	gap: 20px;
	max-width: 1200px;
	margin: 20px auto;
	padding: 10px;
}

.blog-post {
	background: #1b5a8d;
	border-radius: 8px;
	border-width: 5px;
	border-style: solid;
	border-color: #1b5a8d;
	box-shadow: 0 2px 4px rgba(0, 0, 0, 0.1);
	transition: transform 0.3s, box-shadow 0.3s;
	overflow: hidden;
	box-shadow: 0 2px 4px rgba(0, 0, 0, 0.1);
}

.blog-post:hover {
	transform: translateY(-10px);
	box-shadow: 0 4px 8px rgba(0, 0, 0, 0.2);
	background-color: orangered;
	border-width: 5px;
	border-style: solid;
	border-color: orangered;
	border-style: solid;
}

.blog-post img {
	max-width: 100%;
	height: auto;
}

.blog-content {
	padding: 15px;
}

.blog-content h2 {
	margin: 0 0 10px;
	font-size: 18px;
	color: white;
}

.blog-content p {
	margin: 0 0 10px;
	font-size: 14px;
	color: white;
}
</style>
</head>
<body>
	<!--header section start -->
	<div class="header_section">
		<div class="header_left">
			<jsp:include page="navigation-bar.jsp"></jsp:include>
		</div>
	</div>
	<!--header section end -->
	<div>

		<h1 class="what_taital">Updates</h1>
		<p class="what_text">Related To The All Fields</p>
		<div class="what_we_do_section_2"></div>

	</div>
	<div class="blog-grid">
		<c:forEach items="${AllUpdatesData}" var="data">
			<a href="updatesDescriptionPage/${data.updatesId}">
				<div class="blog-post">
					<img
						src="data:image/jpeg;base64,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"
						alt="Blog Image 1">
					<div class="blog-content">
						<h2
							style="overflow: hidden; max-height: 63px; display: -webkit-box; -webkit-line-clamp: 3; -webkit-box-orient: vertical; text-overflow: ellipsis;">${data.updatesHeading}</h2>
						<p style="font-weight: bolder;">Posted on :${data.localDate}</p>
						<p
							style="overflow: hidden; max-height: 100px; display: -webkit-box; -webkit-line-clamp: 2; -webkit-box-orient: vertical; text-overflow: ellipsis;">${data.updatesDescription}</p>
					</div>
				</div>
			</a>
		</c:forEach>
	</div>
	<jsp:include page="footer.jsp"></jsp:include>
	<!-- Javascript files-->
	<script src="js/jquery.min.js"></script>
	<script src="js/popper.min.js"></script>
	<script src="js/bootstrap.bundle.min.js"></script>
	<script src="js/jquery-3.0.0.min.js"></script>
	<script src="js/plugin.js"></script>
	<!-- sidebar -->
	<script src="js/jquery.mCustomScrollbar.concat.min.js"></script>
	<script src="js/custom.js"></script>
	<!-- javascript -->
	<script src="js/owl.carousel.js"></script>
	<script
		src="https:cdnjs.cloudflare.com/ajax/libs/fancybox/2.1.5/jquery.fancybox.min.js"></script>
</body>
</html>