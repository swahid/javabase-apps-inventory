/**
 * 
 */
package org.javabase.apps.controller;

import java.util.List;

import org.javabase.apps.entity.StockProduct;
import org.javabase.apps.service.InvoiceService;
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
@RequestMapping(value="/sales")
public class SalesController {
    
    @Autowired
    InvoiceService invoiceService;
    
    @Autowired
    StockProductService stockService;

    @RequestMapping(method=RequestMethod.GET)
    public ModelAndView sales(ModelAndView mv){
        ModelAndView model = new ModelAndView("sales");
        model.addObject("stock", new StockProduct());
        
        return model;
    }
    
    @RequestMapping(value="searchInvoice",method=RequestMethod.POST)
    public String index( StockProduct stockProduct, ModelMap m){
        ModelAndView model = new ModelAndView("sales");
        List<StockProduct> stockList = stockService.selectProduct(stockProduct);
        if (stockList.size()>0) {
            model.addObject("addproduct", stockList);
        }
        return "redirect:/sales";
    }
}
