/**
 * 
 */
package org.javabase.apps.controller;

import java.util.List;

import org.javabase.apps.entity.User;
import org.javabase.apps.service.UserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

/**
 * @author      Saurav Wahid <saurav@medisys.com.sa>
 * @version     1.0.1
 * @since       1.0.0
 * 
 */
@Controller
public class adminController {
    
    @Autowired
    UserService userservice;

    @RequestMapping(value="/admin", method=RequestMethod.GET)
    public String index(ModelMap m){
        
        List <User> userList= userservice.selectUser();
        
        User user=userList.get(0);
        m.put("message", "Inventory Management System");
        m.put("user", user.getUserName());
        
        return "admin";
        
    }
}
