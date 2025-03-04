package com.RSCM.services;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.RSCM.models.EditIndexPageContentModel;
import com.RSCM.repositories.EditIndexPageRepository;

@Service
public class EditIndexPageServices {

	@Autowired
	EditIndexPageRepository editIndexPageRepository;

	public void saveIndexPageContentData(EditIndexPageContentModel editIndexPageContentModel) {
		editIndexPageRepository.save(editIndexPageContentModel);
	}

	public EditIndexPageContentModel getIndexPageContentData() {
		return editIndexPageRepository.GetIndexPageContentData();
	}
}