package com.demo.controller;

import java.util.ArrayList;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RestController;

import com.demo.model.Organisation;
import com.demo.repository.DomainRepository;
import com.demo.repository.OrganisationRepository;

@RestController
public class MainController {

	@Autowired
	private DomainRepository domainRepository;
	@Autowired
	private OrganisationRepository organisationRepository;
	
//	@GetMapping("/dashboard/dom/{id}")
//	public Domain getOrganisationsForDomain(@PathVariable("id") Long id)
//	{
//		System.out.println("DISPLAYING DOM DETAILS");
//		System.out.println("ID:::"+id);
//		Domain organisationList=domainRepository.getOrganisationListByDomainId(id);
//		if(organisationList.getOrgansiations().isEmpty())
//		{
//			System.out.println("EMPTY LIST");
//			return null;
//		}
//		else
//		{
//			Collection<Organisation> organisations=organisationList.getOrgansiations();
//			organisations.stream()
//			.map(o -> o.getOrganisationName())
//			.forEach(System.out::println);
//			return organisationList;
//		}
//		
//	}

	@GetMapping("/dashboard/dom/{id}")
	public Organisation getOrganisationsForDomain(@PathVariable("id") Long id)
	{
		System.out.println("DISPLAYING DOM DETAILS");
		System.out.println("ID:::"+id);
		Organisation organisationList=organisationRepository.getProformaDetailsForOrgById(id);
		return organisationList;
	
		
	}

	
	@GetMapping("/dashboard/org/{id}")
	public List<Organisation> getProformaInvoiceforOrganisation(@PathVariable("id") Long id)
	{
		System.out.println("DISPLAYING ORG DETAILS");
		System.out.println("ID:::"+id);
		List<Organisation> organisations=new ArrayList<>();
		organisations=organisationRepository.getOrgForDomByDomId(id);
		for(Organisation organisation: organisations)
		{
			System.out.println(organisation.getOrganisationName());
		}
		return organisations;
	}
	
	
}
