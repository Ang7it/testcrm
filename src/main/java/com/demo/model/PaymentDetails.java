package com.demo.model;

import java.sql.Timestamp;
import java.util.Date;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.Table;
import javax.persistence.Temporal;
import javax.persistence.TemporalType;

@Entity
//@Table(name="payment_details")
public class PaymentDetails {
	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private Long id;
	private String piNumber;
	@ManyToOne
	@JoinColumn(nullable = false)
	private ProformaInvoice proformaInvoice;
	@Temporal(TemporalType.DATE)
	private Date paymentDate;
	private int paymentAmount;
	private char peFormStatus;
	private String paymentUTRDetails;
	@Column(nullable = false, columnDefinition = "TIMESTAMP DEFAULT CURRENT_TIMESTAMP")
	private Timestamp piCreationTimestamp;

	public PaymentDetails() {
	}

	public PaymentDetails(String piNumber, Date paymentDate, int paymentAmount, char peFormStatus,
			String paymentUTRDetails, Timestamp piCreationTimestamp) {
		this.piNumber = piNumber;
		this.paymentDate = paymentDate;
		this.paymentAmount = paymentAmount;
		this.peFormStatus = peFormStatus;
		this.paymentUTRDetails = paymentUTRDetails;
		this.piCreationTimestamp = piCreationTimestamp;
	}

	public String getPiNumber() {
		return piNumber;
	}

	public void setPiNumber(String piNumber) {
		this.piNumber = piNumber;
	}

	public Date getPaymentDate() {
		return paymentDate;
	}

	public void setPaymentDate(Date paymentDate) {
		this.paymentDate = paymentDate;
	}

	public int getPaymentAmount() {
		return paymentAmount;
	}

	public void setPaymentAmount(int paymentAmount) {
		this.paymentAmount = paymentAmount;
	}

	public char getPeFormStatus() {
		return peFormStatus;
	}

	public void setPeFormStatus(char peFormStatus) {
		this.peFormStatus = peFormStatus;
	}

	public String getPaymentUTRDetails() {
		return paymentUTRDetails;
	}

	public void setPaymentUTRDetails(String paymentUTRDetails) {
		this.paymentUTRDetails = paymentUTRDetails;
	}

	public Timestamp getPiCreationTimestamp() {
		return piCreationTimestamp;
	}

	public void setPiCreationTimestamp(Timestamp piCreationTimestamp) {
		this.piCreationTimestamp = piCreationTimestamp;
	}

	public Long getId() {
		return id;
	}

	public ProformaInvoice getProformaInvoice() {
		return proformaInvoice;
	}

	public void setProformaInvoice(ProformaInvoice proformaInvoice) {
		this.proformaInvoice = proformaInvoice;
	}

}
