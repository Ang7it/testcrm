package com.demo.model;

import java.sql.Timestamp;
import java.util.Collection;
import java.util.Date;
import java.util.List;

import javax.persistence.CascadeType;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.OneToMany;
import javax.persistence.OneToOne;
import javax.persistence.Temporal;
import javax.persistence.TemporalType;
import javax.validation.constraints.Email;
import javax.validation.constraints.NotNull;

import org.hibernate.validator.constraints.UniqueElements;

@Entity
public class ProformaInvoice {

	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private Long invoiceId;
	@NotNull
	@UniqueElements
	private String piNumber;
	@ManyToOne
//	@JoinColumn(nullable = false)
	private Organisation organisation;
	private String piReferenceNumber;
	private String piAmount;
	private int piDuration;
	@Email
	private String ownerEmailID;
	private String piCategory;
	@Temporal(TemporalType.DATE)
	private Date accountCreationDate;
	private String projectNumber;
	private String GSTNumber;
	private int numberOFaccounts;
	private int activeAccounts;
	private int inactiveAccounts;
	private int deletedAccounts;
	private String invoiceNumber;
	@Temporal(TemporalType.DATE)
	private Date invoiceDate;
	private int invoiceAmount;
	private String financialYear;
	@Column(nullable = false, columnDefinition = "TIMESTAMP DEFAULT CURRENT_TIMESTAMP")
	private Timestamp invoiceCreationTimestamp;
	@Column(nullable = true)
	private Timestamp invoiceUpdationTimestamp;
	@OneToOne
	@JoinColumn
	private ProformaUser proformaUser;
	public ProformaInvoice() {
	}

	public ProformaInvoice(String piNumber, Organisation organisation, String piAmount, int piDuration,
			String ownerEmailID, String piCategory, Date accountCreationDate, String projectNumber, String gSTNumber,
			int numberOFaccounts, int activeAccounts, int inactiveAccounts, int deletedAccounts, String invoiceNumber,
			Date invoiceDate, int invoiceAmount, String financialYear) {
		this.piNumber = piNumber;
		this.organisation = organisation;
		this.piAmount = piAmount;
		this.piDuration = piDuration;
		this.ownerEmailID = ownerEmailID;
		this.piCategory = piCategory;
		this.accountCreationDate = accountCreationDate;
		this.projectNumber = projectNumber;
		this.GSTNumber = gSTNumber;
		this.numberOFaccounts = numberOFaccounts;
		this.activeAccounts = activeAccounts;
		this.inactiveAccounts = inactiveAccounts;
		this.deletedAccounts = deletedAccounts;
		this.invoiceNumber = invoiceNumber;
		this.invoiceDate = invoiceDate;
		this.invoiceAmount = invoiceAmount;
		this.financialYear = financialYear;
	}

	public String getPiNumber() {
		return piNumber;
	}

	public void setPiNumber(String piNumber) {
		this.piNumber = piNumber;
	}

	public String getPiAmount() {
		return piAmount;
	}

	public void setPiAmount(String piAmount) {
		this.piAmount = piAmount;
	}

	public int getPiDuration() {
		return piDuration;
	}

	public void setPiDuration(int piDuration) {
		this.piDuration = piDuration;
	}

	public String getOwnerEmailID() {
		return ownerEmailID;
	}

	public void setOwnerEmailID(String ownerEmailID) {
		this.ownerEmailID = ownerEmailID;
	}

	public String getPiCategory() {
		return piCategory;
	}

	public void setPiCategory(String piCategory) {
		this.piCategory = piCategory;
	}

	public Date getAccountCreationDate() {
		return accountCreationDate;
	}

	public void setAccountCreationDate(Date accountCreationDate) {
		this.accountCreationDate = accountCreationDate;
	}

	public String getProjectNumber() {
		return projectNumber;
	}

	public void setProjectNumber(String projectNumber) {
		this.projectNumber = projectNumber;
	}

	public String getGSTNumber() {
		return GSTNumber;
	}

	public void setGSTNumber(String gSTNumber) {
		GSTNumber = gSTNumber;
	}

	public int getNumberOFaccounts() {
		return numberOFaccounts;
	}

	public void setNumberOFaccounts(int numberOFaccounts) {
		this.numberOFaccounts = numberOFaccounts;
	}

	public int getActiveAccounts() {
		return activeAccounts;
	}

	public void setActiveAccounts(int activeAccounts) {
		this.activeAccounts = activeAccounts;
	}

	public int getInactiveAccounts() {
		return inactiveAccounts;
	}

	public void setInactiveAccounts(int inactiveAccounts) {
		this.inactiveAccounts = inactiveAccounts;
	}

	public int getDeletedAccounts() {
		return deletedAccounts;
	}

	public void setDeletedAccounts(int deletedAccounts) {
		this.deletedAccounts = deletedAccounts;
	}

	public String getInvoiceNumber() {
		return invoiceNumber;
	}

	public void setInvoiceNumber(String invoiceNumber) {
		this.invoiceNumber = invoiceNumber;
	}

	public Date getInvoiceDate() {
		return invoiceDate;
	}

	public void setInvoiceDate(Date invoiceDate) {
		this.invoiceDate = invoiceDate;
	}

	public int getInvoiceAmount() {
		return invoiceAmount;
	}

	public void setInvoiceAmount(int invoiceAmount) {
		this.invoiceAmount = invoiceAmount;
	}

	public String getFinancialYear() {
		return financialYear;
	}

	public void setFinancialYear(String financialYear) {
		this.financialYear = financialYear;
	}

	public Timestamp getInvoiceCreationTimestamp() {
		return invoiceCreationTimestamp;
	}

	public void setInvoiceCreationTimestamp(Timestamp invoiceCreationTimestamp) {
		this.invoiceCreationTimestamp = invoiceCreationTimestamp;
	}

	public Timestamp getInvoiceUpdationTimestamp() {
		return invoiceUpdationTimestamp;
	}

	public void setInvoiceUpdationTimestamp(Timestamp invoiceUpdationTimestamp) {
		this.invoiceUpdationTimestamp = invoiceUpdationTimestamp;
	}

	public Long getInvoiceId() {
		return invoiceId;
	}

	public String getPiReferenceNumber() {
		return piReferenceNumber;
	}

	public void setPiReferenceNumber(String piReferenceNumber) {
		this.piReferenceNumber = piReferenceNumber;
	}

	public Organisation getOrganisation() {
		return organisation;
	}

	public void setOrganisation(Organisation organisation) {
		this.organisation = organisation;
	}

	public ProformaUser getProformaUser() {
		return proformaUser;
	}

	public void setProformaUser(ProformaUser proformaUser) {
		this.proformaUser = proformaUser;
	}
	
}
