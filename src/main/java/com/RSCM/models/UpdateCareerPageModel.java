package com.RSCM.models;

import java.time.LocalDateTime;

import jakarta.persistence.Entity;
import jakarta.persistence.Id;

@Entity
public class UpdateCareerPageModel {

	@Id
	int Id = 83908;

	String DataUpdationDate = LocalDateTime.now().toString();
	String careerDescription, firstRecruitment, secondRecruitment, thirdRecruitment, fourthRecruitment,
			fifthRecruitment;

	public UpdateCareerPageModel() {
		super();
		// TODO Auto-generated constructor stub
	}

	public UpdateCareerPageModel(int id, String dataUpdationDate, String careerDescription, String firstRecruitment,
			String secondRecruitment, String thirdRecruitment, String fourthRecruitment, String fifthRecruitment) {
		super();
		Id = id;
		DataUpdationDate = dataUpdationDate;
		this.careerDescription = careerDescription;
		this.firstRecruitment = firstRecruitment;
		this.secondRecruitment = secondRecruitment;
		this.thirdRecruitment = thirdRecruitment;
		this.fourthRecruitment = fourthRecruitment;
		this.fifthRecruitment = fifthRecruitment;
	}

	public int getId() {
		return Id;
	}

	public void setId(int id) {
		Id = id;
	}

	public String getDataUpdationDate() {
		return DataUpdationDate;
	}

	public void setDataUpdationDate(String dataUpdationDate) {
		DataUpdationDate = dataUpdationDate;
	}

	public String getCareerDescription() {
		return careerDescription;
	}

	public void setCareerDescription(String careerDescription) {
		this.careerDescription = careerDescription;
	}

	public String getFirstRecruitment() {
		return firstRecruitment;
	}

	public void setFirstRecruitment(String firstRecruitment) {
		this.firstRecruitment = firstRecruitment;
	}

	public String getSecondRecruitment() {
		return secondRecruitment;
	}

	public void setSecondRecruitment(String secondRecruitment) {
		this.secondRecruitment = secondRecruitment;
	}

	public String getThirdRecruitment() {
		return thirdRecruitment;
	}

	public void setThirdRecruitment(String thirdRecruitment) {
		this.thirdRecruitment = thirdRecruitment;
	}

	public String getFourthRecruitment() {
		return fourthRecruitment;
	}

	public void setFourthRecruitment(String fourthRecruitment) {
		this.fourthRecruitment = fourthRecruitment;
	}

	public String getFifthRecruitment() {
		return fifthRecruitment;
	}

	public void setFifthRecruitment(String fifthRecruitment) {
		this.fifthRecruitment = fifthRecruitment;
	}

	@Override
	public String toString() {
		return "UpdateCareerPageModel [Id=" + Id + ", DataUpdationDate=" + DataUpdationDate + ", careerDescription="
				+ careerDescription + ", firstRecruitment=" + firstRecruitment + ", secondRecruitment="
				+ secondRecruitment + ", thirdRecruitment=" + thirdRecruitment + ", fourthRecruitment="
				+ fourthRecruitment + ", fifthRecruitment=" + fifthRecruitment + "]";
	}

}
