package org.javabase.apps.mapper;

import java.util.List;

import org.javabase.apps.entity.Invoice;


/**
 * @author      Saurav Wahid<saurav1161@gmail.com>
 * @verison     1.0.1
 * @since       1.0.0
 * 
 */

public interface InvoiceMapper {
    
	 public List<Invoice> selectAll();
	    
	 public boolean insert(Invoice invoice);
}
