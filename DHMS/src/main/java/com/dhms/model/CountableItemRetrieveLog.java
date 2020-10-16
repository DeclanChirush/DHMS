package com.dhms.model;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name= "countableitem_retrievelog")
public class CountableItemRetrieveLog {
	
	@Id
	@Column(name="log_id", updatable=false, nullable=false)
	private int logId;
	
	@Column(name="username")
	private String username;
	
	@Column(name="item_id")
	private String itemId;
	
	@Column(name="item_name")
	private String itemName;
	
	@Column(name="quantity")
	private int quantity;
	
	@Column(name="datetime")
	private String dateTime;

	public int getLogId() {
		return logId;
	}

	public void setLogId(int logId) {
		this.logId = logId;
	}

	public String getUsername() {
		return username;
	}

	public void setUsername(String username) {
		this.username = username;
	}

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

	public int getQuantity() {
		return quantity;
	}

	public void setQuantity(int quantity) {
		this.quantity = quantity;
	}

	public String getDateTime() {
		return dateTime;
	}

	public void setDateTime(String dateTime) {
		this.dateTime = dateTime;
	}

	@Override
	public String toString() {
		return "CountableItemRetrieveLog [logId=" + logId + ", username=" + username + ", itemId=" + itemId
				+ ", itemName=" + itemName + ", quantity=" + quantity + ", dateTime=" + dateTime + "]";
	}
	
	

}
