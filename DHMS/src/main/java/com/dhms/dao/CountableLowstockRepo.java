package com.dhms.dao;

import org.springframework.data.repository.CrudRepository; 

import com.dhms.model.CountableLowStock;

public interface CountableLowstockRepo extends CrudRepository<CountableLowStock, String> {
 
}
