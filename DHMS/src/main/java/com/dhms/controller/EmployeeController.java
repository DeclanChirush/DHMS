package com.dhms.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.servlet.ModelAndView;

import com.dhms.dao.EmployeeRepo;
import com.dhms.model.Employee;
import com.dhms.model.Transaction;


@Controller
public class EmployeeController {

	@RequestMapping(value = "/empReport")
	public ModelAndView reportByType() {
		ModelAndView model = new ModelAndView("/employeeManagement/employeeReport.jsp");
		return model;

	}
		
		@RequestMapping(value = "/employeeList", method = RequestMethod.GET)
		public ModelAndView list() {
			
			ModelAndView model = new ModelAndView("/employeeManagement/EmployeeList.jsp");
			List<Employee> employeeList = getAllEmployees();
			model.addObject("employeeList", employeeList);
			
			return model;
		}
		
		
		@RequestMapping(value = "/addEmployee/", method = RequestMethod.GET)
		public ModelAndView addEmployee() {
			
			ModelAndView model = new ModelAndView();
			Employee employee = new Employee();
			
			model.addObject("employeeForm", employee);
			model.setViewName("/employeeManagement/employee_form.jsp");
			
			return model;
			
		}
		
		
		@RequestMapping(value = "/editEmployee", method = RequestMethod.GET)
		public ModelAndView editEmployee(@RequestParam long id) {
			
			ModelAndView model = new ModelAndView();
			Employee employee = getEmployeeById(id);
			
			model.addObject("employeeForm", employee);
			model.setViewName("/employeeManagement/employee_form.jsp");
			
			return model;
		}

		
		@RequestMapping(value = "/saveEmployee", method = RequestMethod.POST)
		public ModelAndView save(@ModelAttribute("employeeForm")Employee employee) {
			saveOrUpdate(employee);
			
			return new ModelAndView("redirect:/employeeList");
		}
		
	
		@RequestMapping(value = "/deleteEmployee")
		public ModelAndView delete(@RequestParam("id")long id) {
			deleteEmployee(id);
			
			return new ModelAndView("redirect:/employeeList");
			
		}
		
		// Search Transaction By Categories method
		@RequestMapping(value = "/searchCategorie", method = RequestMethod.GET)
		public ModelAndView transactionByCategorie(@RequestParam String categorie) {

			ModelAndView object = new ModelAndView("/accountingManagement/search.jsp");
			List<Employee> transactionList = getEmployeeByCategorie(categorie);
			object.addObject("transactionList", transactionList);

			return object;
		}
		
	
		
		
		@Autowired
		EmployeeRepo employeeRepo;

		
		public List<Employee> getAllEmployees() {
			return (List<Employee>) employeeRepo.findAll();
		}

	
		public Employee getEmployeeById(long id) {
			return employeeRepo.findById(id).get();	
		}

	
		public void saveOrUpdate(Employee employee) {
			employeeRepo.save(employee);
		}

		
		public void deleteEmployee(long id) {
			employeeRepo.deleteById(id);	
		}
		
		public List<Employee> getEmployeeByCategorie(String categorie) {

			return (List<Employee>) employeeRepo.findByCategorie(categorie);
		}
		
}
