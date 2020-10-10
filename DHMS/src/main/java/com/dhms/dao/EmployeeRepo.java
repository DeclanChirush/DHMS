package com.dhms.dao;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.repository.CrudRepository;
import org.springframework.stereotype.Repository;

import com.dhms.model.Employee;

@Repository
public interface EmployeeRepo extends JpaRepository<Employee,Long> {

}
