package com.RSCM.models;

import java.time.LocalDateTime;

import jakarta.persistence.Entity;
import jakarta.persistence.Id;

@Entity
public class UpdateAboutPageContentModel {

	@Id
	int Id = 81200;

	String UpdateDate = LocalDateTime.now().toString();;

	String AboutUs, OurMission, OurVision, WhoWeAre, WhatWeDO, FirstWhyChooseUs, SecondWhyChooseUs, ThirdWhyChooseUs,
			FourthWhyChooseUs, FifthWhyChooseUs;

	public UpdateAboutPageContentModel() {
		super();
		// TODO Auto-generated constructor stub
	}

	public UpdateAboutPageContentModel(int id, String updateDate, String aboutUs, String ourMission, String ourVision,
			String whoWeAre, String whatWeDO, String firstWhyChooseUs, String secondWhyChooseUs,
			String thirdWhyChooseUs, String fourthWhyChooseUs, String fifthWhyChooseUs) {
		super();
		Id = id;
		UpdateDate = updateDate;
		AboutUs = aboutUs;
		OurMission = ourMission;
		OurVision = ourVision;
		WhoWeAre = whoWeAre;
		WhatWeDO = whatWeDO;
		FirstWhyChooseUs = firstWhyChooseUs;
		SecondWhyChooseUs = secondWhyChooseUs;
		ThirdWhyChooseUs = thirdWhyChooseUs;
		FourthWhyChooseUs = fourthWhyChooseUs;
		FifthWhyChooseUs = fifthWhyChooseUs;
	}

	public int getId() {
		return Id;
	}

	public void setId(int id) {
		Id = id;
	}

	public String getUpdateDate() {
		return UpdateDate;
	}

	public void setUpdateDate(String updateDate) {
		UpdateDate = updateDate;
	}

	public String getAboutUs() {
		return AboutUs;
	}

	public void setAboutUs(String aboutUs) {
		AboutUs = aboutUs;
	}

	public String getOurMission() {
		return OurMission;
	}

	public void setOurMission(String ourMission) {
		OurMission = ourMission;
	}

	public String getOurVision() {
		return OurVision;
	}

	public void setOurVision(String ourVision) {
		OurVision = ourVision;
	}

	public String getWhoWeAre() {
		return WhoWeAre;
	}

	public void setWhoWeAre(String whoWeAre) {
		WhoWeAre = whoWeAre;
	}

	public String getWhatWeDO() {
		return WhatWeDO;
	}

	public void setWhatWeDO(String whatWeDO) {
		WhatWeDO = whatWeDO;
	}

	public String getFirstWhyChooseUs() {
		return FirstWhyChooseUs;
	}

	public void setFirstWhyChooseUs(String firstWhyChooseUs) {
		FirstWhyChooseUs = firstWhyChooseUs;
	}

	public String getSecondWhyChooseUs() {
		return SecondWhyChooseUs;
	}

	public void setSecondWhyChooseUs(String secondWhyChooseUs) {
		SecondWhyChooseUs = secondWhyChooseUs;
	}

	public String getThirdWhyChooseUs() {
		return ThirdWhyChooseUs;
	}

	public void setThirdWhyChooseUs(String thirdWhyChooseUs) {
		ThirdWhyChooseUs = thirdWhyChooseUs;
	}

	public String getFourthWhyChooseUs() {
		return FourthWhyChooseUs;
	}

	public void setFourthWhyChooseUs(String fourthWhyChooseUs) {
		FourthWhyChooseUs = fourthWhyChooseUs;
	}

	public String getFifthWhyChooseUs() {
		return FifthWhyChooseUs;
	}

	public void setFifthWhyChooseUs(String fifthWhyChooseUs) {
		FifthWhyChooseUs = fifthWhyChooseUs;
	}

	@Override
	public String toString() {
		return "UpdateAboutPageContentModel [Id=" + Id + ", UpdateDate=" + UpdateDate + ", AboutUs=" + AboutUs
				+ ", OurMission=" + OurMission + ", OurVision=" + OurVision + ", WhoWeAre=" + WhoWeAre + ", WhatWeDO="
				+ WhatWeDO + ", FirstWhyChooseUs=" + FirstWhyChooseUs + ", SecondWhyChooseUs=" + SecondWhyChooseUs
				+ ", ThirdWhyChooseUs=" + ThirdWhyChooseUs + ", FourthWhyChooseUs=" + FourthWhyChooseUs
				+ ", FifthWhyChooseUs=" + FifthWhyChooseUs + "]";
	}

}
