package com.RSCM.repositories;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import com.RSCM.models.RecruitmentModel;

@Repository
public interface RecruitmentRepository extends JpaRepository<RecruitmentModel, Integer> {

}
