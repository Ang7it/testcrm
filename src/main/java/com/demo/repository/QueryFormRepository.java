package com.demo.repository;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import com.demo.model.QueryForm;

@Repository
public interface QueryFormRepository extends JpaRepository<QueryForm, Long> {

}