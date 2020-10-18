package com.dhms.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import com.dhms.dao.LeaveRepo;
import com.dhms.model.Employee;
import com.dhms.model.Leave;


@Controller
public class LeaveController {
	
	@Autowired
	LeaveRepo leaveRepo;
	
	public void createAndUpdate(Leave leave) {

		System.out.println("==========createAndUpdate Called==========");
		leaveRepo.save(leave);
	}
	
	
	@RequestMapping(value = "/applyLeave/", method = RequestMethod.GET)
	public ModelAndView applyLeave() {
		
		Leave leave = new Leave();
		ModelAndView object = new ModelAndView();
		
		
		object.addObject("leaveForm", leave);
		object.setViewName("/employeeManagement/LeaveForm.jsp");
		
		return object;
		
	}
	
	@RequestMapping(value = "/saveLeave", method = RequestMethod.POST)
	public ModelAndView saveLeave(@ModelAttribute("LeaveForm")Leave leave) {
		saveOrUpdate(leave);
		
		return new ModelAndView("redirect:/LeaveForm.jsp");
	}


	private void saveOrUpdate(Leave leave) {
		leaveRepo.save(leave);
		
	}
	
	
	
	
	
}
