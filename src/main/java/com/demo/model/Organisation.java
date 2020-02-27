package com.demo.model;

import java.util.Collection;

import javax.persistence.ElementCollection;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.OneToMany;
import javax.persistence.OneToOne;
import javax.validation.constraints.NotNull;

@Entity
public class Organisation {
	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private Long id;
	@NotNull
	private String uniqueKey;
	private String organisationName;
	@ManyToOne
	@JoinColumn(nullable = false)
	private Domain domain;
	@ElementCollection
	@OneToMany(mappedBy = "organisation")
    private Collection<ProformaInvoice> proformaInvoiceList;
	@OneToOne(mappedBy = "organisation")
	private ProformaUser proformaUSer;
	public Organisation() {
	}
	public Organisation(String organisationName,String uniqueKey, Domain domainId, Collection<ProformaInvoice> prformaInvoice) {
		this.organisationName = organisationName;
		this.domain = domainId;
		this.proformaInvoiceList = prformaInvoice;
		this.uniqueKey=uniqueKey;
	}
	public String getOrganisationName() {
		return organisationName;
	}
	public void setOrganisationName(String organisationName) {
		this.organisationName = organisationName;
	}
	public Domain getDomainId() {
		return domain;
	}
	public void setDomainId(Domain domainId) {
		this.domain = domainId;
	}
	public Collection<ProformaInvoice> getPrformaInvoice() {
		return proformaInvoiceList;
	}
	public void addPrformaInvoice(ProformaInvoice proformaInvoice) {
		if(proformaInvoice!=null) {
		    proformaInvoiceList.add(proformaInvoice);	
		}
	}
	public Long getId() {
		return id;
	}
	public String getUniqueKey() {
		return uniqueKey;
	}
	public void setUniqueKey(String uniqueKey) {
		this.uniqueKey = uniqueKey;
	}
	
    
    
}
