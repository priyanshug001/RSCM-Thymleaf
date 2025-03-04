package com.RSCM.models;

import java.time.LocalDateTime;
import java.util.Arrays;

import jakarta.persistence.Entity;
import jakarta.persistence.GeneratedValue;
import jakarta.persistence.GenerationType;
import jakarta.persistence.Id;
import jakarta.persistence.Lob;
import jakarta.persistence.SequenceGenerator;

@Entity
@SequenceGenerator(name = "seqgenNew", sequenceName = "seqgenNew", initialValue = 1001)
public class RecruitmentModel {
	@Id
	@GeneratedValue(strategy = GenerationType.AUTO, generator = "seqgenNew")
	int DataId;

	String DataUpdationDate = LocalDateTime.now().toString();

	String FullName, Email, MobileNo, DOB, Address, City, District, State, DomainName;

	private String FileName, FileType;

	@Lob
	private byte[] data;

	public RecruitmentModel() {
		super();
		// TODO Auto-generated constructor stub
	}

	public RecruitmentModel(int dataId, String dataUpdationDate, String fullName, String email, String mobileNo,
			String dOB, String address, String city, String district, String state, String domainName, String fileName,
			String fileType, byte[] data) {
		super();
		DataId = dataId;
		DataUpdationDate = dataUpdationDate;
		FullName = fullName;
		Email = email;
		MobileNo = mobileNo;
		DOB = dOB;
		Address = address;
		City = city;
		District = district;
		State = state;
		DomainName = domainName;
		FileName = fileName;
		FileType = fileType;
		this.data = data;
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

	public String getFullName() {
		return FullName;
	}

	public void setFullName(String fullName) {
		FullName = fullName;
	}

	public String getEmail() {
		return Email;
	}

	public void setEmail(String email) {
		Email = email;
	}

	public String getMobileNo() {
		return MobileNo;
	}

	public void setMobileNo(String mobileNo) {
		MobileNo = mobileNo;
	}

	public String getDOB() {
		return DOB;
	}

	public void setDOB(String dOB) {
		DOB = dOB;
	}

	public String getAddress() {
		return Address;
	}

	public void setAddress(String address) {
		Address = address;
	}

	public String getCity() {
		return City;
	}

	public void setCity(String city) {
		City = city;
	}

	public String getDistrict() {
		return District;
	}

	public void setDistrict(String district) {
		District = district;
	}

	public String getState() {
		return State;
	}

	public void setState(String state) {
		State = state;
	}

	public String getDomainName() {
		return DomainName;
	}

	public void setDomainName(String domainName) {
		DomainName = domainName;
	}

	public String getFileName() {
		return FileName;
	}

	public void setFileName(String fileName) {
		FileName = fileName;
	}

	public String getFileType() {
		return FileType;
	}

	public void setFileType(String fileType) {
		FileType = fileType;
	}

	public byte[] getData() {
		return data;
	}

	public void setData(byte[] data) {
		this.data = data;
	}

	@Override
	public String toString() {
		return "RecruitmentModel [DataId=" + DataId + ", DataUpdationDate=" + DataUpdationDate + ", FullName="
				+ FullName + ", Email=" + Email + ", MobileNo=" + MobileNo + ", DOB=" + DOB + ", Address=" + Address
				+ ", City=" + City + ", District=" + District + ", State=" + State + ", DomainName=" + DomainName
				+ ", FileName=" + FileName + ", FileType=" + FileType + ", data=" + Arrays.toString(data) + "]";
	}

}
