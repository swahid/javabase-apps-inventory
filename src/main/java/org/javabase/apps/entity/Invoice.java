/**
 * 
 */
package org.javabase.apps.entity;

import java.io.Serializable;
import java.util.Date;

/**
 * @author      Saurav Wahid <saurav1161@gmail.com>
 * @verison     1.0.1
 * @since       1.0.0
 */
public class Invoice implements Serializable {

    private static final long serialVersionUID = -3505742126161813761L;
    
    
    private String invoiceNo;
    private String product;
    private Date salesDate;
    private String sellerId;
    private String customerName;
    private String customerNo;
    
    public String getSeller() {
        return sellerId;
    }
    public void setSeller(String seller) {
        this.sellerId = seller;
    }
    public String getInvoiceNo() {
        return invoiceNo;
    }
    public void setInvoiceNo(String invoiceNo) {
        this.invoiceNo = invoiceNo;
    }
    public String getCustomerName() {
        return customerName;
    }
    public void setCustomerName(String customerName) {
        this.customerName = customerName;
    }
    public String getCustomerNo() {
        return customerNo;
    }
    public void setCustomerNo(String customerNo) {
        this.customerNo = customerNo;
    }
    public String getProduct() {
        return product;
    }
    public void setProduct(String product) {
        this.product = product;
    }
    public Date getSalesDate() {
        return salesDate;
    }
    public void setSalesDate(Date salesDate) {
        this.salesDate = salesDate;
    }
    
}
