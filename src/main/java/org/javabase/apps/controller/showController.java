/**
 * 
 */
package org.javabase.apps.controller;

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
public class showController {
	
//	@Autowired
//	UserService userservice;

	@RequestMapping(value="/show", method=RequestMethod.GET)
	public String index(ModelMap m){
		
//		List <User> userList= userservice.selectAll();
		
//		User user=userList.get(0);
		m.put("message", "Inventory Management System");
		
		return "showMessage";
		
	}
}
