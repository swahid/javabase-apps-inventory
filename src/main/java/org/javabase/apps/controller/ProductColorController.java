/**
 * 
 */
package org.javabase.apps.controller;

import java.util.List;

import org.javabase.apps.entity.ProCatagory;
import org.javabase.apps.service.ProCatagoryService;
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
    ProCatagoryService procatagoryservice;

    @RequestMapping(method=RequestMethod.GET)
    public ModelAndView product(ModelMap m,  ModelAndView mv){
    	
//    	List<ProCatagory> catagories=procatagoryservice.selectProCatagory();
        m.put("procatagory", new ProCatagory());
        ModelAndView model = new ModelAndView("productColor");
//		model.addObject("catagoryList", catagories);
        return model;
        
    }
    
    @RequestMapping(value="addCatagory",method=RequestMethod.POST)
    public String index(ProCatagory procatagory, ModelMap m){
    	
        
        if (procatagoryservice.insert(procatagory)) {
            m.put("message", "Add Catagory Success");
        }else {
            m.put("message", "Add Catagory Fail");
        }
        return "redirect:/proCatagory";
    }
}
