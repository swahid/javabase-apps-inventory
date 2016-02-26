package org.javabase.apps.mapper;

import java.util.List;

import org.apache.ibatis.annotations.Select;
import org.javabase.apps.entity.User;

public interface UserMapper {
    
    @Select("select * from user")
    public List<User> selectUser();

}
