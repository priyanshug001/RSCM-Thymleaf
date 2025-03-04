package com.RSCM.repositories;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.stereotype.Repository;

import com.RSCM.models.UpdateCareerPageModel;

@Repository
public interface CareerPageRepository extends JpaRepository<UpdateCareerPageModel, Integer> {

	@Query(value = "SELECT * FROM update_career_page_model", nativeQuery = true)
	public UpdateCareerPageModel GetCareerPageData();
}
