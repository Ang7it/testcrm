package com.demo.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.demo.model.ProformaUser;
import com.demo.repository.ProformaUserRepository;

@Service
public class ProformaUserService {
	@Autowired
	private ProformaUserRepository proformaUserRepository;

	public ProformaUser getProformaUserForOrganisation(Long id) {
		ProformaUser proformaUser = proformaUserRepository.findByOrganisation_id(id);
		if (proformaUser != null) {
			return proformaUser;
		} else {
			return null;
		}
	}
}
