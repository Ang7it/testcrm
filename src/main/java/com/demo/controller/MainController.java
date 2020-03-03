package com.demo.controller;

import java.io.IOException;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;
import java.util.stream.Collectors;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.core.io.Resource;
import org.springframework.http.HttpHeaders;
import org.springframework.http.HttpStatus;
import org.springframework.http.MediaType;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.support.ServletUriComponentsBuilder;

import com.demo.dto.DashboardDetails;
import com.demo.model.Domain;
import com.demo.model.Organisation;
import com.demo.model.PaymentDetails;
import com.demo.model.ProformaInvoice;
import com.demo.model.ProformaUser;
import com.demo.repository.DomainRepository;
import com.demo.repository.OrganisationRepository;
import com.demo.repository.PaymentDetailsRepository;
import com.demo.repository.PeFormRepository;
import com.demo.repository.ProformaUserRepository;
import com.demo.repository.QueryFormRepository;
import com.demo.repository.TaxInvoiceRepository;
import com.demo.service.DomainService;
import com.demo.service.FileStorageService;
import com.demo.service.OrganisationService;
import com.demo.service.PaymentDetailsService;
import com.demo.service.PeFormService;
import com.demo.service.ProformaInvoiceService;
import com.demo.service.ProformaUserService;
import com.demo.service.QueryFormService;
import com.demo.service.TaxInvoiceService;
import com.demo.utility.UploadFileResponse;

@RestController
public class MainController {

	@Autowired
	private DomainService domainService;
	@Autowired
	private OrganisationService organisationService;
	@Autowired
	private PaymentDetailsService paymentDetailsService;
	@Autowired
	private PeFormService peFormService;
	@Autowired
	private ProformaInvoiceService proformaInvoiceService;
	@Autowired
	private QueryFormService queryFormService;
	@Autowired
	private TaxInvoiceService taxInvoiceService;
	@Autowired
	private ProformaUserService proformaUserService;
	@Autowired
	private FileStorageService fileStorageService;

	//Get list of domains
	@GetMapping("/domainlist")
	public ResponseEntity<List<Domain>> getListOfDomains()
	{
		List<Domain> domains=domainService.getListOfDomains();
		if(!domains.isEmpty()) {
			return new ResponseEntity<List<Domain>>(domains,HttpStatus.OK);
		}else {
			return new ResponseEntity<List<Domain>>(HttpStatus.NOT_FOUND);
		}
	}
    
	//get list of organisations
	@GetMapping("/organisationlist")
	public ResponseEntity<List<Organisation>> getListOfOrganisation()
	{
		List<Organisation> organisations=organisationService.getListOfOrganisations();
		if(!organisations.isEmpty()) {
			return new ResponseEntity<List<Organisation>>(organisations,HttpStatus.OK);
		}else {
			return new ResponseEntity<List<Organisation>>(HttpStatus.NOT_FOUND);
		}
	}
	
	//Get dashboard data
	@GetMapping("/dashboard/data")
	public ResponseEntity<List<DashboardDetails>> getDashboardData()
	{
		List<DashboardDetails> dashboardDetails=proformaInvoiceService.getDashboardDetails();
		if(!dashboardDetails.isEmpty()) {
			return new ResponseEntity<List<DashboardDetails>>(dashboardDetails,HttpStatus.OK);
		}else {
			return new ResponseEntity<List<DashboardDetails>>(HttpStatus.NOT_FOUND);
		}
	}
		
	//Get proforma invoice details for organisation by id
	@GetMapping("/dashboard/org/pi/{id}")
	public ResponseEntity<List<ProformaInvoice>> getProformaDetailsForOrganisation(@PathVariable("id") Long id)
	{
		List<ProformaInvoice> proformaInvoices=proformaInvoiceService.getProformaInvoiceDetailsForOrganisation(id);
		if(!proformaInvoices.isEmpty()) {
			return new ResponseEntity<List<ProformaInvoice>>(proformaInvoices,HttpStatus.OK);
		}else {
			return new ResponseEntity<List<ProformaInvoice>>(HttpStatus.NOT_FOUND);
		}
	}
	
	//Get invoice details by pi number
	@GetMapping("/dashboard/pi/{piNumber}")
	public ResponseEntity<ProformaInvoice> getProformaInvoiceByPiNumber(@PathVariable("piNumber") String piNumber)
	{
		ProformaInvoice proformaInvoice=proformaInvoiceService.getProformaInvoiceByPiNumber(piNumber);
		if(proformaInvoice!=null) {
			return new ResponseEntity<ProformaInvoice>(proformaInvoice,HttpStatus.OK);
		}else {
			return new ResponseEntity<ProformaInvoice>(HttpStatus.NOT_FOUND);
		}
	}
	
	//Get proforma user details for organisation by id
	@GetMapping("/pu/org/{id}")
	public ResponseEntity<ProformaUser> getProformaUserForOrganisation(@PathVariable("id") Long id)
	{
		ProformaUser proformaUser=proformaUserService.getProformaUserForOrganisation(id);
		if(proformaUser!=null) {
			return new ResponseEntity<ProformaUser>(proformaUser,HttpStatus.OK);
		}else {
			return new ResponseEntity<ProformaUser>(HttpStatus.NOT_FOUND);
		}
	}
	
	//Get list of payment details for a proforma invoice
	@GetMapping("pi/payment/{id}")
	public ResponseEntity<List<PaymentDetails>> getPaymentDetailsForPI(@PathVariable("id") Long id)
	{
		List<PaymentDetails> paymentDetails=paymentDetailsService.getPaymentDetailsForPi(id);
		if(!paymentDetails.isEmpty()) {
			return new ResponseEntity<List<PaymentDetails>>(paymentDetails,HttpStatus.OK);
		}else {
			return new ResponseEntity<List<PaymentDetails>>(HttpStatus.NOT_FOUND);
		}
	}
	
	@PostMapping("/uploadFile")
	public UploadFileResponse uploadFile(@RequestParam("file") MultipartFile file) {
		System.out.println("UPLOADING SINGLE FILE");
		String fileName = fileStorageService.storeFile(file);

		System.out.println("FILE NAME::"+ fileName);
		System.out.println("FETCHING DOWNLOAD URI");
		String fileDownloadUri = ServletUriComponentsBuilder.fromCurrentContextPath().path("/downloadFile/")
				.path(fileName).toUriString();

		return new UploadFileResponse(fileName, fileDownloadUri, file.getContentType(), file.getSize());
	}

	@PostMapping("/uploadMultipleFiles")
	public List<UploadFileResponse> uploadMultipleFiles(@RequestParam("files") MultipartFile[] files) {
		return Arrays.asList(files).stream().map(file -> uploadFile(file)).collect(Collectors.toList());
	}

	@GetMapping("/downloadFile/{fileName:.+}")
	public ResponseEntity<Resource> downloadFile(@PathVariable String fileName, HttpServletRequest request) {
		// Load file as Resource
		Resource resource = fileStorageService.loadFileAsResource(fileName);

		// Try to determine file's content type
		String contentType = null;
		try {
			contentType = request.getServletContext().getMimeType(resource.getFile().getAbsolutePath());
		} catch (IOException ex) {
			ex.getMessage();
		}

		// Fallback to the default content type if type could not be determined
		if (contentType == null) {
			contentType = "application/octet-stream";
		}

		return ResponseEntity.ok().contentType(MediaType.parseMediaType(contentType))
				.header(HttpHeaders.CONTENT_DISPOSITION, "attachment; filename=\"" + resource.getFilename() + "\"")
				.body(resource);
	}

}
