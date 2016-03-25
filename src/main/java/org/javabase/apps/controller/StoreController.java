/**
 * 
 */
package org.javabase.apps.controller;

import java.util.List;

import org.javabase.apps.entity.RetailInfo;
import org.javabase.apps.entity.Store;
import org.javabase.apps.service.RetailInfoService;
import org.javabase.apps.service.StoreService;
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
@RequestMapping(value="/store")
public class StoreController {
    
    @Autowired
    StoreService storeService;
    
    @Autowired
    RetailInfoService retailInfoService;

    @RequestMapping(method=RequestMethod.GET)
    public ModelAndView product(ModelMap m,  ModelAndView mv){
    	
    	List<Store> storeList=storeService.selectStore();
    	
    	List<RetailInfo> voutureList=retailInfoService.selectRetailInfo();
        m.put("store", new Store());
        ModelAndView model = new ModelAndView("store");
		model.addObject("storeList", storeList);
		model.addObject("voutureList", voutureList);
        return model;
        
    }
    
    @RequestMapping(value="addProduct",method=RequestMethod.POST)
    public String index(Store store, ModelMap m){
    	
        
        if (storeService.insert(store)) {
            m.put("message", "Add Store Success");
        }else {
            m.put("message", "Add Store Fail");
        }
        return "redirect:/store";
    }
}
