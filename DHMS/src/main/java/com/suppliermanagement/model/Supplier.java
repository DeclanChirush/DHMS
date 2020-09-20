package com.suppliermanagement.model;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name= "suppliers")
public class Supplier {
	
	public Supplier() {}
	
	@Id
	@GeneratedValue(strategy =  GenerationType.IDENTITY)
	private long supplier_id;
	
	@Column(name = "supplier_name")
	private String supplier_name;
	
	@Column(name = "supplier_email")
	private String supplier_email;
	
	@Column(name = "supplier_address")
	private String supplier_address;
	
	@Column(name = "contact_person")
	private String contact_person;
	
	public long getSupplier_id() {
		return supplier_id;
	}
	public void setSupplier_id(long supplier_id) {
		this.supplier_id = supplier_id;
	}
	public String getSupplier_name() {
		return supplier_name;
	}
	public void setSupplier_name(String supplier_name) {
		this.supplier_name = supplier_name;
	}
	public String getSupplier_email() {
		return supplier_email;
	}
	public void setSupplier_email(String supplier_email) {
		this.supplier_email = supplier_email;
	}
	public String getSupplier_address() {
		return supplier_address;
	}
	public void setSupplier_address(String supplier_address) {
		this.supplier_address = supplier_address;
	}
	public String getContact_person() {
		return contact_person;
	}
	public void setContact_person(String contact_person) {
		this.contact_person = contact_person;
	}
	
	

}
