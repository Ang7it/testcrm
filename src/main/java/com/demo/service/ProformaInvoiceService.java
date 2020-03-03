package com.demo.service;

import java.util.ArrayList;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.demo.dto.DashboardDetails;
import com.demo.dto.ProformaDto;
import com.demo.model.ProformaInvoice;
import com.demo.repository.ProformaInvoiceRepository;

@Service
public class ProformaInvoiceService {
	@Autowired
	private ProformaInvoiceRepository proformaInvoiceRepository;
	private DashboardDetails dashboardDetail = null;
	
	public List<ProformaInvoice> getProformaInvoiceDetailsForOrganisation(Long id)
	{
		List<ProformaInvoice> proformaInvoice=proformaInvoiceRepository.findByOrganisation_Id(id);
		if(!proformaInvoice.isEmpty()) {
			return proformaInvoice;
		}else {
			return null;
		}	
	}
	
	public ProformaInvoice getProformaInvoiceByPiNumber(String piNumber)
	{
		ProformaInvoice proformaInvoice=proformaInvoiceRepository.findByPiNumber(piNumber);
		if(proformaInvoice!=null) {
			return proformaInvoice;
		}else {
			return null;
		}
	}
	
	public List<DashboardDetails> getDashboardDetails()
	{
		List<ProformaInvoice> proformaInvoices=proformaInvoiceRepository.findAll();
		List<DashboardDetails> dashboardDetails=new ArrayList<DashboardDetails>();
		for(ProformaInvoice proformaInvoice:proformaInvoices) {
			DashboardDetails details=new DashboardDetails();
			details.setDomainName(proformaInvoice.getOrganisation().getDomainId().getDomainName());
			details.setOrganisatioName(proformaInvoice.getOrganisation().getOrganisationName());
			details.setOrgUniqueKey(proformaInvoice.getOrganisation().getUniqueKey());
			details.setPiNumber(proformaInvoice.getPiNumber());
			details.setProjectNumber(proformaInvoice.getProjectNumber());
			
			dashboardDetails.add(details);
		}
		return dashboardDetails;
	}
}
