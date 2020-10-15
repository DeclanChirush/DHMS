package com.dhms.model;

import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name="purchase")
public class Purchase {

	@Id
	private int id;
	private String supplier;
	private String date;
	private String description;
	private String item;
	private double quantity;
	private double price;
	private double total;
	
	public Purchase() {
		
	}
	
	public Purchase(int id, String supplier, String date, String description, String item, double quantity,
			double price, double total) {
		super();
		this.id = id;
		this.supplier = supplier;
		this.date = date;
		this.description = description;
		this.item = item;
		this.quantity = quantity;
		this.price = price;
		this.total = total;
	}

	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public String getSupplier() {
		return supplier;
	}

	public void setSupplier(String supplier) {
		this.supplier = supplier;
	}

	public String getDate() {
		return date;
	}

	public void setDate(String date) {
		this.date = date;
	}

	public String getDescription() {
		return description;
	}

	public void setDescription(String description) {
		this.description = description;
	}

	public String getItem() {
		return item;
	}

	public void setItem(String item) {
		this.item = item;
	}

	public double getQuantity() {
		return quantity;
	}

	public void setQuantity(double quantity) {
		this.quantity = quantity;
	}

	public double getPrice() {
		return price;
	}

	public void setPrice(double price) {
		this.price = price;
	}

	public double getTotal() {
		return total;
	}

	public void setTotal(double total) {
		this.total = total;
	}
	
	@Override
	public String toString() {
		return "Purchase [id=" + id + ", supplier=" + supplier + ", date=" + date + ", description=" + description
				+ ", item=" + item + ", quantity=" + quantity + ", price=" + price + ", total=" + total + "]";
	}
}
