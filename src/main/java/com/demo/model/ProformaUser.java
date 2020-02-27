package com.demo.model;

import java.sql.Timestamp;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.OneToOne;

@Entity
public class ProformaUser {
	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private Long id;
	@OneToOne
	@JoinColumn
	private Organisation organisation;
	private String userName;
	private String emailId;
	private String contactNumber;
	private String userAddress;
	private String nodalOfficer;
	private String landlineNUmber;
	@Column(nullable = false,columnDefinition="TIMESTAMP DEFAULT CURRENT_TIMESTAMP")
	private Timestamp piCreationTimestamp;
	public ProformaUser() {
	}
	public ProformaUser(String userName, String emailId, String contactNumber, String userAddress, String nodalOfficer,
			String landlineNUmber) {
		this.userName = userName;
		this.emailId = emailId;
		this.contactNumber = contactNumber;
		this.userAddress = userAddress;
		this.nodalOfficer = nodalOfficer;
		this.landlineNUmber = landlineNUmber;
	}
	public String getUserName() {
		return userName;
	}
	public void setUserName(String userName) {
		this.userName = userName;
	}
	public String getEmailId() {
		return emailId;
	}
	public void setEmailId(String emailId) {
		this.emailId = emailId;
	}
	public String getContactNumber() {
		return contactNumber;
	}
	public void setContactNumber(String contactNumber) {
		this.contactNumber = contactNumber;
	}
	public String getUserAddress() {
		return userAddress;
	}
	public void setUserAddress(String userAddress) {
		this.userAddress = userAddress;
	}
	public String getNodalOfficer() {
		return nodalOfficer;
	}
	public void setNodalOfficer(String nodalOfficer) {
		this.nodalOfficer = nodalOfficer;
	}
	public String getLandlineNUmber() {
		return landlineNUmber;
	}
	public void setLandlineNUmber(String landlineNUmber) {
		this.landlineNUmber = landlineNUmber;
	}
	public Timestamp getPiCreationTimestamp() {
		return piCreationTimestamp;
	}
	public void setPiCreationTimestamp(Timestamp piCreationTimestamp) {
		this.piCreationTimestamp = piCreationTimestamp;
	}
	public Long getId() {
		return id;
	}
}
