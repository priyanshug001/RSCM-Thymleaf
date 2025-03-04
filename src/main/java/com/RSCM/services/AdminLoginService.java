package com.RSCM.services;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.RSCM.models.AdminLoginModel;
import com.RSCM.repositories.AdminLoginRepository;

@Service
public class AdminLoginService {

	@Autowired
	AdminLoginRepository adminLoginRepository;

	public void AdminLoginDataSave(AdminLoginModel adminLoginModel) {
		adminLoginRepository.save(adminLoginModel);
	}

	public List<AdminLoginModel> GetSpecificAdminLoginData(String username) {
		return adminLoginRepository.GetSpecificAdminLoginData(username);
	}

	public List<AdminLoginModel> GetAdminLoginData() {
		return adminLoginRepository.GetAdminLoginData();
	}

//	public void AdminLoginRemove(String AdminLoginId) {
//		adminLoginRepository.deleteById(AdminLoginId);
//	}

	public void DeleteAllAdminLoginData() {
		adminLoginRepository.deleteAll();
	}
}
