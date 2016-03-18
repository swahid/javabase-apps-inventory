/**
 * @des
 * 
 */
package org.javabase.apps.controller;

import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

/**
 * @author	Saurav Wahid<saurav1161@gmail.com>
 * @version	1.0.1
 * @since	1.0.0
 */
@Controller
@RequestMapping(value="/login")
public class LoginController {
    
    @RequestMapping(method=RequestMethod.GET)
    public String index(ModelMap m){
        
        m.put("user", "saurav");
        
        return "login";
    }
    
}
