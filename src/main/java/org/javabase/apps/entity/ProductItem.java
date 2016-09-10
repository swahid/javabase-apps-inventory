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
public class ProductItem implements Serializable {

	/**
	 * 
	 */
	private static final long serialVersionUID = -6871697113242009534L;
	
	private int itemId;
	private String itemCode;
	private String itemDetails;
	
	

	public int getItemId() {
		return itemId;
	}
	public void setItemId(int itemId) {
		this.itemId = itemId;
	}
	public String getItemCode() {
		return itemCode;
	}
	public void setItemCode(String itemCode) {
		this.itemCode = itemCode;
	}
	public String getItemDetails() {
		return itemDetails;
	}
	public void setItemDetails(String itemDetails) {
		this.itemDetails = itemDetails;
	}

	

}
