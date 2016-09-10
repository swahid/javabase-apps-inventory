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
public class ProCatagory implements Serializable {

	
	/**
	 * 
	 */
	private static final long serialVersionUID = 6050478530968755795L;
	
	private int proCatId;
	private String cat_code;
	private String cat_details;
	
	
	
	public int getProCatId() {
		return proCatId;
	}
	public void setProCatId(int proCatId) {
		this.proCatId = proCatId;
	}
	public String getCat_code() {
		return cat_code;
	}
	public void setCat_code(String cat_code) {
		this.cat_code = cat_code;
	}
	public String getCat_details() {
		return cat_details;
	}
	public void setCat_details(String cat_details) {
		this.cat_details = cat_details;
	}
	
}
