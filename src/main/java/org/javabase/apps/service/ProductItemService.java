package org.javabase.apps.service;

import java.util.List;

import org.javabase.apps.entity.ProductItem;


/**
 * @author      Md. Rashedunnabi <rashedunnabi21@gmail.com>
 * @verison     1.0.1
 * @since       1.0.0
 */

public interface ProductItemService {
    
    public List<ProductItem> selectProductItem();
    
    public boolean insert(ProductItem productitem);
}
