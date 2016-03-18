package org.javabase.apps.mapper;

import java.util.List;

import org.javabase.apps.entity.User;

public interface UserMapper {
    
    public List<User> selectUser();
    
    public List<User> login(User user);
    
    public boolean insert(User user);
}
