package com.RSCM.services;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.RSCM.models.ContactModel;
import com.RSCM.repositories.ContactRepository;

@Service
public class ContactService {

	@Autowired
	ContactRepository contactRepository;

	public void SaveContactData(ContactModel contactModel) {
		contactRepository.save(contactModel);
	}

	public List<ContactModel> GetContactData() {
		return contactRepository.GetContactData();
	}

	public void DeleteAllContactData() {
		contactRepository.deleteAll();
	}
}
