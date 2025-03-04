<%@page import="com.RSCM.models.UpdateCareerPageModel"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%
String Username = (String) session.getAttribute("username");
String Fullname = (String) session.getAttribute("Fullname");
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Update Career Page - RSCM</title>
<link rel="stylesheet" href="css/updateServiceCSS.css">
<script>
	function openRecruitment() {
		var openingAreOpen = document.getElementById('openingAreOpen').value;

		if (openingAreOpen != null) {
			document.getElementById('firstRecruitment').hidden = false;
			document.getElementById('secondRecruitment').hidden = false;
			document.getElementById('thirdRecruitment').hidden = false;
			document.getElementById('fourthRecruitment').hidden = false;
			document.getElementById('fifthRecruitment').hidden = false;

			document.getElementById('firstRecruitmentHeading').hidden = false;
			document.getElementById('secondRecruitmentHeading').hidden = false;
			document.getElementById('thirdRecruitmentHeading').hidden = false;
			document.getElementById('fourthRecruitmentHeading').hidden = false;
			document.getElementById('fifthRecruitmentHeading').hidden = false;
		} else {
			document.getElementById('firstRecruitment').hidden = true;
			document.getElementById('secondRecruitment').hidden = true;
			document.getElementById('thirdRecruitment').hidden = true;
			document.getElementById('fourthRecruitment').hidden = true;
			document.getElementById('fifthRecruitment').hidden = true;

			document.getElementById('firstRecruitmentHeading').hidden = true;
			document.getElementById('secondRecruitmentHeading').hidden = true;
			document.getElementById('thirdRecruitmentHeading').hidden = true;
			document.getElementById('fourthRecruitmentHeading').hidden = true;
			document.getElementById('fifthRecruitmentHeading').hidden = true;

			document.getElementById('firstRecruitment').value = "";
			document.getElementById('secondRecruitment').vale = "";
			document.getElementById('thirdRecruitment').value = "";
			document.getElementById('fourthRecruitment').value = "";
			document.getElementById('fifthRecruitment').value = "";
		}
	}

	function closeRecruitment() {
		var openingAreClosed = document.getElementById('openingAreClosed').value;

		if (openingAreClosed != null) {
			document.getElementById('firstRecruitment').hidden = true;
			document.getElementById('secondRecruitment').hidden = true;
			document.getElementById('thirdRecruitment').hidden = true;
			document.getElementById('fourthRecruitment').hidden = true;
			document.getElementById('fifthRecruitment').hidden = true;

			document.getElementById('firstRecruitmentHeading').hidden = true;
			document.getElementById('secondRecruitmentHeading').hidden = true;
			document.getElementById('thirdRecruitmentHeading').hidden = true;
			document.getElementById('fourthRecruitmentHeading').hidden = true;
			document.getElementById('fifthRecruitmentHeading').hidden = true;

			document.getElementById('firstRecruitment').value = "";
			document.getElementById('secondRecruitment').vale = "";
			document.getElementById('thirdRecruitment').value = "";
			document.getElementById('fourthRecruitment').value = "";
			document.getElementById('fifthRecruitment').value = "";

		} else {
			document.getElementById('firstRecruitment').hidden = false;
			document.getElementById('secondRecruitment').hidden = false;
			document.getElementById('thirdRecruitment').hidden = false;
			document.getElementById('fourthRecruitment').hidden = false;
			document.getElementById('fifthRecruitment').hidden = false;

			document.getElementById('firstRecruitmentHeading').hidden = false;
			document.getElementById('secondRecruitmentHeading').hidden = false;
			document.getElementById('thirdRecruitmentHeading').hidden = false;
			document.getElementById('fourthRecruitmentHeading').hidden = false;
			document.getElementById('fifthRecruitmentHeading').hidden = false;
		}
	}

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

<body>
	<%
	UpdateCareerPageModel updateCareerPageModel = (UpdateCareerPageModel) request.getAttribute("CareerPageData");
	%>
	<div class="wrapper">
		<br>
		<center>
			<br> <br> <br>

			<div class="title">Update Career Page</div>
			<form action="/updateCareerPage" method="post">

				<h4>Career Page Description</h4>
				<textarea placeholder="Career Page Description"
					id="careerPageDescription" name="careerPageDescription" rows="5"
					cols="10" required><%=updateCareerPageModel.getCareerDescription()%></textarea>
				<br> <br>

				<h3 style="text-align: center; color: white;">Now Opening Are
					Closed Or Open</h3>
				<br> <input type="radio" id="openingAreOpen"
					name="openingAreClosedOrOpen" value="Open"
					onclick="openRecruitment()">   <label for="openingAreOpen"
					style="font-size: large; font-weight: bold; color: white;">Open</label>
				  <input type="radio" id="openingAreClosed"
					name="openingAreClosedOrOpen" value="Closed"
					onclick="closeRecruitment()">   <label
					for="openingAreClosed"
					style="font-size: large; font-weight: bold; color: white;">Closed</label><br>
				<br> <br>

				<h3 style="text-align: center; color: white;">Enter The
					Recruitment Which Is Open Now</h3>
				<br>

				<h4 id="firstRecruitmentHeading" hidden>First Recruitment</h4>
				<textarea placeholder="First Recruitment" id="firstRecruitment"
					name="firstRecruitment" rows="2" cols="10" hidden></textarea>
				<br> <br>

				<h4 id="secondRecruitmentHeading" hidden>Second Recruitment</h4>
				<textarea placeholder="Second Recruitment" id="secondRecruitment"
					name="secondRecruitment" rows="2" cols="10" hidden></textarea>
				<br> <br>

				<h4 id="thirdRecruitmentHeading" hidden>Third Recruitment</h4>
				<textarea placeholder="Third Recruitment" id="thirdRecruitment"
					name="thirdRecruitment" rows="2" cols="10" hidden></textarea>
				<br> <br>

				<h4 id="fourthRecruitmentHeading" hidden>Fourth Recruitment</h4>
				<textarea placeholder="Fourth Recruitment" id="fourthRecruitment"
					name="fourthRecruitment" rows="2" cols="10" hidden></textarea>
				<br> <br>

				<h4 id="fifthRecruitmentHeading" hidden>Fifth Recruitment</h4>
				<textarea placeholder="Fifth Recruitment" id="fifthRecruitment"
					name="fifthRecruitment" rows="2" cols="10" hidden></textarea>
				<br> <br>

				<div class="field">
					<input type="submit" value="Update Career" id="refresh"
						name="refresh" onclick="autoRefersh()"
						style="background-color: orangered; color: white;">
				</div>
			</form>
	</div>
	</center>
</body>
<%
} else {
response.sendRedirect("adminPage");
}
%>
</html>