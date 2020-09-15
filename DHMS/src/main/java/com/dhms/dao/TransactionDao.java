package com.dhms.dao;

import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;
//import org.springframework.data.jpa.repository.Query;
//import org.springframework.data.repository.CrudRepository;

import com.dhms.model.Transaction;

public interface TransactionDao extends JpaRepository<Transaction, Integer> {

	List<Transaction> findByType(String type);

	List<Transaction> findByCategorie(String categorie);

//	@Query("from transaction t where t.date between ?1 and ?2")
//	List<Transaction> findByDateBetween(String startdate, String enddate);

}
