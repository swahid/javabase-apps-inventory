/**
 * 
 */
package org.javabase.apps.controller;

import org.javabase.apps.entity.User;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

/**
 * @author      Saurav Wahid <saurav@medisys.com.sa>
 * @version      1.0.1
 * @since        1.0.0
 * 
 */
@Controller
public class indexController {
    
    @RequestMapping(value="/", method=RequestMethod.GET)
    public String index(ModelMap m){
        
        m.put("user", new User());
        
        return "index";
    }
    
}
