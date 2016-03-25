/**
 * 
 */
package org.javabase.apps.controller;

import java.util.List;

import org.javabase.apps.entity.SalseInvoice;
import org.javabase.apps.service.SalseInvoiceService;
import org.javabase.apps.service.StockProductService;
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
@RequestMapping(value="/salse")
public class SalseInvoiceController {
    
    @Autowired
    SalseInvoiceService salseInvoiceService;

    @RequestMapping(method=RequestMethod.GET)
    public ModelAndView product(ModelMap m,  ModelAndView mv){
    	
    	List<SalseInvoice> invoiceList=salseInvoiceService.selectSalseInvoice();
        m.put("salse", new SalseInvoice());
        ModelAndView model = new ModelAndView("salse");
		model.addObject("invoiceList", invoiceList);
        return model;
        
    }
    
    @RequestMapping(value="addInvoice",method=RequestMethod.POST)
    public String index(SalseInvoice salseInvoice, ModelMap m){
    	
        
        if (salseInvoiceService.insert(salseInvoice)) {
            m.put("message", "Add  Success");
        }else {
            m.put("message", "Add  Fail");
        }
        return "redirect:/salse";
    }
}
