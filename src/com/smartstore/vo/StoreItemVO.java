package com.smartstore.vo;

public class StoreItemVO {

	private int itemCode;
	private String itemName;
	private float itemPrice;
	private String itemImgName;
	private float salestax;
	
	
	public float getSalestax() {
		return salestax;
	}
	public void setSalestax(float salestax) {
		this.salestax = salestax;
	}
	public int getItemCode() {
		return itemCode;
	}
	public void setItemCode(int itemCode) {
		this.itemCode = itemCode;
	}
	public String getItemName() {
		return itemName;
	}
	public void setItemName(String itemName) {
		this.itemName = itemName;
	}
	public float getItemPrice() {
		return itemPrice;
	}
	public void setItemPrice(float itemPrice) {
		this.itemPrice = itemPrice;
	}
	public String getItemImgName() {
		return itemImgName;
	}
	public void setItemImgName(String itemImgName) {
		this.itemImgName = itemImgName;
	}
	
	
}
