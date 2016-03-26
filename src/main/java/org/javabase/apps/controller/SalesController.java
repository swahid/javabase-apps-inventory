/**
 * 
 */
package org.javabase.apps.controller;

import java.util.List;

import org.javabase.apps.entity.Invoice;
import org.javabase.apps.service.InvoiceService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

/**
 * @author      Saurav Wahid <saurav@medisys.com.sa>
 * @version     1.0.1
 * @since       1.0.0
 * 
 */
@Controller
@RequestMapping(value="/sales")
public class SalesController {
    
    @Autowired
    InvoiceService invoiceService;

    @RequestMapping(method=RequestMethod.GET)
    public ModelAndView sales(ModelMap m,  ModelAndView mv){
        
        List<Invoice> invoiceList=invoiceService.selectAll();
        m.put("sales", new Invoice());
        ModelAndView model = new ModelAndView("sales");
        model.addObject("invoiceList", invoiceList);
        return model;
        
    }
    
    @RequestMapping(value="addInvoice",method=RequestMethod.POST)
    public String index(Invoice invoice, ModelMap m){
        
        if (invoiceService.insert(invoice)) {
            m.put("message", "Add  Success");
        }else {
            m.put("message", "Add  Fail");
        }
        return "redirect:/salse";
    }
}
