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
	
	public List<Organisation> findByDomain_id(Long id);

}
