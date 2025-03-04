<%@page import="com.RSCM.models.UpdateAboutPageContentModel"%>
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
<title>Update About Page - RSCM</title>
<link rel="stylesheet" href="css/updateServiceCSS.css">
</head>
<script>
	function autoRefresh() {
		var refresh = document.getElementById('refresh');
		if (refresh != null) {
			window.location = window.location.href;
			setInterval('autoRefresh()', 200);
		}
	}
</script>
<%
if (Username != null) {
%>
<body>
	<%
	UpdateAboutPageContentModel updateAboutPageContentModel = (UpdateAboutPageContentModel) request
			.getAttribute("UpdatedAboutPageData");
	%>
	<div class="wrapper">
		<br>
		<center>
			<br> <br> <br>

			<div class="title">Update About Page Content</div>
			<form action="/updateAboutPageData" method="post">

				<h4>About Us</h4>
				<textarea placeholder="About Us" id="aboutUs" name="aboutUs"
					rows="5" cols="10" required><%=updateAboutPageContentModel.getAboutUs()%></textarea>
				<br> <br>

				<h4>Our Mission</h4>
				<textarea placeholder="Our Mission" id="ourMission"
					name="ourMission" rows="5" cols="10" required><%=updateAboutPageContentModel.getOurMission()%></textarea>
				<br> <br>

				<h4>Our Vision</h4>
				<textarea placeholder="Our Vision" id="ourVision" name="ourVision"
					rows="5" cols="10" required><%=updateAboutPageContentModel.getOurVision()%></textarea>
				<br> <br>

				<h4>Who We Are</h4>
				<textarea placeholder="Who We Are" id="whoWeAre" name="whoWeAre"
					rows="5" cols="10" required><%=updateAboutPageContentModel.getWhoWeAre()%></textarea>
				<br> <br>
				<h3 style="text-align: center; color: white;">Why Choose Us
					(Fill Your Specialization)</h3>
				<br>

				<h4>What We Do</h4>
				<textarea placeholder="What We Do" id="whatWeDo" name="whatWeDo"
					rows="5" cols="10" required><%=updateAboutPageContentModel.getWhatWeDO()%></textarea>
				<br> <br>
				<h3 style="text-align: center; color: white;">Why Choose Us
					(Fill Your Specialization)</h3>
				<br>

				<%
				if (updateAboutPageContentModel.getFirstWhyChooseUs() != null) {
				%>
				<h4>First Why Choose Us Specialization</h4>
				<textarea placeholder="First Why Choose Us Specialization"
					id="firstWhyChooseUs" name="firstWhyChooseUs" rows="2" cols="10"><%=updateAboutPageContentModel.getFirstWhyChooseUs()%></textarea>
				<br> <br>
				<%
				} else {
				%><h4>First Why Choose Us Specialization</h4>
				<textarea placeholder="First Why Choose Us Specialization"
					id="firstWhyChooseUs" name="firstWhyChooseUs" rows="2" cols="10"></textarea>
				<br> <br>
				<%
				}
				%>

				<%
				if (updateAboutPageContentModel.getSecondWhyChooseUs() != null) {
				%>
				<h4>Second Why Choose Us Specialization</h4>
				<textarea placeholder="Second Why Choose Us Specialization"
					id="secondWhyChooseUs" name="secondWhyChooseUs" rows="2" cols="10"><%=updateAboutPageContentModel.getSecondWhyChooseUs()%></textarea>
				<br> <br>
				<%
				} else {
				%><h4>Second Why Choose Us Specialization</h4>
				<textarea placeholder="Second Why Choose Us Specialization"
					id="secondWhyChooseUs" name="secondWhyChooseUs" rows="2" cols="10"></textarea>
				<br> <br>
				<%
				}
				%>


				<%
				if (updateAboutPageContentModel.getThirdWhyChooseUs() != null) {
				%>
				<h4>Third Why Choose Us Specialization</h4>
				<textarea placeholder="Third Why Choose Us Specialization"
					id="thirdWhyChooseUs" name="thirdWhyChooseUs" rows="2" cols="10"><%=updateAboutPageContentModel.getThirdWhyChooseUs()%></textarea>
				<br> <br>
				<%
				} else {
				%><h4>Third Why Choose Us Specialization</h4>
				<textarea placeholder="Third Why Choose Us Specialization"
					id="thirdWhyChooseUs" name="thirdWhyChooseUs" rows="2" cols="10"></textarea>
				<br> <br>
				<%
				}
				%>

				<%
				if (updateAboutPageContentModel.getFourthWhyChooseUs() != null) {
				%>
				<h4>Fourth Why Choose Us Specialization</h4>
				<textarea placeholder="Fourth Why Choose Us Specialization"
					id="fourthWhyChooseUs" name="fourthWhyChooseUs" rows="2" cols="10"><%=updateAboutPageContentModel.getFourthWhyChooseUs()%></textarea>
				<br> <br>
				<%
				} else {
				%><h4>Fourth Why Choose Us Specialization</h4>
				<textarea placeholder="Fourth Why Choose Us Specialization"
					id="fourthWhyChooseUs" name="fourthWhyChooseUs" rows="2" cols="10"></textarea>
				<br> <br>
				<%
				}
				%>

				<%
				if (updateAboutPageContentModel.getFifthWhyChooseUs() != null) {
				%>
				<h4>Fifth Why Choose Us Specialization</h4>
				<textarea placeholder="Fifth Why Choose Us Specialization"
					id="fifthWhyChooseUs" name="fifthWhyChooseUs" rows="2" cols="10"><%=updateAboutPageContentModel.getFifthWhyChooseUs()%></textarea>
				<br> <br>
				<%
				} else {
				%><h4>Fifth Why Choose Us Specialization</h4>
				<textarea placeholder="Fifth Why Choose Us Specialization"
					id="fifthWhyChooseUs" name="fifthWhyChooseUs" rows="2" cols="10"></textarea>
				<br> <br>
				<%
				}
				%>

				<h4 style="color: red;">Note :- Before making changes, check
					the content again carefully, otherwise once the changes are made,
					the previous content will not be restored. This will be considered
					the mistake of the admin not the developer.</h4>
				<br>

				<div class="field">
					<input type="submit" id="refresh" name="refresh"
						value="Update Content" onclick="autoRefresh()"
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