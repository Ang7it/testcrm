package com.demo.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.demo.model.PaymentDetails;
import com.demo.repository.PaymentDetailsRepository;

@Service
public class PaymentDetailsService {
	@Autowired
	private PaymentDetailsRepository paymentDetailsRepository;
	public List<PaymentDetails> getPaymentDetailsForPi(Long id)
	{
		List<PaymentDetails> paymentDetails=paymentDetailsRepository.findByProformaInvoice_invoiceId(id);
		if(!paymentDetails.isEmpty()) {
			return paymentDetails;
		}else {
			return null;
		}
	}

}
