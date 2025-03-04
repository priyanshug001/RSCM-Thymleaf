<!DOCTYPE html>
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
<title>RecruitmentForm-RSCM</title>
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
<link rel="icon" href="images/fevicon.jpg" type="image/gif" />
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
	String DomainName = (String) request.getAttribute("DomainName");
	%>
	<!--header section start -->
	<div class="header_section header_bg">
		<jsp:include page="navigation-bar.jsp"></jsp:include>
	</div>
	<!--header section end -->
	<!-- contact section start -->
	<div class="contact_section layout_padding">
		<div class="container-fluid">
			<h1 class="what_taital">Recruitment Form</h1>
			<p class="amet_text">Fill Your Details</p>
			<div class="row">
				<form action="/recruitmentForm" method="post">
					<div class="mail_section">
						<textarea class="mail_text_1" placeholder="FullName"
							name="fullName" id="fullName" rows="1" required></textarea>
						<input type="email" class="mail_text_1" placeholder="Email"
							name="email" id="email" required> <input type="number"
							class="mail_text_1" placeholder="Mobile No." name="mobileNo"
							id="mobileNo" required> <input type="date"
							class="mail_text_1" placeholder="DateOfBirth" name="dateOfBirth"
							id="dateOfBirth" required>
						<textarea class="mail_text_1" placeholder="Address" name="address"
							id="address" rows="1" required></textarea>
						<textarea class="mail_text_1" placeholder="City/Village"
							name="cityOrVillage" id="cityOrVillage" rows="1" required></textarea>
						<textarea class="mail_text_1" placeholder="District"
							name="district" id="district" rows="1" required></textarea>
						<textarea class="mail_text_1" placeholder="State" name="state"
							id="state" rows="1" required></textarea>
						<textarea class="mail_text_1" placeholder="Your Domain"
							name="yourDomain" id="yourDomain" rows="1" hidden><%=DomainName%></textarea>
						<input type="file" class="mail_text_1" placeholder=""
							name="resumeOrCV" id="resumeOrCV" required> <input
							class="send_bt" type="submit" name="submitDetails"
							id="submitDetails" value="Submit Details"
							style="background-color: orange; color: white;">

					</div>
				</form>
			</div>
		</div>
	</div>
	<!-- contact section end -->
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