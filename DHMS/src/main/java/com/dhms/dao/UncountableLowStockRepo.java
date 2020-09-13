package com.dhms.dao;

import org.springframework.data.repository.CrudRepository;

import com.dhms.model.UncountableLowStock;

public interface UncountableLowStockRepo extends CrudRepository<UncountableLowStock, String> {

}
