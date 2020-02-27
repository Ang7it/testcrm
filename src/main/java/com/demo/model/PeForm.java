package com.demo.model;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.OneToOne;

@Entity
public class PeForm {
	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private Long id;
	private String fileName;
	private String filePath;
	@OneToOne
	@JoinColumn
	private ProformaInvoice proformaInvoice;
	public PeForm() {
	}
	public PeForm(String fileName, String filePath, ProformaInvoice proformaInvoice) {
		this.fileName = fileName;
		this.filePath = filePath;
		this.proformaInvoice = proformaInvoice;
	}
	public String getFileName() {
		return fileName;
	}
	public void setFileName(String fileName) {
		this.fileName = fileName;
	}
	public String getFilePath() {
		return filePath;
	}
	public void setFilePath(String filePath) {
		this.filePath = filePath;
	}
	public ProformaInvoice getProformaInvoice() {
		return proformaInvoice;
	}
	public void setProformaInvoice(ProformaInvoice proformaInvoice) {
		this.proformaInvoice = proformaInvoice;
	}
	public Long getId() {
		return id;
	}
}
