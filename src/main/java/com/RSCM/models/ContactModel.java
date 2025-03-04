package com.RSCM.models;

import java.time.LocalDateTime;

import jakarta.persistence.Entity;
import jakarta.persistence.GeneratedValue;
import jakarta.persistence.GenerationType;
import jakarta.persistence.Id;
import jakarta.persistence.SequenceGenerator;

@Entity
@SequenceGenerator(name = "seqgen4", sequenceName = "seqgen4", initialValue = 1001)
public class ContactModel {

	@Id
	@GeneratedValue(strategy = GenerationType.AUTO, generator = "seqgen4")
	int Id;

	String DataUpdationDate = LocalDateTime.now().toString();

	String Fullname, MobileNo, Email, Query;

	public ContactModel() {
		super();
		// TODO Auto-generated constructor stub
	}

	public ContactModel(int id, String dataUpdationDate, String fullname, String mobileNo, String email, String query) {
		super();
		Id = id;
		DataUpdationDate = dataUpdationDate;
		Fullname = fullname;
		MobileNo = mobileNo;
		Email = email;
		Query = query;
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

	public String getFullname() {
		return Fullname;
	}

	public void setFullname(String fullname) {
		Fullname = fullname;
	}

	public String getMobileNo() {
		return MobileNo;
	}

	public void setMobileNo(String mobileNo) {
		MobileNo = mobileNo;
	}

	public String getEmail() {
		return Email;
	}

	public void setEmail(String email) {
		Email = email;
	}

	public String getQuery() {
		return Query;
	}

	public void setQuery(String query) {
		Query = query;
	}

	@Override
	public String toString() {
		return "ContactModel [Id=" + Id + ", DataUpdationDate=" + DataUpdationDate + ", Fullname=" + Fullname
				+ ", MobileNo=" + MobileNo + ", Email=" + Email + ", Query=" + Query + "]";
	}

}