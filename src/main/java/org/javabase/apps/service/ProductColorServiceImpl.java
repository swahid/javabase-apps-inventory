/**
 * 
 */
package org.javabase.apps.service;

import java.util.List;

import org.javabase.apps.entity.ProductColor;
import org.javabase.apps.mapper.ProductColorMapper;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

/**
 * @author  Md. Rashedunnabi <rashedunnabi21@gmail.com>
 * @verison	1.0.1
 * @since	1.0.0
 */
@Service
public class ProductColorServiceImpl implements ProductColorService {

	 @Autowired
	ProductColorMapper productColorMapper;
	
	 @Transactional(readOnly=true)
	public List<ProductColor> selectProductColor() {
		return productColorMapper.selectProductColor();
	}

	@Transactional
	public boolean insert(ProductColor procatagory) {
		return productColorMapper.insert(procatagory);
	}

}
