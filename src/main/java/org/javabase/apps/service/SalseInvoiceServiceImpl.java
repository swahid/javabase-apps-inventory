/**
 * 
 */
package org.javabase.apps.service;

import java.util.List;

import org.javabase.apps.entity.SalseInvoice;
import org.javabase.apps.mapper.SalseInvoiceMapper;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

/**
 * @author  Md. Rashedunnabi <rashedunnabi21@gmail.com>
 * @verison	1.0.1
 * @since	1.0.0
 */
@Service
public class SalseInvoiceServiceImpl implements SalseInvoiceService {

	@Autowired
	SalseInvoiceMapper salseInvoiceMapper;
	
	@Transactional(readOnly=true)
	public List<SalseInvoice> selectSalseInvoice() {
		return salseInvoiceMapper.selectSalseInvoice();
	}


	@Transactional
	public boolean insert(SalseInvoice salseInvoice) {
		return salseInvoiceMapper.insert(salseInvoice);
	}

}
