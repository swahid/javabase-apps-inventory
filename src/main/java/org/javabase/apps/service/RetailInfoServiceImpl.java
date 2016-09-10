/**
 * 
 */
package org.javabase.apps.service;

import java.util.List;

import org.javabase.apps.entity.RetailInfo;
import org.javabase.apps.mapper.RetailInfoMapper;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

/**
 * @author  Md. Rashedunnabi <rashedunnabi21@gmail.com>
 * @verison	1.0.1
 * @since	1.0.0
 */

@Service
public class RetailInfoServiceImpl implements RetailInfoService {

	@Autowired
	RetailInfoMapper retailInfoMapper;
	
	@Transactional(readOnly=true)
	public List<RetailInfo> selectRetailInfo() {
		return retailInfoMapper.selectRetailInfo();
	}
	
	@Transactional
	public boolean insert(RetailInfo retailInfo) {
		return retailInfoMapper.insert(retailInfo);
	}

}
