package com.demo.model;

import java.util.Collection;

import javax.persistence.CascadeType;
import javax.persistence.ElementCollection;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.OneToMany;
import javax.validation.constraints.NotNull;

@Entity
public class Domain {
	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private Long id;
	@NotNull
	private String domainName;
	@ElementCollection
	@OneToMany(mappedBy = "domain",cascade = CascadeType.ALL)
	private Collection<Organisation> organisations;
	public Domain() {
	}
	public Domain(String domainName, Collection<Organisation> organisations) {
		this.domainName = domainName;
		this.organisations = organisations;
	}
	public String getDomainName() {
		return domainName;
	}
	public void setDomainName(String domainName) {
		this.domainName = domainName;
	}
	public Collection<Organisation> getOrgansiations() {
		return organisations;
	}
	public void addOrgansiation(Organisation organsiation) {
		if(organsiation!=null) {
		     organisations.add(organsiation);	
		}
	}
	public Long getId() {
		return id;
	}
	
	
}
