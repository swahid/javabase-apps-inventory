package org.javabase.apps.mapper;

import java.util.List;

import org.javabase.apps.entity.UserRole;

public interface UserRoleMapper {
    
    public List<UserRole> selectUser();
    
    public UserRole findByUserRole(String userRole);
    
    public boolean insert(UserRole userRole);
}
