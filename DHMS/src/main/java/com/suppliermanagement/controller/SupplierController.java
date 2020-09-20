package com.suppliermanagement.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;

import com.suppliermanagement.model.Supplier;
import com.suppliermanagement.service.SupplierService;

@Controller
public class SupplierController {
	
	@Autowired
	private SupplierService supplierService;
	
	@GetMapping("/")
	public String viewList(Model model) 
	{
		model.addAttribute("listSuppliers", supplierService.getAllSuppliers());
		return "index";
	}
	
	@GetMapping("/addNewSupplierForm")
	public String addNewSupplierForm(Model model) 
	{
		Supplier supplier = new Supplier();
		model.addAttribute("supplier", supplier);
		return "add_new_supplier";
		
	}
	
	@PostMapping("/addSupplier")
	public String addSupplier(@ModelAttribute("supplier") Supplier supplier) 
	{
		supplierService.AddSupplier(supplier);
		return "redirect:/";
		
	}
	
	@GetMapping("/supplierFormForUpdate/{supplier_id}")
	public String supplierFormForUpdate(@PathVariable(value="supplier_id") long supplier_id, Model model) 
	{
		Supplier supplier = supplierService.getSupplierById(supplier_id);
		model.addAttribute("supplier", supplier);
		return "update_supplier";
		
	}
	
	
	@GetMapping("/deleteSupplier/{supplier_id}")
	public String deleteSupplier(@PathVariable(value="supplier_id") long supplier_id, Model model) 
	{
		this.supplierService.deleteSupplier(supplier_id);
		return "redirect:/";
	}
	
}

