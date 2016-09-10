/**
 * 
 */
package org.javabase.apps.service;

import java.util.List;

import org.javabase.apps.entity.StockProduct;
import org.javabase.apps.mapper.StockProductMapper;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

/**
 * @author      Md. Rashedunnabi <rashedunnabi21@gmail.com>
 * @verison     1.0.1
 * @since       1.0.0
 */
@Service
public class StockProductServiceImpl implements StockProductService {
    
    @Autowired
    StockProductMapper stockProductMapper;

     @Transactional(readOnly=true)
    public List<StockProduct> selectProductItem() {
        return stockProductMapper.selectProductItem();
    }

    @Transactional
    public boolean insert(StockProduct stockProduct) {
        return stockProductMapper.insert(stockProduct);
    }
    
    @Transactional(readOnly=true)
    public List<StockProduct> selectProduct(StockProduct stockProduct) {
        return stockProductMapper.selectProduct(stockProduct);
    }

}
