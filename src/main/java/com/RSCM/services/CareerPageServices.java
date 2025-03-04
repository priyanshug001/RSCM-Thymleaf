package com.RSCM.services;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.RSCM.models.UpdateCareerPageModel;
import com.RSCM.repositories.CareerPageRepository;

@Service
public class CareerPageServices {

	@Autowired
	CareerPageRepository careerPageRepository;

	public void UpdateCareerPageData(UpdateCareerPageModel updateCareerPageModel) {
		careerPageRepository.save(updateCareerPageModel);
	}

	public UpdateCareerPageModel GetCareerPageData() {
		return careerPageRepository.GetCareerPageData();
	}
}
