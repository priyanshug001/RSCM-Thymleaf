<%@page import="com.RSCM.models.EditIndexPageContentModel"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="core" uri="http://java.sun.com/jsp/jstl/core"%>
<%
String Username = (String) session.getAttribute("username");
String Fullname = (String) session.getAttribute("Fullname");
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Edit Index Page Content - RSCM</title>
<link rel="stylesheet" href="css/editIndexPageCSS.css">
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

<%
if (Username != null) {
%>

<body>

	<%
	EditIndexPageContentModel editIndexPageContentModel = (EditIndexPageContentModel) request
			.getAttribute("DataForLoadIndexPage");
	%>
	<div class="container">

		<div class="title">Edit Index Page Content</div>

		<div class="content">
			<form action="/editIndexPageContent" method="post">
				<div class="user-details">

					<div class="input-box">
						<span class="details">Company Heading</span>
						<textarea rows="2" cols="100%" placeholder="Company Heading"
							id="cheading" name="cheading"
							style="width: 100%; font-size: 16px; border-radius: 5px;"
							required><%=editIndexPageContentModel.getCompanyHeading()%></textarea>
					</div>

					<div class="input-box">
						<span class="details">Company's Intro</span>
						<textarea id="cintro" name="cintro" rows="2" cols="100%"
							placeholder="Company's Intro (Must be less than 50 words)"
							style="width: 100%; font-size: 16px; border-radius: 5px;"
							required><%=editIndexPageContentModel.getCompanyIntro()%></textarea>
					</div>

					<div class="input-box">
						<span class="details">Company's Welcome Heading</span>
						<textarea rows="2" cols="100%"
							placeholder="Company's Welcome Heading" id="cwheading"
							name="cwheading"
							style="width: 100%; font-size: 16px; border-radius: 5px;"
							required><%=editIndexPageContentModel.getCompanyWelcomeHeading()%>
							</textarea>
					</div>

					<div class="input-box">
						<span class="details">Company's Short Description</span>
						<textarea id="csdescription" name="csdescription" rows="4"
							cols="100%"
							placeholder="Company's Short Description (Must be less than 50 words)"
							style="width: 100%; font-size: 16px; border-radius: 5px;"
							required><%=editIndexPageContentModel.getCompanyShortDescription()%></textarea>
					</div>

					<div class="input-box">
						<span class="details">Index Services Heading</span>
						<textarea rows="2" cols="100%"
							placeholder="Index Services Heading" id="isheading"
							name="isheading"
							style="width: 100%; font-size: 16px; border-radius: 5px;"
							required><%=editIndexPageContentModel.getIndexServiceHeading()%>
							</textarea>
					</div>

					<div class="input-box">
						<span class="details">First Service Heading </span>
						<textarea rows="2" cols="100%"
							placeholder="First Service Heading (like Accounting/Finance/Gst etc...)"
							id="fsheading" name="fsheading"
							style="width: 100%; font-size: 16px; border-radius: 5px;"
							required><%=editIndexPageContentModel.getFirstServiceHeading()%>
							</textarea>
					</div>

					<div class="input-box">
						<span class="details">First Service Description</span>
						<textarea id="fsdescription" name="fsdescription" rows="4"
							cols="100%"
							placeholder="First Service Description (Must be less than 20 words)"
							style="width: 100%; font-size: 16px; border-radius: 5px;"
							required><%=editIndexPageContentModel.getFirstServiceDescription()%></textarea>
					</div>

					<div class="input-box">
						<span class="details">Second Service Heading </span>
						<textarea rows="2" cols="100%"
							placeholder="Second Service Heading (like Accounting/Finance/Gst etc...)"
							id="ssheading" name="ssheading"
							style="width: 100%; font-size: 16px; border-radius: 5px;"
							required><%=editIndexPageContentModel.getSecondServiceHeading()%>
							</textarea>
					</div>

					<div class="input-box">
						<span class="details">Second Service Description</span>
						<textarea id="ssdescription" name="ssdescription" rows="4"
							cols="100%"
							placeholder="Second Service Description (Must be less than 20 words)"
							style="width: 100%; font-size: 16px; border-radius: 5px;"
							required><%=editIndexPageContentModel.getSecondServiceDescription()%></textarea>
					</div>

					<div class="input-box">
						<span class="details">Third Service Heading </span>
						<textarea rows="2" cols="100%"
							placeholder="Third Service Heading (like Accounting/Finance/Gst etc...)"
							id="tsheading" name="tsheading"
							style="width: 100%; font-size: 16px; border-radius: 5px;"
							required><%=editIndexPageContentModel.getThirdServiceHeading()%>
							</textarea>
					</div>

					<div class="input-box">
						<span class="details">Third Service Description</span>
						<textarea id="tsdescription" name="tsdescription" rows="4"
							cols="100%"
							placeholder="Third Service Description (Must be less than 20 words)"
							style="width: 100%; font-size: 16px; border-radius: 5px;"
							required><%=editIndexPageContentModel.getThirdServiceDescription()%></textarea>
					</div>

					<div class="input-box">
						<span class="details">Fourth Service Heading </span>
						<textarea rows="2" cols="100%"
							placeholder="Fourth Service Heading (like Accounting/Finance/Gst etc...)"
							id="fosheading" name="fosheading"
							style="width: 100%; font-size: 16px; border-radius: 5px;"
							required><%=editIndexPageContentModel.getFourthServiceHeading()%>
							</textarea>
					</div>

					<div class="input-box">
						<span class="details">Fourth Service Description</span>
						<textarea id="fosdescription" name="fosdescription" rows="4"
							cols="100%"
							placeholder="Fourth Service Description (Must be less than 20 words)"
							style="width: 100%; font-size: 16px; border-radius: 5px;"
							required><%=editIndexPageContentModel.getFourthServiceDescription()%></textarea>
					</div>

					<div class="input-box">
						<span class="details">Contact Info. About Company Heading </span>
						<textarea rows="2" cols="100%"
							placeholder="You Can Write About Company as Heading or You Can Write Company Name"
							id="aboutcompany" name="aboutcompany"
							style="width: 100%; font-size: 16px; border-radius: 5px;"
							required><%=editIndexPageContentModel.getContactInfoHeading()%>
							</textarea>

					</div>

					<div class="input-box">
						<span class="details">Company's Location </span>
						<textarea rows="2" cols="100%" placeholder="Company's Location"
							id="clocation" name="clocation"
							style="width: 100%; font-size: 16px; border-radius: 5px;"
							required><%=editIndexPageContentModel.getCompanyLocation()%>
							</textarea>




					</div>

					<div class="input-box">
						<span class="details">Company's Contact No. </span> <input
							type="number" placeholder="Company's Contact No." id="ccontact"
							name="ccontact"
							value=<%=editIndexPageContentModel.getCompanyContactNo()%>
							required>
					</div>

					<div class="input-box">
						<span class="details">Company's E-mail </span> <input type="email"
							placeholder="Company's E-mail" id="cemail" name="cemail"
							value=<%=editIndexPageContentModel.getCompanyEmail()%> required>
					</div>

					<div class="input-box">
						<span class="details">With Us or Company Heading</span>
						<textarea rows="2" cols="100%"
							placeholder="With Us or Company Heading (like WITH US)"
							id="withusheading" name="withusheading"
							style="width: 100%; font-size: 16px; border-radius: 5px;"
							required><%=editIndexPageContentModel.getWithUsHeading()%> </textarea>
					</div>

					<div class="input-box">
						<span class="details">With Us or Company Description</span>
						<textarea id="withusdescription" name="withusdescription" rows="4"
							cols="100%"
							placeholder="With Us or Company Description (Must be less than 10 words)"
							style="width: 100%; font-size: 16px; border-radius: 5px;"
							required><%=editIndexPageContentModel.getWithUsDescription()%></textarea>
					</div>

					<div class="input-box">
						<span class="details">Display Demo Services Heading</span>
						<textarea rows="2" cols="100%"
							placeholder="Display Demo Services Heading" id="ddsheading"
							name="ddsheading"
							style="width: 100%; font-size: 16px; border-radius: 5px;"
							required><%=editIndexPageContentModel.getDisplayDemoServicesHeading()%>
							</textarea>

					</div>

					<div class="input-box">
						<span class="details">Display Demo Services One</span>
						<textarea rows="2" cols="100%"
							placeholder="Display Demo Services One (like  Accounting, Finance, GST, etc..)"
							id="ddsone" name="ddsone"
							style="width: 100%; font-size: 16px; border-radius: 5px;"
							required><%=editIndexPageContentModel.getDisplayDemoServicesOne()%>
							</textarea>

					</div>

					<div class="input-box">
						<span class="details">Display Demo Services Two</span>
						<textarea rows="2" cols="100%"
							placeholder="Display Demo Services Two (like  Accounting, Finance, GST, etc..)"
							id="ddstwo" name="ddstwo"
							style="width: 100%; font-size: 16px; border-radius: 5px;"
							required><%=editIndexPageContentModel.getDisplayDemoServicesTwo()%>
							</textarea>
					</div>

					<div class="input-box">
						<span class="details">Display Demo Services Three</span>
						<textarea rows="2" cols="100%"
							placeholder="Display Demo Services Three (like  Accounting, Finance, GST, etc..)"
							id="ddsthree" name="ddsthree"
							style="width: 100%; font-size: 16px; border-radius: 5px;"
							required><%=editIndexPageContentModel.getDisplayDemoServicesThree()%>
							</textarea>
					</div>
					<br> <br> <br> <br> <br>
					<center>
						<h3>You Can Add Company's Social Media Links</h3>
					</center>
					<br> <br>

					<%
					if (editIndexPageContentModel.getInstagramLink() != null) {
					%>
					<div class="input-box">
						<span class="details">Instagram Link</span>
						<textarea rows="2" cols="100%" placeholder="Instagram Link"
							id="instagramLink" name="instagramLink"
							style="width: 100%; font-size: 16px; border-radius: 5px;"><%=editIndexPageContentModel.getInstagramLink()%></textarea>
					</div>
					<%
					} else {
					%>
					<div class="input-box">
						<span class="details">Instagram Link</span>
						<textarea rows="2" cols="100%" placeholder="Instagram Link"
							id="instagramLink" name="instagramLink"
							style="width: 100%; font-size: 16px; border-radius: 5px;"></textarea>
					</div>
					<%
					}
					%>

					<%
					if (editIndexPageContentModel.getFacebookLink() != null) {
					%>
					<div class="input-box">
						<span class="details">Facebook Link</span>
						<textarea rows="2" cols="100%" placeholder="Facebook Link"
							id="facebookLink" name="facebookLink"
							style="width: 100%; font-size: 16px; border-radius: 5px;"><%=editIndexPageContentModel.getFacebookLink()%></textarea>
					</div>
					<%
					} else {
					%>
					<div class="input-box">
						<span class="details">Facebook Link</span>
						<textarea rows="2" cols="100%" placeholder="Facebook Link"
							id="facebookLink" name="facebookLink"
							style="width: 100%; font-size: 16px; border-radius: 5px;"></textarea>
					</div>
					<%
					}
					%>

					<%
					if (editIndexPageContentModel.getTwitterOrXLink() != null) {
					%>
					<div class="input-box">
						<span class="details">Twitter Or X Link</span>
						<textarea rows="2" cols="100%" placeholder="Twitter Or X Link"
							id="twitterOrXLink" name="twitterOrXLink"
							style="width: 100%; font-size: 16px; border-radius: 5px;"><%=editIndexPageContentModel.getTwitterOrXLink()%></textarea>
					</div>
					<%
					} else {
					%>
					<div class="input-box">
						<span class="details">Twitter Or X Link</span>
						<textarea rows="2" cols="100%" placeholder="Twitter Or X Link"
							id="twitterOrXLink" name="twitterOrXLink"
							style="width: 100%; font-size: 16px; border-radius: 5px;"></textarea>
					</div>
					<%
					}
					%>

					<%
					if (editIndexPageContentModel.getLinkedinLink() != null) {
					%>
					<div class="input-box">
						<span class="details">Linkedin Link</span>
						<textarea rows="2" cols="100%" placeholder="Linkedin Link"
							id="linkedinLink" name="linkedinLink"
							style="width: 100%; font-size: 16px; border-radius: 5px;"><%=editIndexPageContentModel.getLinkedinLink()%></textarea>
					</div>
					<%
					} else {
					%>
					<div class="input-box">
						<span class="details">Linkedin Link</span>
						<textarea rows="2" cols="100%" placeholder="Linkedin Link"
							id="linkedinLink" name="linkedinLink"
							style="width: 100%; font-size: 16px; border-radius: 5px;"></textarea>
					</div>
					<%
					}
					%>

					<h4 style="color: red;">Note :- Before making changes, check
						the content again carefully, otherwise once the changes are made,
						the previous content will not be restored. This will be considered
						the mistake of the admin not the developer.</h4>
				</div>
				<div class="button">
					<input type="submit" id="refresh" name="refresh"
						value="Save Changes" onclick="autoRefresh()">
				</div>
			</form>
		</div>
	</div>
</body>
<%
} else {
response.sendRedirect("adminPage");
}
%>
<!--<script> 
// window.location = window.location.href; //
setInterval('autoRefresh()', 200);
</script> -->
<%

%>
</html>