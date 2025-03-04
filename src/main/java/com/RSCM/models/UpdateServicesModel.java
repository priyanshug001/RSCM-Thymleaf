package com.RSCM.models;

import java.time.LocalDateTime;

import jakarta.persistence.Entity;
import jakarta.persistence.GeneratedValue;
import jakarta.persistence.GenerationType;
import jakarta.persistence.Id;
import jakarta.persistence.SequenceGenerator;

@Entity
@SequenceGenerator(name = "seqgen", sequenceName = "seqgen", initialValue = 1001)
public class UpdateServicesModel {

	@Id
	@GeneratedValue(strategy = GenerationType.AUTO, generator = "seqgen")
	int DataId;
	
	String DataUpdationDate = LocalDateTime.now().toString();

	String ServiceHeading, ServiceDescription, ServiceSpecializationFirst, ServiceSpecializationSecond,
			ServiceSpecializationThird, ServiceSpecializationFourth, ServiceSpecializationFifth;

	public UpdateServicesModel() {
		super();
		// TODO Auto-generated constructor stub
	}

	public UpdateServicesModel(int dataId, String dataUpdationDate, String serviceHeading, String serviceDescription,
			String serviceSpecializationFirst, String serviceSpecializationSecond, String serviceSpecializationThird,
			String serviceSpecializationFourth, String serviceSpecializationFifth) {
		super();
		DataId = dataId;
		DataUpdationDate = dataUpdationDate;
		ServiceHeading = serviceHeading;
		ServiceDescription = serviceDescription;
		ServiceSpecializationFirst = serviceSpecializationFirst;
		ServiceSpecializationSecond = serviceSpecializationSecond;
		ServiceSpecializationThird = serviceSpecializationThird;
		ServiceSpecializationFourth = serviceSpecializationFourth;
		ServiceSpecializationFifth = serviceSpecializationFifth;
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

	public String getServiceHeading() {
		return ServiceHeading;
	}

	public void setServiceHeading(String serviceHeading) {
		ServiceHeading = serviceHeading;
	}

	public String getServiceDescription() {
		return ServiceDescription;
	}

	public void setServiceDescription(String serviceDescription) {
		ServiceDescription = serviceDescription;
	}

	public String getServiceSpecializationFirst() {
		return ServiceSpecializationFirst;
	}

	public void setServiceSpecializationFirst(String serviceSpecializationFirst) {
		ServiceSpecializationFirst = serviceSpecializationFirst;
	}

	public String getServiceSpecializationSecond() {
		return ServiceSpecializationSecond;
	}

	public void setServiceSpecializationSecond(String serviceSpecializationSecond) {
		ServiceSpecializationSecond = serviceSpecializationSecond;
	}

	public String getServiceSpecializationThird() {
		return ServiceSpecializationThird;
	}

	public void setServiceSpecializationThird(String serviceSpecializationThird) {
		ServiceSpecializationThird = serviceSpecializationThird;
	}

	public String getServiceSpecializationFourth() {
		return ServiceSpecializationFourth;
	}

	public void setServiceSpecializationFourth(String serviceSpecializationFourth) {
		ServiceSpecializationFourth = serviceSpecializationFourth;
	}

	public String getServiceSpecializationFifth() {
		return ServiceSpecializationFifth;
	}

	public void setServiceSpecializationFifth(String serviceSpecializationFifth) {
		ServiceSpecializationFifth = serviceSpecializationFifth;
	}

	@Override
	public String toString() {
		return "UpdateServicesModel [DataId=" + DataId + ", DataUpdationDate=" + DataUpdationDate + ", ServiceHeading="
				+ ServiceHeading + ", ServiceDescription=" + ServiceDescription + ", ServiceSpecializationFirst="
				+ ServiceSpecializationFirst + ", ServiceSpecializationSecond=" + ServiceSpecializationSecond
				+ ", ServiceSpecializationThird=" + ServiceSpecializationThird + ", ServiceSpecializationFourth="
				+ ServiceSpecializationFourth + ", ServiceSpecializationFifth=" + ServiceSpecializationFifth + "]";
	}
}