/**
 * @des
 * 
 */
package org.javabase.apps.controller;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.javabase.apps.entity.User;
import org.javabase.apps.service.UserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

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
        
        return "login";
    }
    
    @ResponseBody
    @RequestMapping(method=RequestMethod.POST)
    public String login(ModelMap m, @RequestBody User user){
        
        List<User> userList=userservice.login(user);
        if (userList.size()>0) {
            m.put("message", "login sucess ");
            return "redirect:/profile";
        }else {
            m.put("message", "login Fail");
            return "redirect:/";
            
        }
    }
    
    @ResponseBody
    @RequestMapping(value="registration",method=RequestMethod.POST)
    public Map<String, Object> index(@RequestBody User user){
        Map<String, Object> response= new HashMap<String, Object>();
        userservice.insert(user);
        response.put("suceess", true);
        
        return response;
    }
    
}
