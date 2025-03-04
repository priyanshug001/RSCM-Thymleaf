package com.RSCM.repositories;

import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.query.Param;
import org.springframework.stereotype.Repository;

import com.RSCM.models.AdminLoginModel;

@Repository
public interface AdminLoginRepository extends JpaRepository<AdminLoginModel, String> {

	@Query(value = "SELECT * FROM admin_login_model WHERE username = :username", nativeQuery = true)
	public List<AdminLoginModel> GetSpecificAdminLoginData(@Param("username") String username);

	@Query(value = "SELECT * FROM admin_login_model", nativeQuery = true)
	public List<AdminLoginModel> GetAdminLoginData();
}