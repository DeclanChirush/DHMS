package com.dhms.service;

import java.util.ArrayList;
import java.util.List;
import java.util.Optional;

import javax.transaction.Transactional;

import org.springframework.stereotype.Service;

import com.dhms.dao.PurchaseRepo;
import com.dhms.model.Advertisement;
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
	
	public Optional<Purchase> getPurchaseById(int id) {
		return purchaseRepo.findById(id);	
	}	
}
