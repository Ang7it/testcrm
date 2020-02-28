package com.demo.controller;

import java.util.ArrayList;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import com.demo.model.DashboardDetails;
import com.demo.model.Organisation;
import com.demo.model.ProformaInvoice;
import com.demo.model.ProformaUser;
import com.demo.model.QueryForm;
import com.demo.repository.DomainRepository;
import com.demo.repository.OrganisationRepository;
import com.demo.repository.PaymentDetailsRepository;
import com.demo.repository.PeFormRepository;
import com.demo.repository.ProformaInvoiceRepository;
import com.demo.repository.ProformaUserRepository;
import com.demo.repository.QueryFormRepository;
import com.demo.repository.TaxInvoiceRepository;

@RestController
public class MainController {

	@Autowired
	private DomainRepository domainRepository;
	@Autowired
	private OrganisationRepository organisationRepository;
	@Autowired
	private PaymentDetailsRepository paymentDetailsRepository;
	@Autowired
	private PeFormRepository peFormRepository;
	@Autowired
	private ProformaInvoiceRepository proformaInvoiceRepository;
	@Autowired
	private QueryFormRepository queryFormRepository;
	@Autowired
	private TaxInvoiceRepository taxInvoiceRepository;
	@Autowired
	private ProformaUserRepository proformaUserRepository;
	private DashboardDetails dashboardDetail = null;

	// Get complete proforma details for a organisation
	@GetMapping("/dashboard/pifororg/{id}")
	public List<ProformaInvoice> getProformaDetailsForOrganisationById(@PathVariable("id") Long id) {
		System.out.println("DISPLAYING DOM DETAILS");
		System.out.println("ID:::" + id);
		List<ProformaInvoice> proformaDetails = proformaInvoiceRepository.findByOrganisation_id(id);
		proformaDetails.stream().map(p -> p.getPiNumber()).forEach(System.out::println);

		return proformaDetails;

	}

	// Get proforma invoice details for a particular organisation name
	@GetMapping("/dashboard/pinumfororg/{id}")
	public List<String> getProformaPiNumberForOrganisationById(@PathVariable("id") Long id) {
		System.out.println("DISPLAYING DOM DETAILS");
		System.out.println("ID:::" + id);
		List<ProformaInvoice> proformaDetails = proformaInvoiceRepository.findByOrganisation_id(id);
		List<String> piNumberlist = new ArrayList<>();
		for (ProformaInvoice proformaInvoice : proformaDetails) {
			piNumberlist.add(proformaInvoice.getPiNumber());
		}
		return piNumberlist;

	}

	// Get list of organisation for a particular domain
	@GetMapping("/dashboard/orgfordom/{id}")
	public List<Organisation> getOrganisationForDomainByID(@PathVariable("id") Long id) {
		System.out.println("DISPLAYING ORG DETAILS");
		System.out.println("ID:::" + id);
		List<Organisation> organisations = new ArrayList<>();
		organisations = organisationRepository.findByDomain_id(id);
		organisations.stream().map(o -> o.getOrganisationName()).forEach(System.out::println);
		return organisations;
	}

	// Display all dashboard data
	@GetMapping("/dashboard/data")
	public List<DashboardDetails> getCompleteDashboardData() {

		List<ProformaInvoice> proformaDetails = proformaInvoiceRepository.findAll();
		List<DashboardDetails> dashboardDetails = new ArrayList<>();
		for (ProformaInvoice proformaInvoice : proformaDetails) {
			dashboardDetail = new DashboardDetails();
			dashboardDetail.setProjectNumber(proformaInvoice.getProjectNumber());
			System.out.println("PROJ NUMBER:::" + proformaInvoice.getProjectNumber());
			dashboardDetail.setPiNumber(proformaInvoice.getPiNumber());
			System.out.println("PI NUMBER:::" + proformaInvoice.getPiNumber());
			dashboardDetail.setOrganisatioName(proformaInvoice.getOrganisationId().getOrganisationName());
			System.out.println("ORG NAME:::" + proformaInvoice.getOrganisationId().getOrganisationName());
			dashboardDetail.setOrgUniqueKey(proformaInvoice.getOrganisationId().getUniqueKey());
			System.out.println("UNQ KEY:::" + proformaInvoice.getOrganisationId().getUniqueKey());
			dashboardDetail.setDomainName(proformaInvoice.getOrganisationId().getDomainId().getDomainName());
			System.out.println("DOM NAME:::" + proformaInvoice.getOrganisationId().getDomainId().getDomainName());

			dashboardDetails.add(dashboardDetail);
		}
		return dashboardDetails;
	}

	// Get complete proforma user details dor a particular organisation
	@GetMapping("/dashboard/userfororg/{id}")
	public ProformaUser getProformaUserDetailsForOrgByiD(@PathVariable("id") Long id) {
		ProformaUser user = proformaUserRepository.findByOrganisation_id(id);
		if (user != null) {
			return user;
		} else {
			return null;
		}
	}

	// Get proforma invoice details on the basis of pi number
	@GetMapping("/dashboard/proforma/{pinum}")
	public ProformaInvoice getProformaDetailsByPiNumber(@PathVariable("pinum") String piNumber) {
		ProformaInvoice proformaInvoice = proformaInvoiceRepository.findByPiNumber(piNumber);
		if (proformaInvoice != null) {
			return proformaInvoice;
		} else {
			return null;
		}
	}
}
