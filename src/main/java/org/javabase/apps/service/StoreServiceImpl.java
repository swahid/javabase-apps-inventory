package org.javabase.apps.service;

import java.util.List;

import org.javabase.apps.entity.Store;
import org.javabase.apps.mapper.StoreMapper;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

@Service
public class StoreServiceImpl implements StoreService{

    @Autowired
    StoreMapper  storeMapper;

    @Transactional(readOnly=true)
    public List<Store> selectStore() {
        return storeMapper.selectStore();
    }

    @Transactional
    public boolean insert(Store store) {
        return storeMapper.insert(store);
                
    }
}
