/**
 * 
 */
package org.javabase.apps.service;

import java.util.List;

import org.javabase.apps.entity.Company;
import org.javabase.apps.mapper.CompanyMapper;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

/**
 * @author  Md. Rashedunnabi <rashedunnabi21@gmail.com>
 * @verison	1.0.1
 * @since	1.0.0
 */
@Service
public class CompanyServiceImpl implements CompanyService {

	 @Autowired
	CompanyMapper companyMapper;

	 @Transactional(readOnly=true)
	public List<Company> selectCompany() {
		return companyMapper.selectCompany();
	}

	 @Transactional
	public boolean insert(Company company) {
		return companyMapper.insert(company);
	}
	
	 
	

}
