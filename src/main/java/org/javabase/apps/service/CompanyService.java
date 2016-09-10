package org.javabase.apps.service;

import java.util.List;

import org.javabase.apps.entity.Company;


/**
 * @author      Md. Rashedunnabi <rashedunnabi21@gmail.com>
 * @verison     1.0.1
 * @since       1.0.0
 */

public interface CompanyService {
    
     public List<Company> selectCompany();
        
     public boolean insert(Company company);
}
