package com.dhms.dao;

import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.CrudRepository;
import org.springframework.data.repository.query.Param;
import org.springframework.stereotype.Repository;

import com.dhms.model.User;


// This is for get relevant role username and this is for Login 
@Repository
public interface UserLoginRepo extends CrudRepository<User, Integer>{

	   @Query("SELECT u FROM User u WHERE u.username = :username")
	    public User getUserByUsername(@Param("username") String username);
	
}
 
