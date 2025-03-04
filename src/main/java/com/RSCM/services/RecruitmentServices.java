package com.RSCM.services;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.RSCM.models.RecruitmentModel;
import com.RSCM.repositories.RecruitmentRepository;

@Service
public class RecruitmentServices {

	@Autowired
	RecruitmentRepository recruitmentRepository;

	public void SaveRecruitmentData(RecruitmentModel recruitmentModel) {
		recruitmentRepository.save(recruitmentModel);
	}
}
