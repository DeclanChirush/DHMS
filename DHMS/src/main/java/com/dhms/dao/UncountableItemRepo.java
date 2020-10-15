package com.dhms.dao;

import org.springframework.data.repository.CrudRepository;

import com.dhms.model.UncountableItems;

public interface UncountableItemRepo extends CrudRepository<UncountableItems, String> {
 
}
