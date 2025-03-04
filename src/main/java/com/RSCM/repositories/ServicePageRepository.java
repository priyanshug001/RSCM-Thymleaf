package com.RSCM.repositories;

import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.query.Param;
import org.springframework.stereotype.Repository;
import com.RSCM.models.UpdateServicesModel;

@Repository
public interface ServicePageRepository extends JpaRepository<UpdateServicesModel, Integer> {

	@Query(value = "SELECT * FROM update_services_model ORDER BY service_heading ASC;", nativeQuery = true)
	public List<UpdateServicesModel> GetUpdatedServiceData();

	@Query(value = "SELECT * FROM update_services_model u WHERE u.service_heading = :ServiceHeading", nativeQuery = true)
	public UpdateServicesModel GetSpecificUpdatedServiceData(@Param("ServiceHeading") String ServiceHeading);
}
