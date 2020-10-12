package com.dhms.controller;

import java.text.SimpleDateFormat;
import java.util.Date;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import com.dhms.dao.UserLogsRepo;
import com.dhms.model.UserLogs;

@Controller
public class headController {
	
	
	@Autowired
	private UserLogsRepo userLogsRepo;
	
	//Get current user details
	@RequestMapping(value = "/")
	public ModelAndView home() {

		// getting current user name
		final String currentUserName = SecurityContextHolder.getContext().getAuthentication().getName();
		System.out.println("user: " + currentUserName);

		// getting current date
		SimpleDateFormat formatter = new SimpleDateFormat("dd/MM/yyyy HH:mm:ss");
		Date date = new Date();
		String currentDatetime = formatter.format(date);

		UserLogs userLogs = new UserLogs();

		userLogs.setUsername(currentUserName);
		userLogs.setDate(currentDatetime);

		userLogsRepo.save(userLogs);

		ModelAndView model = new ModelAndView("backendDashboard.jsp");
		return model;

	}

	//Generate report for UserLog
	@RequestMapping(value = "/userLogs")
	public ModelAndView userLogs() {

		ModelAndView model = new ModelAndView("/userLogs/userLogs.jsp");
		return model;

	}

//	@RequestMapping("/internal")
//	public String internalSys()
//	{
//		return "internal.jsp";
//	}

	// controller for main page for inventory
	@RequestMapping("/inventory")
	public String inventoryMain() {
		return "inventoryManagement/inventoryMain.jsp";
	}
}
