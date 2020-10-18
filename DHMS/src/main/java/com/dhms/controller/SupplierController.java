package com.dhms.controller;


import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;

import com.dhms.model.Supplier;
import com.dhms.service.SupplierService;


@Controller
public class SupplierController {
	
	@Autowired
	private SupplierService supplierService;
	
	
	@GetMapping("/supplierList")
	public String viewList(Model model) 
	{
		model.addAttribute("listSuppliers", supplierService.getAllSuppliers());
		return "/supplierManagement/index.jsp";
	}
	
	@GetMapping("/addNewSupplierForm")
	public String addNewSupplierForm(Model model) 
	{
		Supplier supplier = new Supplier();
		model.addAttribute("supplier", supplier);
		return "/supplierManagement/add_new_supplier.jsp";
		
	}
	
	@PostMapping("/addSupplier")
	public String addSupplier(@ModelAttribute("supplier") Supplier supplier) 
	{
		supplierService.AddSupplier(supplier);
		return "redirect:/supplierList";
		
	}
	
	@GetMapping("/supplierFormForUpdate/{supplier_id}")
	public String supplierFormForUpdate(@PathVariable(value="supplier_id") long supplier_id, Model model) 
	{
		Supplier supplier = supplierService.getSupplierById(supplier_id);
		model.addAttribute("supplier", supplier);
		return "/supplierManagement/update_supplier.jsp";
		
	}
	
	
	@GetMapping("/deleteSupplier/{supplier_id}")
	public String deleteSupplier(@PathVariable(value="supplier_id") long supplier_id, Model model) 
	{
		this.supplierService.deleteSupplier(supplier_id);
		return "redirect:/supplierList";
	}
	
	
}