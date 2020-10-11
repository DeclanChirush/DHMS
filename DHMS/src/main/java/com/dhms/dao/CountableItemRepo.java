package com.dhms.dao;

import org.springframework.data.repository.CrudRepository; 

import com.dhms.model.CountableItems;

public interface CountableItemRepo extends CrudRepository<CountableItems, String> {

}
