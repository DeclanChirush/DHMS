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
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import com.dhms.dao.AdvertisementRepo;
import com.dhms.dao.EmployeeRepo;
import com.dhms.model.Advertisement;
import com.dhms.model.Employee;
import com.dhms.service.EmployeePdf;
import com.dhms.service.PDFgenerator;

@Controller 
public class EmployeeReportController {
/*
	@RequestMapping(value = "/empReportType", method = RequestMethod.GET, produces = MediaType.APPLICATION_PDF_VALUE)
	public ResponseEntity<InputStreamResource> employeeReportByType(@RequestParam String type) throws IOException {

		List<Employee> employee = (List<Employee>) getEmployeeType(type);
		ByteArrayInputStream bais = EmployeePdf.employeeReport(employee);
		HttpHeaders head = new HttpHeaders();
		head.add("Content-Disposition", "inline; filename=employeeByType.pdf");

		return ResponseEntity.ok().headers(head).contentType(MediaType.APPLICATION_PDF)
				.body(new InputStreamResource(bais));

	}
	
	@RequestMapping(value = "/reportAllEmployees", method = RequestMethod.GET, produces = MediaType.APPLICATION_PDF_VALUE)
	public ResponseEntity<InputStreamResource> employeeAllReport() throws IOException {

		List<Employee> employee = (List<Employee>) getAllEmployees();
		ByteArrayInputStream bais = EmployeePdf.employeeReport(employee);
		HttpHeaders headers = new HttpHeaders();
		headers.add("Content-Disposition", "inline; filename=employeeByType.pdf");

		return ResponseEntity.ok().headers(headers).contentType(MediaType.APPLICATION_PDF)
				.body(new InputStreamResource(bais));

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

	public List<Employee> getEmployeeType(String type) {
		return (List<Employee>) employeeRepo.findByType(type);
	}

	
	
	*/
	
}
