/**
 * 
 */
package org.javabase.apps.controller;

import java.util.List;

import org.javabase.apps.entity.ProductItem;
import org.javabase.apps.service.ProductItemService;
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
@RequestMapping(value="/productItem")
public class ProductItemController {
    
    @Autowired
    ProductItemService productItemService;

    @RequestMapping(method=RequestMethod.GET)
    public ModelAndView product(ModelMap m,  ModelAndView mv){
    	
    	List<ProductItem> productItes=productItemService.selectProductItem();
        m.put("item", new ProductItem());
        ModelAndView model = new ModelAndView("productItem");
		model.addObject("productItes", productItes);
        return model;
        
    }
    
    @RequestMapping(value="addItem",method=RequestMethod.POST)
    public String index(ProductItem productItem, ModelMap m){
    	
        
        if (productItemService.insert(productItem)) {
            m.put("message", "Add Catagory Success");
        }else {
            m.put("message", "Add Catagory Fail");
        }
        return "redirect:/productItem";
    }
}
