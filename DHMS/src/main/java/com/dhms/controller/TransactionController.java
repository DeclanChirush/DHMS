package com.dhms.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.servlet.ModelAndView;
import java.util.List;

import com.dhms.dao.TransactionDao;
import com.dhms.model.Transaction;

@RestController
public class TransactionController {

	@Autowired
	TransactionDao dao;

	public void createAndUpdate(Transaction transaction) {

		System.out.println("==========createAndUpdate Called==========");
		dao.save(transaction);
	}

	public List<Transaction> getAllTransaction() {

		System.out.println("==========getAllTransaction Called==========");
		return (List<Transaction>) dao.findAll();
	}

	public Transaction getTransactionById(int id) {

		System.out.println("==========getTransactionById Called==========");
		return dao.findById(id).get();
	}

	public void deleteTransactionById(int id) {

		System.out.println("==========deleteTransactionById Called==========");
		dao.deleteById(id);
	}
	
	
	// View Accounting Dashboard page
	@RequestMapping("/accountmgt")
	public ModelAndView accountingManagement() {

		ModelAndView object = new ModelAndView("accountingManagement/accountingmgt.jsp");
		return object;
	}

	// View Add transaction page
	@RequestMapping(value = "/addTransaction", method = RequestMethod.GET)
	public ModelAndView addTransaction() {

		Transaction transaction = new Transaction();
		ModelAndView object = new ModelAndView();

		object.addObject("transactionobj", transaction);
		object.setViewName("/accountingManagement/addTransaction.jsp");

		return object;
	}

	// Insert Method
	@RequestMapping(value = "/insertTransaction", method = RequestMethod.POST)
	public ModelAndView insertTransaction(@ModelAttribute("transactionobj") Transaction transaction) {

		System.out.println("==========insertTransaction Called==========");

		createAndUpdate(transaction);
		ModelAndView object = new ModelAndView("redirect:/showTransactionList");

		System.out.println("==========insertTransaction Executed==========\n");

		return object;
	}

	// Show All Transactions Method
	@RequestMapping(value = "/showTransactionList")
	public ModelAndView transactionList() {

		System.out.println("==========showTransactionList Called==========");

		ModelAndView object = new ModelAndView("/accountingManagement/showTransactionList.jsp");
		List<Transaction> transactionList = getAllTransaction();
		object.addObject("transactionList", transactionList);

		System.out.println("==========showTransactionList Executed==========\n");

		return object;
	}

	// View single Transaction method
	@RequestMapping(value = "/viewTransaction", method = RequestMethod.GET)
	public ModelAndView viewTransaction(@RequestParam int id) {

		System.out.println("==========viewTransaction Called==========");

		ModelAndView object = new ModelAndView();
		Transaction transaction = getTransactionById(id);

		object.setViewName("/accountingManagement/viewTransaction.jsp");
		object.addObject("viewTransaction", transaction);

		System.out.println("==========viewTransaction Executed==========\n");

		return object;
	}

	// Edit Transaction method
	@RequestMapping(value = "/editTransaction", method = RequestMethod.GET)
	public ModelAndView editTransaction(@RequestParam int id) {

		System.out.println("==========editTransaction Called==========");

		ModelAndView object = new ModelAndView();
		Transaction transaction = getTransactionById(id);

		object.setViewName("/accountingManagement/editTransaction.jsp");
		object.addObject("transactionobj", transaction);

		System.out.println("==========editTransaction Executed==========\n");

		return object;
	}

	// Delete Transaction method
	@RequestMapping(value = "/deleteTransaction", method = RequestMethod.GET)
	public ModelAndView deleteTransaction(@RequestParam int id) {

		System.out.println("==========deleteTransaction Called==========");

		deleteTransactionById(id);
		ModelAndView object = new ModelAndView("redirect:/showTransactionList");

		System.out.println("==========deleteTransaction Executed==========\n");

		return object;
	}

}
