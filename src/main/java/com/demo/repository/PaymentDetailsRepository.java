package com.demo.repository;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import com.demo.model.PaymentDetails;

@Repository
public interface PaymentDetailsRepository extends JpaRepository<PaymentDetails, Long> {

}
