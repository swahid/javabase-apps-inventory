/**
 * 
 */
package org.javabase.apps.controller;

import java.util.List;

import org.javabase.apps.entity.StockProduct;
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
@RequestMapping(value="/stock")
public class StockProductController {
    
    @Autowired
    StockProductService stockProductService;

    @RequestMapping(method=RequestMethod.GET)
    public ModelAndView product(ModelMap m,  ModelAndView mv){
    	
    	List<StockProduct> stockList=stockProductService.selectProductItem();
        m.put("stock", new StockProduct());
        ModelAndView model = new ModelAndView("stock");
		model.addObject("stockList", stockList);
        return model;
        
    }
    
    @RequestMapping(value="addStock",method=RequestMethod.POST)
    public String index(StockProduct stockProduct, ModelMap m){
    	
        
        if (stockProductService.insert(stockProduct)) {
            m.put("message", "Add  Success");
        }else {
            m.put("message", "Add  Fail");
        }
        return "redirect:/stock";
    }
}
