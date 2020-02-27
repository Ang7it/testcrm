package com.demo.repository;

import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.stereotype.Repository;

import com.demo.model.Organisation;

@Repository
public interface OrganisationRepository extends JpaRepository<Organisation, Long>{
	
	@Query("select o.uniqueKey,o.organisationName,o.domain from Organisation o")
	public List<Organisation> getOrgDetailsForDashboard();
	
	@Query("select o.proformaInvoiceList from Organisation o where o.id=?1")
	public Organisation getProformaDetailsForOrgById(Long id);
	
	@Query("select o.organisationName from Organisation o left join Domain d on o.id=d.id where d.id=?1")
	public List<Organisation> getOrgForDomByDomId(Long id);
	
}
