package com.dhms.dao;

import org.springframework.data.repository.CrudRepository;

import com.dhms.model.CountableItemRetrieveLog;

public interface CountableItemRetrieveLogRepo extends CrudRepository<CountableItemRetrieveLog, Integer> {

}
