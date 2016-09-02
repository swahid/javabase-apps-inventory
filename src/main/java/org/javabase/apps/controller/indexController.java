/**
 * 
 */
package org.javabase.apps.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

/**
 * @author      Saurav Wahid <saurav@medisys.com.sa>
 * @version     1.0.1
 * @since       1.0.0
 * 
 */
@Controller
@RequestMapping(value="/")
public class indexController {
    
    @RequestMapping(method=RequestMethod.GET)
    public String index(){
        return "index";
    }
    
}
