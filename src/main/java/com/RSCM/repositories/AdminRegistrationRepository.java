package com.RSCM.repositories;

import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.query.Param;
import org.springframework.stereotype.Repository;

import com.RSCM.models.AdminRegistrationModel;

@Repository
public interface AdminRegistrationRepository extends JpaRepository<AdminRegistrationModel, String> {

	@Query(value = "SELECT full_name FROM admin_registration_model u WHERE u.user_name = :username AND u.password = :password ", nativeQuery = true)
	public String GetAdminFullName(@Param("username") String username, @Param("password") String password);

	@Query(value = "SELECT full_name, mobile_no FROM admin_registration_model u WHERE u.user_name = :username AND u.password = :password ", nativeQuery = true)
	public AdminRegistrationModel GetAdminFullNameAndMobileNo(@Param("username") String username,
			@Param("password") String password);

	@Query(value = "SELECT admin_login_id FROM admin_registration_model u WHERE u.user_name = :username AND u.password = :password ", nativeQuery = true)
	public String GetAdminLoginId(@Param("username") String username, @Param("password") String password);

	@Query(value = "SELECT * FROM admin_registration_model u WHERE u.user_name = :username AND u.password = :password ", nativeQuery = true)
	public AdminRegistrationModel AdminLoginCheck(@Param("username") String username,
			@Param("password") String password);

	@Query(value = "SELECT * FROM admin_registration_model", nativeQuery = true)
	public List<AdminRegistrationModel> GetAdminRegistrationData();
}