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
<title>Updates - RSCM</title>
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
</style>
</head>
<body>

	<%
	List<UpdateServicesModel> list = (List<UpdateServicesModel>) request.getAttribute("AllUpdatesData");
	if (list != null) {
	%>
	<!--header section start -->
	<div class="header_section">
		<div class="header_left">
			<jsp:include page="navigation-bar.jsp"></jsp:include>
		</div>
	</div>
	<!--header section end -->
	<!--services section start -->
	<div class="container">
		<h1 class="what_taital">Updates</h1>
		<p class="what_text">Related To The All Fields</p>
		<div class="what_we_do_section_2">
			<c:forEach items="${AllUpdatesData}" var="data">
				<a href="updatesDescriptionPage/${data.updatesId}">
					<div style="display: inline-block;" rows="3">
						<div class="row">
							<div class="col-lg-12 col-sm-6">
								<div class="box_main">
									<div class="icon_1">
										<img src="images/icon-4.png">
									</div>
									<h3 class="accounting_text">
										<c:out value="${data.updatesHeading}" />
									</h3>
									<center>
										<p style="font-weight: bolder; color:white;">Posted on
											: ${data.localDate}</p>
									</center>
									<p class="lorem_text"
										style="overflow: hidden; max-height: 100px; display: -webkit-box; -webkit-line-clamp: 2; -webkit-box-orient: vertical; text-overflow: ellipsis;">
										<c:out value="${data.updatesDescription}" />
									</p>
								</div>
							</div>
						</div>
					</div>
				</a>
			</c:forEach>
		</div>
	</div>
	<%
	} else {
	response.sendRedirect("index");
	}
	%>
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