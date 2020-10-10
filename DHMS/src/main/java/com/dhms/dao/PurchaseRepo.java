package com.dhms.dao;

import org.springframework.data.repository.CrudRepository;

import com.dhms.model.Purchase;

public interface PurchaseRepo extends CrudRepository<Purchase, Integer> {	
	
}
