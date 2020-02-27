package com.demo.model;

import java.util.Collection;

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
	@OneToMany(mappedBy = "domain")
	private Collection<Organisation> organsiations;
	public Domain() {
	}
	public Domain(String domainName, Collection<Organisation> organsiations) {
		this.domainName = domainName;
		this.organsiations = organsiations;
	}
	public String getDomainName() {
		return domainName;
	}
	public void setDomainName(String domainName) {
		this.domainName = domainName;
	}
	public Collection<Organisation> getOrgansiations() {
		return organsiations;
	}
	public void addOrgansiation(Organisation organsiation) {
		if(organsiation!=null) {
		     organsiations.add(organsiation);	
		}
	}
	public Long getId() {
		return id;
	}
	
	
}
