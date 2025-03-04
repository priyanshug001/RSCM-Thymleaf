package com.RSCM.models;

import java.time.LocalDateTime;

import jakarta.persistence.Entity;
import jakarta.persistence.Id;

@Entity
public class EditIndexPageContentModel {

	@Id
	int DataId = 83908;
	String DataUpdationDate = LocalDateTime.now().toString();

	String CompanyHeading, CompanyIntro, CompanyWelcomeHeading, CompanyShortDescription, IndexServiceHeading,
			FirstServiceHeading, FirstServiceDescription, SecondServiceHeading, SecondServiceDescription,
			ThirdServiceHeading, ThirdServiceDescription, FourthServiceHeading, FourthServiceDescription,
			ContactInfoHeading, CompanyLocation, CompanyContactNo, CompanyEmail, WithUsHeading, WithUsDescription,
			DisplayDemoServicesHeading, DisplayDemoServicesOne, DisplayDemoServicesTwo, DisplayDemoServicesThree,
			InstagramLink, TwitterOrXLink, LinkedinLink, FacebookLink;

	public EditIndexPageContentModel() {
		super();
		// TODO Auto-generated constructor stub
	}

	public EditIndexPageContentModel(int dataId, String dataUpdationDate, String companyHeading, String companyIntro,
			String companyWelcomeHeading, String companyShortDescription, String indexServiceHeading,
			String firstServiceHeading, String firstServiceDescription, String secondServiceHeading,
			String secondServiceDescription, String thirdServiceHeading, String thirdServiceDescription,
			String fourthServiceHeading, String fourthServiceDescription, String contactInfoHeading,
			String companyLocation, String companyContactNo, String companyEmail, String withUsHeading,
			String withUsDescription, String displayDemoServicesHeading, String displayDemoServicesOne,
			String displayDemoServicesTwo, String displayDemoServicesThree, String instagramLink, String twitterOrXLink,
			String linkedinLink, String facebookLink) {
		super();
		DataId = dataId;
		DataUpdationDate = dataUpdationDate;
		CompanyHeading = companyHeading;
		CompanyIntro = companyIntro;
		CompanyWelcomeHeading = companyWelcomeHeading;
		CompanyShortDescription = companyShortDescription;
		IndexServiceHeading = indexServiceHeading;
		FirstServiceHeading = firstServiceHeading;
		FirstServiceDescription = firstServiceDescription;
		SecondServiceHeading = secondServiceHeading;
		SecondServiceDescription = secondServiceDescription;
		ThirdServiceHeading = thirdServiceHeading;
		ThirdServiceDescription = thirdServiceDescription;
		FourthServiceHeading = fourthServiceHeading;
		FourthServiceDescription = fourthServiceDescription;
		ContactInfoHeading = contactInfoHeading;
		CompanyLocation = companyLocation;
		CompanyContactNo = companyContactNo;
		CompanyEmail = companyEmail;
		WithUsHeading = withUsHeading;
		WithUsDescription = withUsDescription;
		DisplayDemoServicesHeading = displayDemoServicesHeading;
		DisplayDemoServicesOne = displayDemoServicesOne;
		DisplayDemoServicesTwo = displayDemoServicesTwo;
		DisplayDemoServicesThree = displayDemoServicesThree;
		InstagramLink = instagramLink;
		TwitterOrXLink = twitterOrXLink;
		LinkedinLink = linkedinLink;
		FacebookLink = facebookLink;
	}

	public int getDataId() {
		return DataId;
	}

	public void setDataId(int dataId) {
		DataId = dataId;
	}

	public String getDataUpdationDate() {
		return DataUpdationDate;
	}

	public void setDataUpdationDate(String dataUpdationDate) {
		DataUpdationDate = dataUpdationDate;
	}

	public String getCompanyHeading() {
		return CompanyHeading;
	}

	public void setCompanyHeading(String companyHeading) {
		CompanyHeading = companyHeading;
	}

	public String getCompanyIntro() {
		return CompanyIntro;
	}

	public void setCompanyIntro(String companyIntro) {
		CompanyIntro = companyIntro;
	}

	public String getCompanyWelcomeHeading() {
		return CompanyWelcomeHeading;
	}

	public void setCompanyWelcomeHeading(String companyWelcomeHeading) {
		CompanyWelcomeHeading = companyWelcomeHeading;
	}

	public String getCompanyShortDescription() {
		return CompanyShortDescription;
	}

	public void setCompanyShortDescription(String companyShortDescription) {
		CompanyShortDescription = companyShortDescription;
	}

	public String getIndexServiceHeading() {
		return IndexServiceHeading;
	}

	public void setIndexServiceHeading(String indexServiceHeading) {
		IndexServiceHeading = indexServiceHeading;
	}

	public String getFirstServiceHeading() {
		return FirstServiceHeading;
	}

	public void setFirstServiceHeading(String firstServiceHeading) {
		FirstServiceHeading = firstServiceHeading;
	}

	public String getFirstServiceDescription() {
		return FirstServiceDescription;
	}

	public void setFirstServiceDescription(String firstServiceDescription) {
		FirstServiceDescription = firstServiceDescription;
	}

	public String getSecondServiceHeading() {
		return SecondServiceHeading;
	}

	public void setSecondServiceHeading(String secondServiceHeading) {
		SecondServiceHeading = secondServiceHeading;
	}

	public String getSecondServiceDescription() {
		return SecondServiceDescription;
	}

	public void setSecondServiceDescription(String secondServiceDescription) {
		SecondServiceDescription = secondServiceDescription;
	}

	public String getThirdServiceHeading() {
		return ThirdServiceHeading;
	}

	public void setThirdServiceHeading(String thirdServiceHeading) {
		ThirdServiceHeading = thirdServiceHeading;
	}

	public String getThirdServiceDescription() {
		return ThirdServiceDescription;
	}

	public void setThirdServiceDescription(String thirdServiceDescription) {
		ThirdServiceDescription = thirdServiceDescription;
	}

	public String getFourthServiceHeading() {
		return FourthServiceHeading;
	}

	public void setFourthServiceHeading(String fourthServiceHeading) {
		FourthServiceHeading = fourthServiceHeading;
	}

	public String getFourthServiceDescription() {
		return FourthServiceDescription;
	}

	public void setFourthServiceDescription(String fourthServiceDescription) {
		FourthServiceDescription = fourthServiceDescription;
	}

	public String getContactInfoHeading() {
		return ContactInfoHeading;
	}

	public void setContactInfoHeading(String contactInfoHeading) {
		ContactInfoHeading = contactInfoHeading;
	}

	public String getCompanyLocation() {
		return CompanyLocation;
	}

	public void setCompanyLocation(String companyLocation) {
		CompanyLocation = companyLocation;
	}

	public String getCompanyContactNo() {
		return CompanyContactNo;
	}

	public void setCompanyContactNo(String companyContactNo) {
		CompanyContactNo = companyContactNo;
	}

	public String getCompanyEmail() {
		return CompanyEmail;
	}

	public void setCompanyEmail(String companyEmail) {
		CompanyEmail = companyEmail;
	}

	public String getWithUsHeading() {
		return WithUsHeading;
	}

	public void setWithUsHeading(String withUsHeading) {
		WithUsHeading = withUsHeading;
	}

	public String getWithUsDescription() {
		return WithUsDescription;
	}

	public void setWithUsDescription(String withUsDescription) {
		WithUsDescription = withUsDescription;
	}

	public String getDisplayDemoServicesHeading() {
		return DisplayDemoServicesHeading;
	}

	public void setDisplayDemoServicesHeading(String displayDemoServicesHeading) {
		DisplayDemoServicesHeading = displayDemoServicesHeading;
	}

	public String getDisplayDemoServicesOne() {
		return DisplayDemoServicesOne;
	}

	public void setDisplayDemoServicesOne(String displayDemoServicesOne) {
		DisplayDemoServicesOne = displayDemoServicesOne;
	}

	public String getDisplayDemoServicesTwo() {
		return DisplayDemoServicesTwo;
	}

	public void setDisplayDemoServicesTwo(String displayDemoServicesTwo) {
		DisplayDemoServicesTwo = displayDemoServicesTwo;
	}

	public String getDisplayDemoServicesThree() {
		return DisplayDemoServicesThree;
	}

	public void setDisplayDemoServicesThree(String displayDemoServicesThree) {
		DisplayDemoServicesThree = displayDemoServicesThree;
	}

	public String getInstagramLink() {
		return InstagramLink;
	}

	public void setInstagramLink(String instagramLink) {
		InstagramLink = instagramLink;
	}

	public String getTwitterOrXLink() {
		return TwitterOrXLink;
	}

	public void setTwitterOrXLink(String twitterOrXLink) {
		TwitterOrXLink = twitterOrXLink;
	}

	public String getLinkedinLink() {
		return LinkedinLink;
	}

	public void setLinkedinLink(String linkedinLink) {
		LinkedinLink = linkedinLink;
	}

	public String getFacebookLink() {
		return FacebookLink;
	}

	public void setFacebookLink(String facebookLink) {
		FacebookLink = facebookLink;
	}

	@Override
	public String toString() {
		return "EditIndexPageContentModel [DataId=" + DataId + ", DataUpdationDate=" + DataUpdationDate
				+ ", CompanyHeading=" + CompanyHeading + ", CompanyIntro=" + CompanyIntro + ", CompanyWelcomeHeading="
				+ CompanyWelcomeHeading + ", CompanyShortDescription=" + CompanyShortDescription
				+ ", IndexServiceHeading=" + IndexServiceHeading + ", FirstServiceHeading=" + FirstServiceHeading
				+ ", FirstServiceDescription=" + FirstServiceDescription + ", SecondServiceHeading="
				+ SecondServiceHeading + ", SecondServiceDescription=" + SecondServiceDescription
				+ ", ThirdServiceHeading=" + ThirdServiceHeading + ", ThirdServiceDescription="
				+ ThirdServiceDescription + ", FourthServiceHeading=" + FourthServiceHeading
				+ ", FourthServiceDescription=" + FourthServiceDescription + ", ContactInfoHeading="
				+ ContactInfoHeading + ", CompanyLocation=" + CompanyLocation + ", CompanyContactNo=" + CompanyContactNo
				+ ", CompanyEmail=" + CompanyEmail + ", WithUsHeading=" + WithUsHeading + ", WithUsDescription="
				+ WithUsDescription + ", DisplayDemoServicesHeading=" + DisplayDemoServicesHeading
				+ ", DisplayDemoServicesOne=" + DisplayDemoServicesOne + ", DisplayDemoServicesTwo="
				+ DisplayDemoServicesTwo + ", DisplayDemoServicesThree=" + DisplayDemoServicesThree + ", InstagramLink="
				+ InstagramLink + ", TwitterOrXLink=" + TwitterOrXLink + ", LinkedinLink=" + LinkedinLink
				+ ", FacebookLink=" + FacebookLink + "]";
	}

}
