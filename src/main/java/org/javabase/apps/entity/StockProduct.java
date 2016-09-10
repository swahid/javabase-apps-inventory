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
public class StockProduct implements Serializable {

	/**
	 * 
	 */
	private static final long serialVersionUID = 8758178986479916904L;
	
	private int stockId;
	private String product;
	private int quantity;
	private double unitPrice;
	private double salsePrice;
	private double topLess;

	public int getStockId() {
		return stockId;
	}
	public void setStockId(int stockId) {
		this.stockId = stockId;
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
