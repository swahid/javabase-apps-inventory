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
public class RetailInfo implements Serializable {

	/**
	 * 
	 */
	
	private static final long serialVersionUID = 7823756089911555518L;

	private int retailId;
	private String contact;
	private String voutureNo;
	private int quantity;
	private double totalAmount;
	private double pay;
	
	public int getRetailId() {
		return retailId;
	}
	public void setRetailId(int retailId) {
		this.retailId = retailId;
	}
	public String getContact() {
		return contact;
	}
	public void setContact(String contact) {
		this.contact = contact;
	}
	public String getVoutureNo() {
		return voutureNo;
	}
	public void setVoutureNo(String voutureNo) {
		this.voutureNo = voutureNo;
	}
	public int getQuantity() {
		return quantity;
	}
	public void setQuantity(int quantity) {
		this.quantity = quantity;
	}
	public double getTotalAmount() {
		return totalAmount;
	}
	public void setTotalAmount(double totalAmount) {
		this.totalAmount = totalAmount;
	}
	public double getPay() {
		return pay;
	}
	public void setPay(double pay) {
		this.pay = pay;
	}

	
}
