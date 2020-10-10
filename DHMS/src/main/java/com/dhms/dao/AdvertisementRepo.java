package com.dhms.dao;

import java.util.List;

import org.springframework.data.repository.CrudRepository;
import org.springframework.stereotype.Repository;

import com.dhms.model.Advertisement;

@Repository
public interface AdvertisementRepo extends CrudRepository<Advertisement, Long>{

	List<Advertisement> findByType(String type);
	
	
}
 
