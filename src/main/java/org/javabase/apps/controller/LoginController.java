/**
 * @des
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
 * @author	Saurav Wahid<saurav1161@gmail.com>
 * @version	1.0.1
 * @since	1.0.0
 */
@Controller
@RequestMapping(value="/login")
public class LoginController {
    
    @Autowired
    UserService userservice;
    
    @RequestMapping(method=RequestMethod.GET)
    public String index(ModelMap m, User user){
        
        m.put("user", new User());
        
        return "login";
    }
    
    @RequestMapping(method=RequestMethod.POST)
    public String login(User user, ModelMap m){
        
        List<User> userList=userservice.login(user);
        if (userList.size()>0) {
            m.put("message", "login sucess ");
            return "redirect:/show";
        }else {
            m.put("message", "login Fail");
            return "redirect:/";
            
        }
    }
    
    @RequestMapping(value="registration",method=RequestMethod.POST)
    public String index(User user, ModelMap m){
        
        if (userservice.insert(user)) {
            m.put("message", "registration Success");
        }else {
            m.put("message", "registration Fail");
        }
        return "redirect:/";
    }
    
}
