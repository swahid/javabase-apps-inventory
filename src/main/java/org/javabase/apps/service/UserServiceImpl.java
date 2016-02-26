package org.javabase.apps.service;

import java.util.List;

import org.javabase.apps.entity.User;
import org.javabase.apps.mapper.UserMapper;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

@Service
public class UserServiceImpl implements UserService{

    @Autowired
    UserMapper  usermapper;
    
    @Transactional
    public List<User> selectUser() {
        return usermapper.selectUser();
    }
    
}
