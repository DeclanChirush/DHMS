package com.dhms.model;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;

import org.hibernate.annotations.GenericGenerator;
import org.hibernate.annotations.Parameter;

//import com.ravi.generator.StringPrefixedSequenceIdGenerator;

@Entity
@Table(name= "countable_items")
public class CountableItems {
	@Id
	@Column(name="item_id", updatable=false, nullable=false)
	private String itemId;
	
	@Column(name="item_name")
	private String itemName;
	
	@Column(name="remaining_quantity")
	private int remainingQuantity;
	
	@Column(name="type")
	private boolean type;
	
	@Column(name = "lower_limit")
	private int lowerLimit;
	
	

	public String getItemName() {
		return itemName;
	}

	public void setItemName(String itemName) {
		this.itemName = itemName;
	}

	public int getLowerLimit() {
		return lowerLimit;
	}

	public void setLowerLimit(int lowerLimit) {
		this.lowerLimit = lowerLimit;
	}

	public String getItemId() {
		return itemId;
	}

	public void setItemId(String itemId) {
		this.itemId = itemId;
	}

	public int getRemainingQuantity() {
		return remainingQuantity;
	}

	public void setRemainingQuantity(int remainingQuantity) {
		this.remainingQuantity = remainingQuantity;
	}

	public boolean getType() {
		return type;
	}

	public void setType(boolean type) {
		this.type = type;
	}

	public int getLower_limit() {
		return lowerLimit;
	}

	public void setLower_limit(int lower_limit) {
		this.lowerLimit = lower_limit;
	}

	@Override
	public String toString() {
		return "CountableItems [itemId=" + itemId + ", itemName=" + itemName + ", remainingQuantity="
				+ remainingQuantity + ", type=" + type + ", lowerLimit=" + lowerLimit + "]";
	}
	
	
	

}
