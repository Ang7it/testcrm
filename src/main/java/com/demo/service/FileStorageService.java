package com.demo.service;

import java.io.IOException;
import java.net.MalformedURLException;
import java.nio.file.Files;
import java.nio.file.Path;
import java.nio.file.Paths;
import java.nio.file.StandardCopyOption;
import java.util.Arrays;
import java.util.List;
import java.util.stream.Collectors;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.core.io.Resource;
import org.springframework.core.io.UrlResource;
import org.springframework.stereotype.Service;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.support.ServletUriComponentsBuilder;

import com.demo.exception.FileStorageException;
import com.demo.exception.MyFileNotFoundException;
import com.demo.model.OtherDocuments;
import com.demo.model.PeForm;
import com.demo.model.QueryForm;
import com.demo.model.TaxInvoiceForm;
import com.demo.repository.OtherDocumentsRepository;
import com.demo.repository.PeFormRepository;
import com.demo.repository.ProformaInvoiceRepository;
import com.demo.repository.QueryFormRepository;
import com.demo.repository.TaxInvoiceRepository;
import com.demo.utility.FileStorageProperties;
import com.demo.utility.UploadFileResponse;

import antlr.StringUtils;

@Service
public class FileStorageService {
	@Autowired
	private ProformaInvoiceRepository proformaInvoiceRepository;
	@Autowired
	private PeFormRepository peFormRepository;
	@Autowired
	private TaxInvoiceRepository taxInvoiceRepository;
	@Autowired
	private QueryFormRepository queryFormRepository;
	@Autowired
	private OtherDocumentsRepository otherDocumentsRepository;

	private final Path fileStorageLocation;

	@Autowired
	public FileStorageService(FileStorageProperties fileStorageProperties) {
		this.fileStorageLocation = Paths.get(fileStorageProperties.getUploadDir()).toAbsolutePath().normalize();

		try {
			Files.createDirectories(this.fileStorageLocation);
		} catch (Exception ex) {
			throw new FileStorageException("Could not create the directory where the uploaded files will be stored.",
					ex);
		}
	}

	public String storeFile(MultipartFile file) {
		// Normalize file name
		String fileName = file.getOriginalFilename();
		
//	    	file.getOriginalFilename();

		try {
			// Check if the file's name contains invalid characters
			if (fileName.contains("..")) {
				throw new FileStorageException("Sorry! Filename contains invalid path sequence " + fileName);
			}
//			switch (i) {
//			case 0:
//				Files.copy(file.getInputStream(), targetLocation, StandardCopyOption.REPLACE_EXISTING);
//				PeForm peForm = new PeForm();
//				peForm.setFileName(fileName);
//				peForm.setFilePath(targetLocation.toString());
//				peForm.setProformaInvoice(proformaInvoiceRepository.getOne(id));
//				peFormRepository.save(peForm);
//				break;
//			case 1:
//				Files.copy(file.getInputStream(), targetLocation, StandardCopyOption.REPLACE_EXISTING);
//				QueryForm queryForm= new QueryForm();
//				queryForm.setFileName(fileName);
//				queryForm.setFilePath(targetLocation.toString());
//				queryForm.setProformaInvoice(proformaInvoiceRepository.getOne(id));
//				queryFormRepository.save(queryForm);
//				break;
//			case 2:
//				Files.copy(file.getInputStream(), targetLocation, StandardCopyOption.REPLACE_EXISTING);
//				TaxInvoiceForm taxInvoiceForm = new TaxInvoiceForm();
//				taxInvoiceForm.setFileName(fileName);
//				taxInvoiceForm.setFilePath(targetLocation.toString());
//				taxInvoiceForm.setProformaInvoice(proformaInvoiceRepository.getOne(id));
//				taxInvoiceRepository.save(taxInvoiceForm);
//				break;
//			case 3:
//				Files.copy(file.getInputStream(), targetLocation, StandardCopyOption.REPLACE_EXISTING);
//				OtherDocuments documents = new OtherDocuments();
//				documents.setFileName(fileName);
//				documents.setFilePath(targetLocation.toString());
//				documents.setProformaInvoice(proformaInvoiceRepository.getOne(id));
//				otherDocumentsRepository.save(documents);
//				break;
//			}

			// Copy file to the target location (Replacing existing file with the same name)
			Path targetLocation = this.fileStorageLocation.resolve(fileName);
			Files.copy(file.getInputStream(), targetLocation, StandardCopyOption.REPLACE_EXISTING);

			return fileName;
		} catch (IOException ex) {
			throw new FileStorageException("Could not store file " + fileName + ". Please try again!", ex);
		}
	}

	public Resource loadFileAsResource(String fileName) {
		try {
			Path filePath = this.fileStorageLocation.resolve(fileName).normalize();
			Resource resource = new UrlResource(filePath.toUri());
			if (resource.exists()) {
				return resource;
			} else {
				throw new MyFileNotFoundException("File not found " + fileName);
			}
		} catch (MalformedURLException ex) {
			throw new MyFileNotFoundException("File not found " + fileName, ex);
		}
	}

}
