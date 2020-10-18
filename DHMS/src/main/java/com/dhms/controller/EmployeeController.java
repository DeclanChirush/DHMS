package com.dhms.controller;

import java.io.ByteArrayInputStream;
import java.io.IOException;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.core.io.InputStreamResource;
import org.springframework.http.HttpHeaders;
import org.springframework.http.MediaType;
import org.springframework.http.ResponseEntity;
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
import com.dhms.service.GenerateAccountingReport;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.servlet.ModelAndView;
import org.springframework.core.io.InputStreamResource;
import org.springframework.http.HttpHeaders;
import org.springframework.http.MediaType;
import org.springframework.http.ResponseEntity;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.stereotype.Controller;

import java.util.Date;
import java.util.List;
import java.io.ByteArrayInputStream;
import java.io.IOException;
import java.text.SimpleDateFormat;

import com.dhms.service.GenerateAccountingReport;
import com.dhms.dao.TransactionDao;
import com.dhms.dao.UserLogsRepo;
import com.dhms.model.Transaction;
import com.dhms.model.UserLogs;

@Controller
public class EmployeeController {

	
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
/*
	public List<Employee> getTransactionByDate(String dob) {
		return (List<Employee>) employeeRepo.findByDate(dob);
	}
	
*/	
	
	
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
	public ModelAndView save(@ModelAttribute("employeeForm") Employee employee) {
		saveOrUpdate(employee);

		return new ModelAndView("redirect:/employeeList");
	}

	@RequestMapping(value = "/deleteEmployee")
	public ModelAndView delete(@RequestParam("id") long id) {
		deleteEmployee(id);

		return new ModelAndView("redirect:/employeeList");

	}
	/*
	@RequestMapping("/searchEmp")
	public ModelAndView searchEmployee() {

		ModelAndView object = new ModelAndView("/employeeManagement/SearchEmployee.jsp");
		return object;
	}

	
	// Search Transaction By Date method
		@RequestMapping(value = "/searchEmpDate", method = RequestMethod.GET)
		public ModelAndView transactionByDate(@RequestParam String dob) {

			ModelAndView object = new ModelAndView("/employeeManagement/SearchEmployee.jsp");
			List<Employee> empList = getTransactionByDate(dob);
			object.addObject("employeeList", empList);
			return object;
		}
	
	
	
	

	
	 * // Search Transaction By Date method
	 * 
	 * @RequestMapping(value = "/searchEmpByName", method = RequestMethod.GET)
	 * public ModelAndView transactionByName(@RequestParam String empName) {
	 * 
	 * // System.out.println("==========searchByDate Called==========");
	 * 
	 * ModelAndView object = new
	 * ModelAndView("/employeeManagement/SearchEmployee.jsp"); String empname =
	 * getEmployeeByName(empName); object.addObject("employeeList", empname);
	 * 
	 * // System.out.println("==========searchByDate Executed==========\n");
	 * 
	 * return object; }
	 * 
	 */

	/*
	 * public String getEmployeeByName(String empName) { return
	 * employeeRepo.findByName(empName).getEmpName(); }
	 */
}
