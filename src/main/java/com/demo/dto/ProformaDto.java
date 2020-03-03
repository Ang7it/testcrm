package com.demo.dto;

import java.util.List;

import com.demo.model.PaymentDetails;
import com.demo.model.ProformaInvoice;
import com.demo.model.ProformaUser;

public class ProformaDto {
	private ProformaInvoice proformaInvoice;
	private List<PaymentDetails> paymentDetails;
	private ProformaUser proformaUser;
	
	public ProformaDto() {
	}

	public ProformaDto(ProformaInvoice proformaInvoice, List<PaymentDetails> paymentDetails, ProformaUser proformaUser) {
		this.proformaInvoice = proformaInvoice;
		this.paymentDetails = paymentDetails;
		this.proformaUser = proformaUser;
	}

	public ProformaInvoice getProformaInvoice() {
		return proformaInvoice;
	}

	public void setProformaInvoice(ProformaInvoice proformaInvoice) {
		this.proformaInvoice = proformaInvoice;
	}

	public List<PaymentDetails> getPaymentDetails() {
		return paymentDetails;
	}

	public void setPaymentDetails(List<PaymentDetails> paymentDetails) {
		this.paymentDetails = paymentDetails;
	}

	public ProformaUser getProformaUser() {
		return proformaUser;
	}

	public void setProformaUser(ProformaUser proformaUser) {
		this.proformaUser = proformaUser;
	}
	
	
	

}
