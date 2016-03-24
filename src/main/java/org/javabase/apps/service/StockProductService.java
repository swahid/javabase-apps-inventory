package org.javabase.apps.service;

import java.util.List;

import org.javabase.apps.entity.StockProduct;


/**
 * @author  Md. Rashedunnabi <rashedunnabi21@gmail.com>
 * @verison	1.0.1
 * @since	1.0.0
 */

public interface StockProductService {
    
	 public List<StockProduct> selectProductItem();
	    
	 public boolean insert(StockProduct stockProduct);
}
