package com.suppliermanagement.service;

import java.util.List;

import com.suppliermanagement.model.Supplier;

public interface SupplierService {

	
	List<Supplier> getAllSuppliers();
	void AddSupplier(Supplier supplier);
	Supplier getSupplierById(long supplier_id);
	void deleteSupplier(long supplier_id);
	
}
