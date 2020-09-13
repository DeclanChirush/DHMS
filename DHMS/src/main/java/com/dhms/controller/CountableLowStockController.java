package com.dhms.controller;

import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import com.dhms.dao.CountableLowstockRepo;

@Controller
public class CountableLowStockController {
	
	@Autowired
	CountableLowstockRepo clowrepo;
	
	@RequestMapping("/viewCountableLowStock")
	public String viewCountableLowStock(Map<String, Object> map)
	{
		map.put("lowStockList", clowrepo.findAll());
		return "inventoryManagement/viewCountableLowStock.jsp";
	}

}
