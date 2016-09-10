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
public class Store extends BaseEntity implements Serializable {

	/**
	 * 
	 */
	private static final long serialVersionUID = 3679154471700235587L;
	
	private int storeId;
	private String voutureNo;
	private String product;
	private int quantity;
	private double unitPrice;
	private double salsePrice;
	private double topLess;
	
	
	
	public int getStoreId() {
		return storeId;
	}
	public void setStoreId(int storeId) {
		this.storeId = storeId;
	}
	public String getVoutureNo() {
		return voutureNo;
	}
	public void setVoutureNo(String voutureNo) {
		this.voutureNo = voutureNo;
	}
	public String getProduct() {
		return product;
	}
	public void setProduct(String product) {
		this.product = product;
	}
	public int getQuantity() {
		return quantity;
	}
	public void setQuantity(int quantity) {
		this.quantity = quantity;
	}
	public double getUnitPrice() {
		return unitPrice;
	}
	public void setUnitPrice(double unitPrice) {
		this.unitPrice = unitPrice;
	}
	public double getSalsePrice() {
		return salsePrice;
	}
	public void setSalsePrice(double salsePrice) {
		this.salsePrice = salsePrice;
	}
	public double getTopLess() {
		return topLess;
	}
	public void setTopLess(double topLess) {
		this.topLess = topLess;
	}

}
