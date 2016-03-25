/**
 * 
 */
package org.javabase.apps.controller;

import java.util.List;

import org.javabase.apps.entity.Company;
import org.javabase.apps.entity.ProCatagory;
import org.javabase.apps.entity.ProductColor;
import org.javabase.apps.entity.ProductItem;
import org.javabase.apps.entity.RetailInfo;
import org.javabase.apps.entity.StockProduct;
import org.javabase.apps.entity.Store;
import org.javabase.apps.service.CompanyService;
import org.javabase.apps.service.ProCatagoryService;
import org.javabase.apps.service.ProductColorService;
import org.javabase.apps.service.ProductItemService;
import org.javabase.apps.service.RetailInfoService;
import org.javabase.apps.service.StockProductService;
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

    @Autowired
    CompanyService companyService;
    
    @Autowired
    ProCatagoryService procatagoryservice;
    
    @Autowired
    ProductItemService productItemService;
    
    
    @Autowired
    ProductColorService productColorService;
    
    @Autowired
    StockProductService stockProductService;
    
    
    @RequestMapping(method=RequestMethod.GET)
    public ModelAndView product(ModelMap m,  ModelAndView mv){
    	
    	List<Store> storeList=storeService.selectStore();
    	List<RetailInfo> voutureList=retailInfoService.selectRetailInfo();
    	List<Company> companyList=companyService.selectCompany();
    	List<ProductColor> productColorList=productColorService.selectProductColor();
    	List<ProductItem> productIteList=productItemService.selectProductItem();
    	List<ProCatagory> catagoryList=procatagoryservice.selectProCatagory();
    	
        m.put("store", new Store());
        ModelAndView model = new ModelAndView("store");
        
        
		model.addObject("storeList", storeList);
		model.addObject("voutureList", voutureList);
		model.addObject("companyList", companyList);
		model.addObject("catagoryList", catagoryList);
		model.addObject("productIteList", productIteList);
		model.addObject("productColorList", productColorList);
		
        return model;
        
    }
    
    @RequestMapping(value="addProduct",method=RequestMethod.POST)
    public String index(Store store, ModelMap m){
    	
       store.setProduct(store.getCompanyCode()+store.getCat_code()+store.getItemCode()+store.getColorCode());
       
       StockProduct stockProduct=new StockProduct();
       
       		stockProduct.setProduct(store.getProduct());
       		stockProduct.setQuantity(store.getQuantity());
       		stockProduct.setSalsePrice(store.getSalsePrice());
       		stockProduct.setUnitPrice(store.getUnitPrice());
       		stockProduct.setTopLess(store.getTopLess());
       
        if (storeService.insert(store) && stockProductService.insert(stockProduct)) {
            m.put("message", "Add Store Success");
        }else {
            m.put("message", "Add Store Fail");
        }
        return "redirect:/store";
    }
}
