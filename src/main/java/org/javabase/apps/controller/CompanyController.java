/**
 * 
 */
package org.javabase.apps.controller;

import java.util.List;

import org.javabase.apps.entity.Company;
import org.javabase.apps.service.CompanyService;
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
@RequestMapping(value="/company")
public class CompanyController {
    
    @Autowired
    CompanyService companyService;

    @RequestMapping(method=RequestMethod.GET)
    public ModelAndView product(ModelMap m,  ModelAndView mv){
        
        List<Company> companyList=companyService.selectCompany();
        m.put("company", new Company());
        ModelAndView model = new ModelAndView("company");
        model.addObject("companyList", companyList);
        return model;
        
    }
    
    @RequestMapping(value="addCompany",method=RequestMethod.POST)
    public String index(Company company, ModelMap m){
        
        
        if (companyService.insert(company)) {
            m.put("message", "Add Company Success");
        }else {
            m.put("message", "Add Company Fail");
        }
        return "redirect:/company";
    }
}
