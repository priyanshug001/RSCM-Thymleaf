package com.RSCM.repositories;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.stereotype.Repository;

import com.RSCM.models.EditIndexPageContentModel;

@Repository
public interface EditIndexPageRepository extends JpaRepository<EditIndexPageContentModel, Integer> {

	@Query(value = "SELECT * FROM edit_index_page_content_model", nativeQuery = true)
	public EditIndexPageContentModel GetIndexPageContentData();
}
