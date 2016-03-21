package org.javabase.apps.mapper;

import java.util.List;

import org.javabase.apps.entity.ProCatagory;
import org.javabase.apps.entity.ProductItem;
import org.javabase.apps.entity.User;


/**
 * @author  Md. Rashedunnabi <rashedunnabi21@gmail.com>
 * @verison	1.0.1
 * @since	1.0.0
 */

public interface ProductItemMapper {
    
	 public List<ProductItem> selectProductItem();
	    
	 public boolean insert(ProductItem productitem);
}
