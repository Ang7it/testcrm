package com.demo.repository;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.stereotype.Repository;

import com.demo.model.Domain;

@Repository
public interface DomainRepository extends JpaRepository<Domain, Long>{
	
}
