package com.RSCM.services;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.RSCM.models.UpdatesModel;
import com.RSCM.repositories.UpdatesRepository;

@Service
public class UpdatesServices {

	@Autowired
	UpdatesRepository updatesRepository;

	public void SaveUpdatesData(UpdatesModel updatesModel) {
		updatesRepository.save(updatesModel);
	}

	public UpdatesModel GetUpdatesDataById(int UpdatesId) {
		return updatesRepository.GetUpdatesDataById(UpdatesId);
	}

	public List<UpdatesModel> GetUpdatesCategoryData() {
		return updatesRepository.GetUpdatesCategoryData();
	}

	public List<UpdatesModel> GetAllUpdatesData() {
		return updatesRepository.GetAllUpdatesData();
	}

	public void DeleteAllUpdates() {
		updatesRepository.deleteAll();
	}

	public void DeleteUpdates(int UpdatesId) {
		updatesRepository.deleteById(UpdatesId);
	}
}
