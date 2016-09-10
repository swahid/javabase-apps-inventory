/**
 * 
 */
package org.javabase.apps.controller;

import java.util.List;

import org.javabase.apps.entity.RetailInfo;
import org.javabase.apps.service.RetailInfoService;
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
@RequestMapping(value="/retail")
public class RetailInfoController {
    
    @Autowired
    RetailInfoService retailInfoService;

    @RequestMapping(method=RequestMethod.GET)
    public ModelAndView product(ModelMap m,  ModelAndView mv){
        
        List<RetailInfo> retailList=retailInfoService.selectRetailInfo();
        m.put("retail", new RetailInfo());
        ModelAndView model = new ModelAndView("retail");
        model.addObject("retailList", retailList);
        return model;
        
    }
    
    @RequestMapping(value="addRetail",method=RequestMethod.POST)
    public String index(RetailInfo retailInfo, ModelMap m){
        
        
        if (retailInfoService.insert(retailInfo)) {
            m.put("message", "Add  Success");
        }else {
            m.put("message", "Add  Fail");
        }
        return "redirect:/retail";
    }
}
