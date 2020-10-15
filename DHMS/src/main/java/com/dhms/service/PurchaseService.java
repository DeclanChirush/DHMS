package com.dhms.service;

import java.util.ArrayList;
import java.util.List;

import javax.transaction.Transactional;

import org.springframework.stereotype.Service;

import com.dhms.dao.PurchaseRepo;
import com.dhms.model.Purchase;

@Service
@Transactional
public class PurchaseService {

	private final PurchaseRepo purchaseRepo;
	
	public PurchaseService(PurchaseRepo purchaseRepo) {
		this.purchaseRepo=purchaseRepo;
	}
	
	public void savePurchase(Purchase purchase ) {
		purchaseRepo.save(purchase);
	}
	
	public List<Purchase> showAllPurchase(){
		List<Purchase> purchases = new ArrayList<Purchase>();
		for(Purchase purchase : purchaseRepo.findAll()) {
			purchases.add(purchase);
		}
		return purchases;
	}
	
	public void deletePurchase(int id) {
		purchaseRepo.deleteById(id);
	}
	
/*	public Purchase editPurchase(int id) {
		return purchaseRepo.findOne(id);
	}	*/
}
