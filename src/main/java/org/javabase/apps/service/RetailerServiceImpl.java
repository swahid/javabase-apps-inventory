/**
 * 
 */
package org.javabase.apps.service;

import java.util.List;

import org.javabase.apps.entity.Retailer;
import org.javabase.apps.mapper.RetailerMapper;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

/**
 * @author  Md. Rashedunnabi <rashedunnabi21@gmail.com>
 * @verison	1.0.1
 * @since	1.0.0
 */
@Service
public class RetailerServiceImpl implements RetailerService {

	@Autowired
	RetailerMapper retailerMapper;
	
	@Transactional(readOnly=true)
	public List<Retailer> selectRetailer() {
		return retailerMapper.selectRetailer();
	}

	@Transactional
	public boolean insert(Retailer retailer) {
		return retailerMapper.insert(retailer);
	}

}
