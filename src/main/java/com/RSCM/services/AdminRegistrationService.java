package com.RSCM.services;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.RSCM.models.AdminRegistrationModel;
import com.RSCM.repositories.AdminRegistrationRepository;

@Service
public class AdminRegistrationService {

	@Autowired
	AdminRegistrationRepository adminRegistrationRepository;

	public void AdminRegistrationDataSave(AdminRegistrationModel adminRegistrationModel) {
		adminRegistrationRepository.save(adminRegistrationModel);
	}

	public String GetAdminFullName(String username, String password) {
		return adminRegistrationRepository.GetAdminFullName(username, password);
	}

	public AdminRegistrationModel GetAdminFullNameAndMobileNo(String username, String password) {
		return adminRegistrationRepository.GetAdminFullNameAndMobileNo(username, password);
	}

	public String GetAdminLoginId(String username, String password) {
		return adminRegistrationRepository.GetAdminLoginId(username, password);
	}

	public List<AdminRegistrationModel> GetAdminRegistrationData() {
		return adminRegistrationRepository.GetAdminRegistrationData();
	}

	public AdminRegistrationModel AdminLoginCheck(String username, String password) {
		return adminRegistrationRepository.AdminLoginCheck(username, password);
	}

	public void AdminRemove(String AdminLoginId) {
		adminRegistrationRepository.deleteById(AdminLoginId);
	}

	public void DeleteAllAdminRegistrationData() {
		adminRegistrationRepository.deleteAll();
	}
}
