package com.RSCM.repositories;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.stereotype.Repository;

import com.RSCM.models.UpdateAboutPageContentModel;

@Repository
public interface AboutPageRepository extends JpaRepository<UpdateAboutPageContentModel, Integer> {

	@Query(value = "SELECT * FROM update_about_page_content_model", nativeQuery = true)
	public UpdateAboutPageContentModel GetUpdatedAboutPageData();
}
