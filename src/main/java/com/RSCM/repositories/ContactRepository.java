package com.RSCM.repositories;

import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.stereotype.Repository;

import com.RSCM.models.ContactModel;

@Repository
public interface ContactRepository extends JpaRepository<ContactModel, Integer> {

	@Query(value = "SELECT * FROM contact_model", nativeQuery = true)
	public List<ContactModel> GetContactData();
}
