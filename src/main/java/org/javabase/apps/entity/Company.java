/**
 * 
 */
package org.javabase.apps.entity;

import java.io.Serializable;

/**
 * @author  Md. Rashedunnabi <rashedunnabi21@gmail.com>
 * @verison	1.0.1
 * @since	1.0.0
 */
public class Company implements Serializable {

	/**
	 * 
	 */
	private static final long serialVersionUID = 3843827811010295738L;
	
	private int companyId;
	private String companyCode;
	private String companyName;
	private String details;
	
	

	public int getCompanyId() {
		return companyId;
	}
	public void setCompanyId(int companyId) {
		this.companyId = companyId;
	}
	public String getCompanyCode() {
		return companyCode;
	}
	public void setCompanyCode(String companyCode) {
		this.companyCode = companyCode;
	}
	public String getCompanyName() {
		return companyName;
	}
	public void setCompanyName(String companyName) {
		this.companyName = companyName;
	}
	public String getDetails() {
		return details;
	}
	public void setDetails(String details) {
		this.details = details;
	}
	
}
