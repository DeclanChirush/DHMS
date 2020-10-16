package com.dhms.controller;

import java.util.List;
import java.util.Optional;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.dhms.model.Advertisement;
import com.dhms.model.Purchase;
import com.dhms.service.PurchaseService;

@Controller
public class PurchaseController {

	@Autowired
	PurchaseService purchaseService;
	
	@RequestMapping(value = "/newPurchase")
	public ModelAndView newPurchase() {
		ModelAndView model = new ModelAndView();
		model.setViewName("/purchasingManagement/addNew.jsp");
		return model;
	}
	

	@PostMapping("/savePurchase")
	public String addPurchase(@ModelAttribute Purchase purchase, BindingResult bindingResult, HttpServletRequest request) {
		purchaseService.savePurchase(purchase);
//eranga
		return "redirect:/purchaseList";
    
    //master
		//return "purchasingManagement/purchaseList";
    
	}
	
	@GetMapping("/purchaseList")
	public String showAllPurchase(HttpServletRequest request) {
		request.setAttribute("purchases", purchaseService.showAllPurchase());
		return "purchasingManagement/purchaseList.jsp";
	}

	@RequestMapping("/deletePurchase")
	public String deletePurchase(@RequestParam int id, HttpServletRequest request) {
		purchaseService.deletePurchase(id);
		request.setAttribute("purchases", purchaseService.showAllPurchase());
		return "purchasingManagement/purchaseList.jsp";
	}

	
/*--------------------------------------------------------------------------------------------------------	
	@RequestMapping(value = "/updatePurchase")
	public ModelAndView editPurchase(@RequestParam int id) {
		
		ModelAndView model = new ModelAndView();
		Optional<Purchase> purchase = purchaseService.getPurchaseById(id);
		
		model.addObject("purchases", purchase);
		model.setViewName("/purchasingManagement/edit.jsp");
		
		return model;
	}
		@RequestMapping(value = "/savePurchase", method = RequestMethod.POST)
	public ModelAndView savePurchase(@ModelAttribute("purchases")Purchase purchase) {
		purchaseService.savePurchase(purchase);
		
		return new ModelAndView("redirect:/purchaseList");
	}------------------------------------------------------------------------------------------------------*/
	
	
	@RequestMapping("/updatePurchase")
	public ModelAndView updatePurchase(@RequestParam int id, HttpServletRequest request) {
		ModelAndView model = new ModelAndView();
		Optional<Purchase> purchase = purchaseService.getPurchaseById(id);
		
		model.addObject("purchases", purchase);
		model.setViewName("/purchasingManagement/edit.jsp");
		
		return model;
	}
}
