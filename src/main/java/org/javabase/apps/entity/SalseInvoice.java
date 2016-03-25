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
public class SalseInvoice implements Serializable {

	/**
	 * 
	 */
	private static final long serialVersionUID = -3505742126161813761L;
	
	
	private String salId;
	private String invoice;
	private String product;
	private int quantity;
	private double unitPrice;
	private double salsePrice;
	private double discount;
	private Date dateTime;
	
	
	public String getSalId() {
		return salId;
	}
	public void setSalId(String salId) {
		this.salId = salId;
	}
	public String getInvoice() {
		return invoice;
	}
	public void setInvoice(String invoice) {
		this.invoice = invoice;
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
	public double getDiscount() {
		return discount;
	}
	public void setDiscount(double discount) {
		this.discount = discount;
	}
	public Date getDateTime() {
		return dateTime;
	}
	public void setDateTime(Date dateTime) {
		this.dateTime = dateTime;
	}
	
}
