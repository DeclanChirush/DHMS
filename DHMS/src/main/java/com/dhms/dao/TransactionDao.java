package com.dhms.dao;

//import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.repository.CrudRepository;

import com.dhms.model.Transaction;

public interface TransactionDao extends CrudRepository<Transaction, Integer> {
	
}
