package com.demo.dto;

public class DashboardDetails {
    private String domainName;
    private String organisatioName;
    private String orgUniqueKey;
    private String piNumber;
    private String projectNumber;
    
   	public DashboardDetails() {

	}
	public DashboardDetails(String domainName, String organisatioName, String orgUniqueKey,
			String piNumber, String projectNumber) {
	
		this.domainName = domainName;
		this.organisatioName = organisatioName;
		this.orgUniqueKey = orgUniqueKey;
		this.piNumber = piNumber;
		this.projectNumber = projectNumber;
	}
	public String getDomainName() {
		return domainName;
	}
	public void setDomainName(String domainName) {
		this.domainName = domainName;
	}
	public String getOrganisatioName() {
		return organisatioName;
	}
	public void setOrganisatioName(String organisatioName) {
		this.organisatioName = organisatioName;
	}
	public String getOrgUniqueKey() {
		return orgUniqueKey;
	}
	public void setOrgUniqueKey(String orgUniqueKey) {
		this.orgUniqueKey = orgUniqueKey;
	}
	public String getPiNumber() {
		return piNumber;
	}
	public void setPiNumber(String piNumber) {
		this.piNumber = piNumber;
	}
	public String getProjectNumber() {
		return projectNumber;
	}
	public void setProjectNumber(String projectNumber) {
		this.projectNumber = projectNumber;
	}
}
