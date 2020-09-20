// BY IT19180526

package com.dhms.controller;

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
import java.util.List;
import java.io.ByteArrayInputStream;
import java.io.IOException;

import com.dhms.service.GenerateAccountingReport;
import com.dhms.dao.TransactionDao;
import com.dhms.model.Transaction;

@RestController
public class TransactionController {

	@Autowired
	TransactionDao dao;

	/*
	 * SERVICES IMPLEMENTATION
	 */

	// Create and Update Service
	public void createAndUpdate(Transaction transaction) {

		System.out.println("==========createAndUpdate Called==========");
		dao.save(transaction);
	}

	// Get all Transaction Service
	public List<Transaction> getAllTransaction() {

		System.out.println("==========getAllTransaction Called==========");
		return (List<Transaction>) dao.findAll();
	}

	// Delete Transaction By ID Service
	public void deleteTransactionById(int id) {

		System.out.println("==========deleteTransactionById Called==========");
		dao.deleteById(id);
	}

	// Get Details of Transaction By ID Service
	public Transaction getTransactionById(int id) {

		System.out.println("==========getTransactionById Called==========");
		return dao.findById(id).get();
	}

	// Get Details of Transaction By Type Service
	public List<Transaction> getTransactionByType(String type) {

		System.out.println("==========getTransactionByType Called==========");
		return (List<Transaction>) dao.findByType(type);
	}

	// Get Details of Transaction By Categories Service
	public List<Transaction> getTransactionByCategorie(String categorie) {

		System.out.println("==========getTransactionByCategorie Called==========");
		return (List<Transaction>) dao.findByCategorie(categorie);
	}

	// Get Details of Transaction By Date Service
	public List<Transaction> getTransactionByDate(String date) {

		System.out.println("==========getTransactionByDate Called==========");
		return (List<Transaction>) dao.findByDate(date);
	}

	/*
	 * PAGE HANDLING
	 */

	// View Accounting Dash board page
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

	// View Report page
	@RequestMapping("/reportTransaction")
	public ModelAndView reportTransaction() {

		ModelAndView object = new ModelAndView("accountingManagement/report.jsp");
		return object;
	}

	// View Search page
	@RequestMapping("/searchTransaction")
	public ModelAndView searchAccountMgt() {

		ModelAndView object = new ModelAndView("accountingManagement/search.jsp");
		return object;
	}

	// View Delete confirm page
	@RequestMapping(value = "/deleteConfirm", method = RequestMethod.GET)
	public ModelAndView deleteTransactionConfirm(@RequestParam int id) {

		ModelAndView object = new ModelAndView();
		Transaction transaction = getTransactionById(id);

		object.setViewName("/accountingManagement/deleteConfirmPage.jsp");
		object.addObject("deleteTransaction", transaction);

		return object;
	}

	/*
	 * C R U D OPERATIONS
	 */

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

	/*
	 * SEARCH OPERATIONS
	 */

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
	@RequestMapping(value = "/searchByDate", method = RequestMethod.GET)
	public ModelAndView transactionByDate(@RequestParam String date) {

		System.out.println("==========searchByDate Called==========");

		ModelAndView object = new ModelAndView("/accountingManagement/search.jsp");
		List<Transaction> transactionList = getTransactionByDate(date);
		object.addObject("transactionList", transactionList);

		System.out.println("==========searchByDate Executed==========\n");

		return object;
	}

	/*
	 * REPORT GENERATION OPERATIONS
	 */

	// Report Generate for Type
	@RequestMapping(value = "/reportType", method = RequestMethod.GET, produces = MediaType.APPLICATION_PDF_VALUE)
	public ResponseEntity<InputStreamResource> transactionTypeReport(@RequestParam String type) throws IOException {

		System.out.println("==========transactionTypeReport Called==========");

		List<Transaction> transactionList = (List<Transaction>) getTransactionByType(type);
		ByteArrayInputStream bais = GenerateAccountingReport.accountingReport(transactionList);
		HttpHeaders headers = new HttpHeaders();
		headers.add("Content-Disposition", "inline; filename=transactionreportbytype.pdf");

		System.out.println("==========transactionTypeReport Executed==========\n");

		return ResponseEntity.ok().headers(headers).contentType(MediaType.APPLICATION_PDF)
				.body(new InputStreamResource(bais));

	}

	// Report Generate for Categories
	@RequestMapping(value = "/reportCategories", method = RequestMethod.GET, produces = MediaType.APPLICATION_PDF_VALUE)
	public ResponseEntity<InputStreamResource> transactionCategoriesReport(@RequestParam String categorie)
			throws IOException {

		System.out.println("==========transactionCategoriesReport Called==========");

		List<Transaction> transactionList = (List<Transaction>) getTransactionByCategorie(categorie);
		ByteArrayInputStream bais = GenerateAccountingReport.accountingReport(transactionList);
		HttpHeaders headers = new HttpHeaders();
		headers.add("Content-Disposition", "inline; filename=transactionreportbycategorie.pdf");

		System.out.println("==========transactionCategoriesReport Executed==========\n");

		return ResponseEntity.ok().headers(headers).contentType(MediaType.APPLICATION_PDF)
				.body(new InputStreamResource(bais));

	}

	// Report Generate for Date
	@RequestMapping(value = "/reportDate", method = RequestMethod.GET, produces = MediaType.APPLICATION_PDF_VALUE)
	public ResponseEntity<InputStreamResource> transactionDateReport(@RequestParam String date) throws IOException {

		System.out.println("==========transactionDateReport Called==========");

		List<Transaction> transactionList = (List<Transaction>) getTransactionByDate(date);
		ByteArrayInputStream bais = GenerateAccountingReport.accountingReport(transactionList);
		HttpHeaders headers = new HttpHeaders();
		headers.add("Content-Disposition", "inline; filename=transactionreportbydate.pdf");

		System.out.println("==========transactionDateReport Executed==========\n");

		return ResponseEntity.ok().headers(headers).contentType(MediaType.APPLICATION_PDF)
				.body(new InputStreamResource(bais));

	}

	// Report Generate for All Transactions
	@RequestMapping(value = "/reportAllTransaction", method = RequestMethod.GET, produces = MediaType.APPLICATION_PDF_VALUE)
	public ResponseEntity<InputStreamResource> allTransactionReport() throws IOException {

		System.out.println("==========allTransactionReport Called==========");

		List<Transaction> transactionList = (List<Transaction>) getAllTransaction();
		ByteArrayInputStream bais = GenerateAccountingReport.accountingReport(transactionList);
		HttpHeaders headers = new HttpHeaders();
		headers.add("Content-Disposition", "inline; filename=alltransactionreport.pdf");

		System.out.println("==========allTransactionReport Executed==========\n");

		return ResponseEntity.ok().headers(headers).contentType(MediaType.APPLICATION_PDF)
				.body(new InputStreamResource(bais));

	}

}
