package com.dhms.dao;

import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.repository.CrudRepository;
import org.springframework.stereotype.Repository;

import com.dhms.model.Employee;
import com.dhms.model.Transaction;

@Repository
public interface EmployeeRepo extends JpaRepository<Employee,Long> {

	//Employee findByName(String empName);
	
}
