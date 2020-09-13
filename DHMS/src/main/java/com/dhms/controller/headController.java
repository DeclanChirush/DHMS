package com.dhms.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class headController {

	@RequestMapping("/")
	public String home()
	{
		return "home.jsp";
	}
	
	@RequestMapping("/internal")
	public String internalSys()
	{
		return "internal.jsp";
	}
	
	@RequestMapping("/inventory")
	public String inventoryMain()
	{
		return "inventoryManagement/inventoryMain.jsp";
	}
}
