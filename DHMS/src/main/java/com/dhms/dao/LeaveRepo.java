package com.dhms.dao;

import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;

import com.dhms.model.Leave;

public interface LeaveRepo extends JpaRepository<Leave, Integer> {
 

}
