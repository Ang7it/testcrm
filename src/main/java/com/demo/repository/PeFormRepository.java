package com.demo.repository;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import com.demo.model.PeForm;

@Repository
public interface PeFormRepository extends JpaRepository<PeForm, Long> {

}
