package org.javabase.apps.entity;

import java.io.Serializable;

/**
 * @author  Md. Rashedunnabi <rashedunnabi21@gmail.com>
 * @verison	1.0.1
 * @since	1.0.0
 */
public class ProductColor implements Serializable {

	/**
	 * 
	 */
	private static final long serialVersionUID = 5435197560338126969L;
	
	private String colourId;
	private String colourCode;
	private String colourName;
	public String getColourId() {
		return colourId;
	}
	public void setColourId(String colourId) {
		this.colourId = colourId;
	}
	public String getColourCode() {
		return colourCode;
	}
	public void setColourCode(String colourCode) {
		this.colourCode = colourCode;
	}
	public String getColourName() {
		return colourName;
	}
	public void setColourName(String colourName) {
		this.colourName = colourName;
	}
	

}
