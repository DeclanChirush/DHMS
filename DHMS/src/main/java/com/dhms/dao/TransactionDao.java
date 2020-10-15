// BY IT19180526

package com.dhms.dao;

import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;
//import org.springframework.data.repository.CrudRepository;
import org.springframework.data.jpa.repository.Query;

import com.dhms.model.Transaction;

public interface TransactionDao extends JpaRepository<Transaction, Integer> {

	List<Transaction> findByType(String type);

	List<Transaction> findByCategorie(String categorie);

	List<Transaction> findByDate(String date);
	
	@Query(value = "SELECT SUM(amount) FROM transaction WHERE type = 'Expense'", nativeQuery = true)
	  Transaction getSumOfExpense();

}
