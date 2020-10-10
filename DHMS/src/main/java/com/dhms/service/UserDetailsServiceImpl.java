package com.dhms.service;


import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.userdetails.UserDetails;
import org.springframework.security.core.userdetails.UserDetailsService;
import org.springframework.security.core.userdetails.UsernameNotFoundException;

import com.dhms.dao.UserLoginRepo;
import com.dhms.model.User;


public class UserDetailsServiceImpl implements UserDetailsService {

		@Autowired
	    private UserLoginRepo userLoginRepo;
	     
	    @Override
	    public UserDetails loadUserByUsername(String username) throws UsernameNotFoundException {
	        User user = userLoginRepo.getUserByUsername(username);
	         
	        if (user == null) {
	            throw new UsernameNotFoundException("Could not find user");
	        }
	         
	        return new MyUserDetails(user);
	    }
	    

}
