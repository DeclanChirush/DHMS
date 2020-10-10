package com.dhms.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.dhms.dao.UserLoginRepo;
import com.dhms.model.User;

@Controller
public class UserLoginController {
	
	
	
	@RequestMapping(value = "/userLogList", method = RequestMethod.GET)
	public ModelAndView list() {
		
		ModelAndView model = new ModelAndView("/userLogs/userLogList.jsp");
		List<User> userLogList = getAllUserLogs();
		model.addObject("userLogList", userLogList);
		
		return model;
	}
	
	
	@RequestMapping(value = "/addUser/", method = RequestMethod.GET)
	public ModelAndView addEmployee() {
		
		ModelAndView model = new ModelAndView();
		User user = new User();
		

		model.addObject("userLogsForm", user);
		model.setViewName("/userLogs/addUser.jsp");
		
		return model;
		
	}
	
	
	
	@RequestMapping(value = "/editUserLog", method = RequestMethod.GET)
	public ModelAndView editEmployee(@RequestParam Integer id) {
		
		ModelAndView model = new ModelAndView();
		User user = getUserLogsById(id);
		
		model.addObject("userLogsForm", user);
		model.setViewName("/userLogs/addUser.jsp");
		
		return model;
	}

	
	@RequestMapping(value = "/saveUserLog", method = RequestMethod.POST)
	public ModelAndView save(@ModelAttribute("userLogsForm")User user) {

		saveOrUpdate(user);
		
		return new ModelAndView("redirect:/userLogList");
	}
	

	@RequestMapping(value = "/deleteUserLog")
	public ModelAndView delete(@RequestParam("id")Integer id) {
		deleteUserLog(id);
		
		return new ModelAndView("redirect:/userLogList");
		
	}
	
	
	@Autowired
	UserLoginRepo userLoginRepo;
	
	public List<User> getAllUserLogs() {
		return (List<User>) userLoginRepo.findAll();
	}


	public User getUserLogsById(Integer id) {
		return userLoginRepo.findById(id).get();	
	}


	public void saveOrUpdate(User user) {
		userLoginRepo.save(user);
	}

	
	public void deleteUserLog(Integer id) {
		userLoginRepo.deleteById(id);	
	}

}
