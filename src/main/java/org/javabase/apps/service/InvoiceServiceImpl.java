/**
 * 
 */
package org.javabase.apps.service;

import java.util.List;

import org.javabase.apps.entity.Invoice;
import org.javabase.apps.mapper.InvoiceMapper;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

/**
 * @author      Saurav Wahid<saurav1161@gmail.com>
 * @verison     1.0.1
 * @since       1.0.0
 * 
 */

@Service
public class InvoiceServiceImpl implements InvoiceService {

    @Autowired
    InvoiceMapper invoiceMapper;
    
    @Transactional(readOnly=true)
    public List<Invoice> selectAll() {
        return invoiceMapper.selectAll();
    }
    
    @Transactional
    public boolean insert(Invoice salseInvoice) {
        return invoiceMapper.insert(salseInvoice);
    }

}
