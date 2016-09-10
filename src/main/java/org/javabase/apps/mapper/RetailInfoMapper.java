package org.javabase.apps.mapper;

import java.util.List;

import org.javabase.apps.entity.RetailInfo;


/**
 * @author      Md. Rashedunnabi <rashedunnabi21@gmail.com>
 * @verison     1.0.1
 * @since       1.0.0
 */

public interface RetailInfoMapper {
    
     public List<RetailInfo> selectRetailInfo();
        
     public boolean insert(RetailInfo retailInfo);
}
