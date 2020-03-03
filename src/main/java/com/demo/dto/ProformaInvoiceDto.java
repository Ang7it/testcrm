package com.demo.dto;

import com.demo.model.PaymentDetails;
import com.demo.model.PeForm;
import com.demo.model.ProformaUser;
import com.demo.model.QueryForm;
import com.demo.model.TaxInvoiceForm;

public class ProformaInvoiceDto 
{
	private PaymentDetails paymentDetails;
	private ProformaUser proformaUser;
	private PeForm peForm;
	private QueryForm queryForm;
	private TaxInvoiceForm taxInvoiceForm;
	
	
	public ProformaInvoiceDto() {
	}
	public ProformaInvoiceDto(PaymentDetails paymentDetails, ProformaUser proformaUser, PeForm peForm,
			QueryForm queryForm, TaxInvoiceForm taxInvoiceForm) {
		this.paymentDetails = paymentDetails;
		this.proformaUser = proformaUser;
		this.peForm = peForm;
		this.queryForm = queryForm;
		this.taxInvoiceForm = taxInvoiceForm;
	}
	public PaymentDetails getPaymentDetails() {
		return paymentDetails;
	}
	public void setPaymentDetails(PaymentDetails paymentDetails) {
		this.paymentDetails = paymentDetails;
	}
	public ProformaUser getProformaUser() {
		return proformaUser;
	}
	public void setProformaUser(ProformaUser proformaUser) {
		this.proformaUser = proformaUser;
	}
	public PeForm getPeForm() {
		return peForm;
	}
	public void setPeForm(PeForm peForm) {
		this.peForm = peForm;
	}
	public QueryForm getQueryForm() {
		return queryForm;
	}
	public void setQueryForm(QueryForm queryForm) {
		this.queryForm = queryForm;
	}
	public TaxInvoiceForm getTaxInvoiceForm() {
		return taxInvoiceForm;
	}
	public void setTaxInvoiceForm(TaxInvoiceForm taxInvoiceForm) {
		this.taxInvoiceForm = taxInvoiceForm;
	}
	
	

}
