package org.javabase.apps.service;

import java.util.List;

import org.javabase.apps.entity.ProductItem;
import org.javabase.apps.mapper.ProductItemMapper;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

@Service
public class ProductItemServiceImpl implements ProductItemService{

    @Autowired
    ProductItemMapper  productItemMapper;

    @Transactional(readOnly=true)
	public List<ProductItem> selectProductItem() {
		return productItemMapper.selectProductItem();
	}

    @Transactional
	public boolean insert(ProductItem productitem) {
		return productItemMapper.insert(productitem);
	}
   
}
