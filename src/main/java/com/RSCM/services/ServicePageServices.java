package com.RSCM.services;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.RSCM.models.UpdateServicesModel;
import com.RSCM.repositories.ServicePageRepository;

@Service
public class ServicePageServices {

	@Autowired
	ServicePageRepository servicePageRepository;

	public void UpdateServicesData(UpdateServicesModel updateServicesModel) {
		servicePageRepository.save(updateServicesModel);
	}

	public List<UpdateServicesModel> GetUpdatedServiceData() {
		return servicePageRepository.GetUpdatedServiceData();
	}

	public UpdateServicesModel GetSpecificUpdatedServiceData(String ServiceHeading) {
		return servicePageRepository.GetSpecificUpdatedServiceData(ServiceHeading);
	}

	public void RemoveSpecificService(int DataId) {
		servicePageRepository.deleteById(DataId);
	}

	public void RemoveAllServices() {
		servicePageRepository.deleteAll();
	}
}
