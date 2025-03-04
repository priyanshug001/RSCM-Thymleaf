package com.RSCM.models;

import java.time.LocalDateTime;

import jakarta.persistence.Entity;
import jakarta.persistence.GeneratedValue;
import jakarta.persistence.GenerationType;
import jakarta.persistence.Id;
import jakarta.persistence.SequenceGenerator;

@Entity
public class AdminRegistrationModel {

	@Id
	String AdminLoginId;

	String DataUpdationDate = LocalDateTime.now().toString();

	String FullName, Email, MobileNo, Address, CityOrVillage, District, State, ZipCode, UserName, Password;

	public AdminRegistrationModel() {
		super();
		// TODO Auto-generated constructor stub
	}

	public AdminRegistrationModel(String adminLoginId, String dataUpdationDate, String fullName, String email,
			String mobileNo, String address, String cityOrVillage, String district, String state, String zipCode,
			String userName, String password) {
		super();
		AdminLoginId = adminLoginId;
		DataUpdationDate = dataUpdationDate;
		FullName = fullName;
		Email = email;
		MobileNo = mobileNo;
		Address = address;
		CityOrVillage = cityOrVillage;
		District = district;
		State = state;
		ZipCode = zipCode;
		UserName = userName;
		Password = password;
	}

	public String getAdminLoginId() {
		return AdminLoginId;
	}

	public void setAdminLoginId(String adminLoginId) {
		AdminLoginId = adminLoginId;
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

	public String getAddress() {
		return Address;
	}

	public void setAddress(String address) {
		Address = address;
	}

	public String getCityOrVillage() {
		return CityOrVillage;
	}

	public void setCityOrVillage(String cityOrVillage) {
		CityOrVillage = cityOrVillage;
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

	public String getZipCode() {
		return ZipCode;
	}

	public void setZipCode(String zipCode) {
		ZipCode = zipCode;
	}

	public String getUserName() {
		return UserName;
	}

	public void setUserName(String userName) {
		UserName = userName;
	}

	public String getPassword() {
		return Password;
	}

	public void setPassword(String password) {
		Password = password;
	}

	@Override
	public String toString() {
		return "AdminRegistrationModel [AdminLoginId=" + AdminLoginId + ", DataUpdationDate=" + DataUpdationDate
				+ ", FullName=" + FullName + ", Email=" + Email + ", MobileNo=" + MobileNo + ", Address=" + Address
				+ ", CityOrVillage=" + CityOrVillage + ", District=" + District + ", State=" + State + ", ZipCode="
				+ ZipCode + ", UserName=" + UserName + ", Password=" + Password + "]";
	}

}
