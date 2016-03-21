package org.javabase.apps.service;

import java.util.List;

import org.javabase.apps.entity.ProCatagory;
import org.javabase.apps.entity.User;
import org.javabase.apps.mapper.ProCatagoryMapper;
import org.javabase.apps.mapper.UserMapper;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

@Service
public class ProCatagoryServiceImpl implements ProCatagoryService{

    @Autowired
    ProCatagoryMapper  procatagorymapper;
    
    @Transactional(readOnly=true)
	public List<ProCatagory> selectProCatagory() {
		return procatagorymapper.selectProCatagory();
	}

    @Transactional
	public boolean insert(ProCatagory procatagory) {
		return procatagorymapper.insert(procatagory);
	}
}
