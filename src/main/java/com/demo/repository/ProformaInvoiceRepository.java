package com.demo.repository;

import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.stereotype.Repository;

import com.demo.model.ProformaInvoice;

@Repository
public interface ProformaInvoiceRepository extends JpaRepository<ProformaInvoice, Long> {
	
     public List<ProformaInvoice> findByOrganisation_Id(Long id);
     
     public ProformaInvoice findByPiNumber(String piNumber);
}
