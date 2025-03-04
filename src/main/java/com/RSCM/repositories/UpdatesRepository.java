package com.RSCM.repositories;

import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.query.Param;
import org.springframework.stereotype.Repository;

import com.RSCM.models.UpdatesModel;

@Repository
public interface UpdatesRepository extends JpaRepository<UpdatesModel, Integer> {

	@Query(value = "SELECT * FROM updates_model WHERE updates_id = :updatesId", nativeQuery = true)
	public UpdatesModel GetUpdatesDataById(@Param("updatesId") int updatesId);

	@Query(value = "SELECT service_heading FROM update_services_model", nativeQuery = true)
	public List<UpdatesModel> GetUpdatesCategoryData();

	@Query(value = "SELECT * FROM updates_model ORDER BY local_date DESC", nativeQuery = true)
	public List<UpdatesModel> GetAllUpdatesData();
}
