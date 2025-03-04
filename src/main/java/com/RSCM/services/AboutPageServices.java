package com.RSCM.services;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.RSCM.models.UpdateAboutPageContentModel;
import com.RSCM.repositories.AboutPageRepository;

@Service
public class AboutPageServices {

	@Autowired
	AboutPageRepository aboutPageRepository;

	public void UpdateAboutPageData(UpdateAboutPageContentModel updateAboutPageContentModel) {
		aboutPageRepository.save(updateAboutPageContentModel);
	}

	public UpdateAboutPageContentModel GetUpdatedAboutPageData() {
		return aboutPageRepository.GetUpdatedAboutPageData();

	}
}
