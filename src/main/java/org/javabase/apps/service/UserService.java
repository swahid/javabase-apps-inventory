/**
 * 
 */
package org.javabase.apps.service;

import java.util.List;

import org.javabase.apps.entity.User;

/**
 * @author  Saurav Wahid <saurav1161@gmail.com>
 * @verison	1.0.1
 * @since	1.0.0
 */
public interface UserService {
    
    public List<User> selectUser();
    
}
