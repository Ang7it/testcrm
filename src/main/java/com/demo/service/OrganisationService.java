package com.demo.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.demo.model.Organisation;
import com.demo.repository.OrganisationRepository;

@Service
public class OrganisationService {
	@Autowired
	private OrganisationRepository organisationRepository; 
    
	public List<Organisation> getListOfOrganisations()
	{
		List<Organisation> organisationList=organisationRepository.findAll();
		if (!organisationList.isEmpty()) {
			return organisationList;
		} else {
            return null;
		}
	}
	
	public Organisation getOrganisationById(Long id)
	{
		Organisation organisation=organisationRepository.getOne(id);
		if(organisation!=null) {
			return organisation;
		}else {
			return null;
		}
	}
}
