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

	public void deleteTransactionById(int id) {

		System.out.println("==========deleteTransactionById Called==========");
		dao.deleteById(id);
	}

	public Transaction getTransactionById(int id) {

		System.out.println("==========getTransactionById Called==========");
		return dao.findById(id).get();
	}

	public List<Transaction> getTransactionByType(String type) {

		System.out.println("==========getTransactionByType Called==========");
		return (List<Transaction>) dao.findByType(type);
	}

	public List<Transaction> getTransactionByCategorie(String categorie) {

		System.out.println("==========getTransactionByCategorie Called==========");
		return (List<Transaction>) dao.findByCategorie(categorie);
	}

//	public List<Transaction> getTransactionByDate(String startdate, String enddate) {
//
//		System.out.println("==========getTransactionByDate Called==========");
//		return (List<Transaction>) dao.findByDateBetween(startdate, enddate);
//	}

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

	// Insert Transaction Method
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

	// View Search page
	@RequestMapping("/search")
	public ModelAndView searchAccountMgt() {

		ModelAndView object = new ModelAndView("accountingManagement/search.jsp");
		return object;
	}

	// Search Transaction By Type method
	@RequestMapping(value = "/searchByType")
	public ModelAndView transactionByType(@RequestParam String type) {

		System.out.println("==========searchByType Called==========");

		ModelAndView object = new ModelAndView("/accountingManagement/search.jsp");
		List<Transaction> transactionList = getTransactionByType(type);
		object.addObject("transactionList", transactionList);

		System.out.println("==========searchByType Executed==========\n");

		return object;
	}

	// Search Transaction By Categories method
	@RequestMapping(value = "/searchByCategorie", method = RequestMethod.GET)
	public ModelAndView transactionByCategorie(@RequestParam String categorie) {

		System.out.println("==========searchByCategorie Called==========");

		ModelAndView object = new ModelAndView("/accountingManagement/search.jsp");
		List<Transaction> transactionList = getTransactionByCategorie(categorie);
		object.addObject("transactionList", transactionList);

		System.out.println("==========searchByCategorie Executed==========\n");

		return object;
	}

	// Search Transaction By Date method
//	@RequestMapping(value = "/searchByDate", method = RequestMethod.GET)
//	public ModelAndView transactionByDate(@RequestParam String startdate, @RequestParam String enddate) {
//
//		System.out.println("==========searchByDate Called==========");
//
//		ModelAndView object = new ModelAndView("/accountingManagement/search.jsp");
//		List<Transaction> transactionList = getTransactionByDate(startdate, enddate);
//		object.addObject("transactionList", transactionList);
//
//		System.out.println("==========searchByDate Executed==========\n");
//
//		return object;
//	}

}
