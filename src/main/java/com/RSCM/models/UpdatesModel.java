package com.RSCM.models;

import java.time.LocalDate;
import java.time.LocalTime;

import jakarta.persistence.Entity;
import jakarta.persistence.GeneratedValue;
import jakarta.persistence.GenerationType;
import jakarta.persistence.Id;
import jakarta.persistence.SequenceGenerator;

@Entity
@SequenceGenerator(name = "seqgen5", sequenceName = "seqgen5", initialValue = 1001)
public class UpdatesModel {

	@Id
	@GeneratedValue(strategy = GenerationType.AUTO, generator = "seqgen5")
	int UpdatesId;

	String localTime = LocalTime.now().toString();

	String localDate = LocalDate.now().toString();

	String UpdatesCategory, UpdatesHeading, UpdatesDescription, FirstBulletPoint, SecondBulletPoint, ThirdBulletPoint,
			FourthBulletPoint, FifthBulletPoint, SixthBulletPoint, SeventhBulletPoint, EighthBulletPoint,
			NinthBulletPoint, TenthBulletPoint;

	public UpdatesModel() {
		super();
		// TODO Auto-generated constructor stub
	}

	public UpdatesModel(int updatesId, String localTime, String localDate, String updatesCategory,
			String updatesHeading, String updatesDescription, String firstBulletPoint, String secondBulletPoint,
			String thirdBulletPoint, String fourthBulletPoint, String fifthBulletPoint, String sixthBulletPoint,
			String seventhBulletPoint, String eighthBulletPoint, String ninthBulletPoint, String tenthBulletPoint) {
		super();
		UpdatesId = updatesId;
		this.localTime = localTime;
		this.localDate = localDate;
		UpdatesCategory = updatesCategory;
		UpdatesHeading = updatesHeading;
		UpdatesDescription = updatesDescription;
		FirstBulletPoint = firstBulletPoint;
		SecondBulletPoint = secondBulletPoint;
		ThirdBulletPoint = thirdBulletPoint;
		FourthBulletPoint = fourthBulletPoint;
		FifthBulletPoint = fifthBulletPoint;
		SixthBulletPoint = sixthBulletPoint;
		SeventhBulletPoint = seventhBulletPoint;
		EighthBulletPoint = eighthBulletPoint;
		NinthBulletPoint = ninthBulletPoint;
		TenthBulletPoint = tenthBulletPoint;
	}

	public int getUpdatesId() {
		return UpdatesId;
	}

	public void setUpdatesId(int updatesId) {
		UpdatesId = updatesId;
	}

	public String getLocalTime() {
		return localTime;
	}

	public void setLocalTime(String localTime) {
		this.localTime = localTime;
	}

	public String getLocalDate() {
		return localDate;
	}

	public void setLocalDate(String localDate) {
		this.localDate = localDate;
	}

	public String getUpdatesCategory() {
		return UpdatesCategory;
	}

	public void setUpdatesCategory(String updatesCategory) {
		UpdatesCategory = updatesCategory;
	}

	public String getUpdatesHeading() {
		return UpdatesHeading;
	}

	public void setUpdatesHeading(String updatesHeading) {
		UpdatesHeading = updatesHeading;
	}

	public String getUpdatesDescription() {
		return UpdatesDescription;
	}

	public void setUpdatesDescription(String updatesDescription) {
		UpdatesDescription = updatesDescription;
	}

	public String getFirstBulletPoint() {
		return FirstBulletPoint;
	}

	public void setFirstBulletPoint(String firstBulletPoint) {
		FirstBulletPoint = firstBulletPoint;
	}

	public String getSecondBulletPoint() {
		return SecondBulletPoint;
	}

	public void setSecondBulletPoint(String secondBulletPoint) {
		SecondBulletPoint = secondBulletPoint;
	}

	public String getThirdBulletPoint() {
		return ThirdBulletPoint;
	}

	public void setThirdBulletPoint(String thirdBulletPoint) {
		ThirdBulletPoint = thirdBulletPoint;
	}

	public String getFourthBulletPoint() {
		return FourthBulletPoint;
	}

	public void setFourthBulletPoint(String fourthBulletPoint) {
		FourthBulletPoint = fourthBulletPoint;
	}

	public String getFifthBulletPoint() {
		return FifthBulletPoint;
	}

	public void setFifthBulletPoint(String fifthBulletPoint) {
		FifthBulletPoint = fifthBulletPoint;
	}

	public String getSixthBulletPoint() {
		return SixthBulletPoint;
	}

	public void setSixthBulletPoint(String sixthBulletPoint) {
		SixthBulletPoint = sixthBulletPoint;
	}

	public String getSeventhBulletPoint() {
		return SeventhBulletPoint;
	}

	public void setSeventhBulletPoint(String seventhBulletPoint) {
		SeventhBulletPoint = seventhBulletPoint;
	}

	public String getEighthBulletPoint() {
		return EighthBulletPoint;
	}

	public void setEighthBulletPoint(String eighthBulletPoint) {
		EighthBulletPoint = eighthBulletPoint;
	}

	public String getNinthBulletPoint() {
		return NinthBulletPoint;
	}

	public void setNinthBulletPoint(String ninthBulletPoint) {
		NinthBulletPoint = ninthBulletPoint;
	}

	public String getTenthBulletPoint() {
		return TenthBulletPoint;
	}

	public void setTenthBulletPoint(String tenthBulletPoint) {
		TenthBulletPoint = tenthBulletPoint;
	}

	@Override
	public String toString() {
		return "UpdatesModel [UpdatesId=" + UpdatesId + ", localTime=" + localTime + ", localDate=" + localDate
				+ ", UpdatesCategory=" + UpdatesCategory + ", UpdatesHeading=" + UpdatesHeading
				+ ", UpdatesDescription=" + UpdatesDescription + ", FirstBulletPoint=" + FirstBulletPoint
				+ ", SecondBulletPoint=" + SecondBulletPoint + ", ThirdBulletPoint=" + ThirdBulletPoint
				+ ", FourthBulletPoint=" + FourthBulletPoint + ", FifthBulletPoint=" + FifthBulletPoint
				+ ", SixthBulletPoint=" + SixthBulletPoint + ", SeventhBulletPoint=" + SeventhBulletPoint
				+ ", EighthBulletPoint=" + EighthBulletPoint + ", NinthBulletPoint=" + NinthBulletPoint
				+ ", TenthBulletPoint=" + TenthBulletPoint + "]";
	}

}
