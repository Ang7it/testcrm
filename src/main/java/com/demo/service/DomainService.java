package com.demo.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.demo.model.Domain;
import com.demo.repository.DomainRepository;

@Service
public class DomainService {
	@Autowired
	private DomainRepository domainRepository;

	public List<Domain> getListOfDomains() {
		List<Domain> domainList = domainRepository.findAll();
		if (!domainList.isEmpty()) {
			return domainList;
		} else {
			return null;
		}
	}
}
