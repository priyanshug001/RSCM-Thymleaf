package com.RSCM.models;

import java.time.LocalDateTime;

import jakarta.persistence.Entity;
import jakarta.persistence.GeneratedValue;
import jakarta.persistence.GenerationType;
import jakarta.persistence.Id;
import jakarta.persistence.SequenceGenerator;

@Entity
public class AdminLoginModel {

	@Id
	String DataUpdationDate = LocalDateTime.now().toString();

	String AdminLoginId, username, password, fullName;

	public AdminLoginModel() {
		super();
		// TODO Auto-generated constructor stub
	}

	public AdminLoginModel(String adminLoginId, String dataUpdationDate, String username, String password,
			String fullName) {
		super();
		AdminLoginId = adminLoginId;
		DataUpdationDate = dataUpdationDate;
		this.username = username;
		this.password = password;
		this.fullName = fullName;
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

	public String getUsername() {
		return username;
	}

	public void setUsername(String username) {
		this.username = username;
	}

	public String getPassword() {
		return password;
	}

	public void setPassword(String password) {
		this.password = password;
	}

	public String getFullName() {
		return fullName;
	}

	public void setFullName(String fullName) {
		this.fullName = fullName;
	}

	@Override
	public String toString() {
		return "AdminLoginModel [AdminLoginId=" + AdminLoginId + ", DataUpdationDate=" + DataUpdationDate
				+ ", username=" + username + ", password=" + password + ", fullName=" + fullName + "]";
	}

}
