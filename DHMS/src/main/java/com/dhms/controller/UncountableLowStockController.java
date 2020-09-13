package com.dhms.controller;

import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import com.dhms.dao.UncountableLowStockRepo;

@Controller
public class UncountableLowStockController 
{

	@Autowired
	UncountableLowStockRepo ulowrepo;
	
	@RequestMapping("/viewUncountableLowStock")
	public String viewUncountableLowStock(Map<String, Object> map)
	{
		map.put("lowStockList", ulowrepo.findAll());
		return "inventoryManagement/viewUncountableLowstock.jsp";
	}
	
}
