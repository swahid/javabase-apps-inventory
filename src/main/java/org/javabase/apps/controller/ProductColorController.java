/**
 * 
 */
package org.javabase.apps.controller;

import java.util.List;

import org.javabase.apps.entity.ProductColor;
import org.javabase.apps.service.ProductColorService;
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
@RequestMapping(value="/productColor")
public class ProductColorController {
    
    @Autowired
    ProductColorService productColorService;

    @RequestMapping(method=RequestMethod.GET)
    public ModelAndView product(ModelMap m,  ModelAndView mv){
        
        List<ProductColor> productColorList=productColorService.selectProductColor();
        m.put("color", new ProductColor());
        ModelAndView model = new ModelAndView("productColor");
        model.addObject("colorList", productColorList);
        return model;
        
    }
    
    @RequestMapping(value="addColor",method=RequestMethod.POST)
    public String index(ProductColor productColor, ModelMap m){
        
        
        if (productColorService.insert(productColor)) {
            m.put("message", "Add Color Success");
        }else {
            m.put("message", "Add Color Fail");
        }
        return "redirect:/productColor";
    }
}
