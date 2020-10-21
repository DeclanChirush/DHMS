package com.dhms.dao;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import com.dhms.model.Supplier;



@Repository
public interface SupplierRepository extends JpaRepository<Supplier, Long> {

	//List<Supplier> findByNameLike(String name);

	
}
