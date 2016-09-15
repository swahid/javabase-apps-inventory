/**
 * 
 */
package org.javabase.apps.controller;

import javax.servlet.http.HttpSession;

import org.javabase.apps.entity.User;
import org.javabase.apps.service.UserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.security.core.userdetails.UserDetails;
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
    
	@Autowired
    UserService userservice;
    
    @Autowired
    HttpSession response;
    
    @RequestMapping(method=RequestMethod.GET)
    public String index(){
        
    	Object principal = SecurityContextHolder.getContext().getAuthentication().getPrincipal();

    	if (principal instanceof UserDetails) {
    		String username = ((UserDetails) principal).getUsername();
    		User user = userservice.findByUserName(username);
    	    response.setAttribute("userDeatils", user);
    	}
        
        return "index";
        
    }
    
}
