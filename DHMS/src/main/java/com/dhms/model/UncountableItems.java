package com.dhms.model;

import java.math.BigDecimal;
import java.math.RoundingMode;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name="uncountable_items")
public class UncountableItems {
	
	@Id
	@Column(name="item_id")
	private String itemId;
	
	@Column(name="item_name")
	private String itemName;
	
	@Column(name="unit")
	private String unit;
	
	@Column(name="remaining_amount")
	private double remainingAmount;
	
	@Column(name="type")
	private boolean type;
	
	@Column(name="lower_limit")
	private double lowerLimit;

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

	public String getUnit() {
		return unit;
	}

	public void setUnit(String unit) {
		this.unit = unit;
	}

	public double getRemainingAmount() {
		return remainingAmount;
	}

	public void setRemainingAmount(double remainingAmount) {
		//trying to get precision to 3 decimal points
		Double tobeTruncated = new Double(remainingAmount);
		Double truncatedDouble = BigDecimal.valueOf(tobeTruncated).setScale(3,RoundingMode.HALF_UP).doubleValue();
		this.remainingAmount = truncatedDouble;
		//this.remainingAmount = remainingAmount;
	}

	public boolean isType() {
		return type;
	}

	public void setType(boolean type) {
		this.type = type;
	}

	public double getLowerLimit() {
		return lowerLimit;
	}

	public void setLowerLimit(double lowerLimit) {
		this.lowerLimit = lowerLimit;
	}

	@Override
	public String toString() {
		return "UncountableItems [itemId=" + itemId + ", itemName=" + itemName + ", unit=" + unit + ", remainingAmount="
				+ remainingAmount + ", type=" + type + ", lowerLimit=" + lowerLimit + "]";
	}
	
	

}
