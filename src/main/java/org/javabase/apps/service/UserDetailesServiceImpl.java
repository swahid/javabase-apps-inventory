package org.javabase.apps.service;

import java.util.ArrayList;
import java.util.Collection;

import org.javabase.apps.entity.User;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.GrantedAuthority;
import org.springframework.security.core.authority.SimpleGrantedAuthority;
import org.springframework.security.core.userdetails.UserDetails;
import org.springframework.security.core.userdetails.UserDetailsService;
import org.springframework.security.core.userdetails.UsernameNotFoundException;
import org.springframework.stereotype.Service;

@Service("userDetailsService")
public class UserDetailesServiceImpl implements UserDetailsService {
	
	@Autowired
	private UserService userservice;
	
	@Override
	public UserDetails loadUserByUsername(String username) throws UsernameNotFoundException {
		
		User user = userservice.findByUserName(username);
		if (user != null) {
			
		
		String password = user.getPassword();
		
		//populate spring security feature
		boolean enabled= user.getStatus().equalsIgnoreCase("ACTIVE");
		boolean accountNonExpired = user.getStatus().equalsIgnoreCase("ACTIVE");
		boolean credentialsNonExpired= user.getStatus().equalsIgnoreCase("ACTIVE");
		boolean accountNonLocked= user.getStatus().equalsIgnoreCase("ACTIVE");
		
		// populate user role
		
		Collection<GrantedAuthority> authorities = new ArrayList<GrantedAuthority>();
		authorities.add(new SimpleGrantedAuthority(user.getUserRole()));
		
		// authentication Spring Security
		org.springframework.security.core.userdetails.User securedUser = 
				new org.springframework.security.core.userdetails.User(username, password, enabled, accountNonExpired, credentialsNonExpired, accountNonLocked, authorities);
		return securedUser;
		}else {
			 throw new UsernameNotFoundException("Invalid User");
		}
	}

}
