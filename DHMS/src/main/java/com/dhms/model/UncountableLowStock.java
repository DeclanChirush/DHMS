package com.dhms.model;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name= "uncountable_lowstock")
public class UncountableLowStock {
	
	@Id
	@Column(name="item_id")
	private String itemId; 
	
	@Column(name="item_name")
	private String itemName;

	public String getItemId() {
		return itemId;
	}

	public void setItemId(String itemId) {
		this.itemId = itemId;
	}

	public String getItemName() {
		return itemName;
	}

	public void setItemName(String itemName) {
		this.itemName = itemName;
	}

	@Override
	public String toString() {
		return "UncountableLowStock [itemId=" + itemId + ", itemName=" + itemName + "]";
	}
	
	

}
