package com.dhms.dao;

import org.springframework.data.repository.CrudRepository;
import org.springframework.stereotype.Repository;

import com.dhms.model.UserLogs;

// This is for user tracking and save to the database
@Repository
public interface UserLogsRepo extends CrudRepository<UserLogs, Integer> {
	
	

}
