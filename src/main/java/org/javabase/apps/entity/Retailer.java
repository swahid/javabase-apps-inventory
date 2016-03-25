/**
 * 
 */
package org.javabase.apps.entity;

import java.io.Serializable;
import java.util.Date;

/**
 * @author  Md. Rashedunnabi <rashedunnabi21@gmail.com>
 * @verison	1.0.1
 * @since	1.0.0
 */
public class Retailer implements Serializable {

	/**
	 * 
	 */
	private static final long serialVersionUID = -2843510929251307416L;
	
	private int retrilerId;
	private String storeName;
	private String name;
	private String contact;
	private String location;
	private Date date;
	
	
	
	public int getRetrilerId() {
		return retrilerId;
	}
	public void setRetrilerId(int retrilerId) {
		this.retrilerId = retrilerId;
	}
	public String getStoreName() {
		return storeName;
	}
	public void setStoreName(String storeName) {
		this.storeName = storeName;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public String getContact() {
		return contact;
	}
	public void setContact(String contact) {
		this.contact = contact;
	}
	public String getLocation() {
		return location;
	}
	public void setLocation(String location) {
		this.location = location;
	}
	public Date getDate() {
		return date;
	}
	public void setDate(Date date) {
		this.date = date;
	}

}
