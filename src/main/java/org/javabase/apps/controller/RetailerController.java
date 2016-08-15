/**
 * 
 */
package org.javabase.apps.controller;

import java.util.List;

import org.javabase.apps.entity.Retailer;
import org.javabase.apps.service.RetailerService;
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
@RequestMapping(value="/retailer")
public class RetailerController {
    
    @Autowired
    RetailerService retailerService;

    @RequestMapping(method=RequestMethod.GET)
    public ModelAndView retailer(ModelMap m,  ModelAndView mv){
        
        List<Retailer> retailerList=retailerService.selectRetailer();
        m.put("retailer", new Retailer());
        ModelAndView model = new ModelAndView("retailer");
        model.addObject("retailerList", retailerList);
        return model;
        
    }
    
    @RequestMapping(value="addRetailer",method=RequestMethod.POST)
    public String index(Retailer retailer, ModelMap m){
        
        
        if (retailerService.insert(retailer)) {
            m.put("message", "Add  Success");
        }else {
            m.put("message", "Add  Fail");
        }
        return "redirect:/retailer";
    }
}
