package com.dhms.service;


import java.util.List;
import java.util.Optional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.dhms.dao.SupplierRepository;
import com.dhms.model.Supplier;

@Service
public class SupplierServiceImpl implements SupplierService {

	@Autowired
	private SupplierRepository supplierRepository;
	
	@Override
	public List<Supplier> getAllSuppliers() {
		return supplierRepository.findAll();
	}
	
	/*public List<Supplier> findByName(String name){
		return supplierRepository.findByNameLike("%"+name+"%");
	}*/
 
	@Override
	public void AddSupplier(Supplier supplier) {
		this.supplierRepository.save(supplier);
		
	}

	@Override
	public Supplier getSupplierById(long supplier_id) {
		
		Optional<Supplier> optional = supplierRepository.findById(supplier_id);
		Supplier supplier = null;
		
		if(optional.isPresent()) 
		{
			supplier = optional.get();
		}else 
		{
			throw new RuntimeException("Supplier Not Found");
		}
		
		return supplier;
		
		}

	@Override
	public void deleteSupplier(long supplier_id) {
		
		this.supplierRepository.deleteById(supplier_id);
		
	}

}
